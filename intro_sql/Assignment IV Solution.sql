-- Q1 --
create table salary(
	id integer,
	employee_id integer,
	amount integer,
	pay_date timestamp
)

insert into salary
values
(1,1,9000,'2017-03-31'),
(2,2,6000,'2017-03-31'),
(3,3,10000,'2017-03-31'),
(4,1,7000,'2017-02-28'),
(5,2,6000,'2017-02-28'),
(6,3,8000,'2017-02-28')

select * from salary

create table dept(
	employee_id integer,
	department_id integer
)

insert into dept
values
(1,1),
(2,2),
(3,2)

select * from dept

create temporary table t1 AS
(
	SELECT TO_CHAR(pay_date,'YYYY-MM') as pay_month, department_id,
	AVG(amount) OVER(PARTITION BY DATE_PART('month',pay_date),department_id) as dept_avg,
	AVG(amount) OVER(PARTITION BY DATE_PART('month',pay_date)) as comp_avg
	FROM salary as s JOIN dept as d
	USING (employee_id)
)
select * from t1

SELECT DISTINCT pay_month, department_id,
      CASE WHEN dept_avg > comp_avg THEN 'higher'
      WHEN dept_avg = comp_avg THEN 'same'
	  ELSE 'lower'
	  END AS comparison
FROM t1
ORDER BY pay_month DESC

-- Q2 --
create table student(
	student_id serial primary key,
	student_name varchar(100)
)

insert into student
values
(1,'Daniel'),
(2,'Jade'),
(3,'Stella'),
(4,'Johnathan'),
(5,'Will')

select * from student

create table exam(
	exam_id integer,
	student_id integer references student(student_id),
	score integer
)

insert into exam
values
(10,1,70),
(10,2,80),
(10,3,90),
(20,1,80),
(30,1,70),
(30,3,80),
(30,4,90),
(40,1,60),
(40,2,70),
(40,4,80)

select * from exam

create temporary table t1 AS (
	 SELECT student_id
	   FROM (
			  SELECT *,
					 MIN(score) OVER main_window as least,
					 MAX(score) OVER main_window as most
				FROM exam
			  WINDOW main_window AS (PARTITION BY exam_id)
			) as a
	 where least = score or most = score
   )
		   
select * from t1

SELECT DISTINCT student_id,
               student_name
FROM exam JOIN student
USING (student_id)
WHERE student_id != ALL(SELECT student_id FROM t1)
ORDER BY student_id

-- Q3 --
create table stadium(
	id integer primary key,
	visit_date timestamp,
	people integer
)

insert into stadium
values
(1,'2017-01-01',10),
(2,'2017-01-02',109),
(3,'2017-01-03',150),
(4,'2017-01-04',99),
(5,'2017-01-05',145),
(6,'2017-01-06',1455),
(7,'2017-01-07',199),
(8,'2017-01-08',188)

select * from stadium

create temporary table t1 AS (
           SELECT id,
                  visit_date,
                  people,
                  id - ROW_NUMBER() OVER() AS dates
             FROM stadium
           WHERE people >= 100)
select * from t1  

SELECT t1.id,
      t1.visit_date,
      t1.people
FROM t1
LEFT JOIN (
           SELECT dates,
                  COUNT(*) as total
             FROM t1
           GROUP BY dates) AS b
ON b.dates = t1.dates
WHERE b.total > 2

-- Q4 -- 
create table visits(
	user_id integer,
	visit_date timestamp
)

insert into visits
values
(1,'2020-01-01'),
(2,'2020-01-02'),
(12,'2020-01-01'),
(19,'2020-01-03'),
(1,'2020-01-01'),
(2,'2020-01-03'),
(1,'2020-01-04'),
(7,'2020-01-11'),
(9,'2020-01-25'),
(8,'2020-01-28')

create table transactions(
	user_id integer,
	transaction_date timestamp,
	amount integer
)

insert into transactions
values
(1,'2020-01-02',120),
(2,'2020-01-03',22),
(7,'2020-01-11',232),
(1,'2020-01-04',7),
(9,'2020-01-25',33),
(9,'2020-01-25',66),
(8,'2020-01-28',1),
(9,'2020-01-25',99)


WITH RECURSIVE t1 AS(
                   SELECT visit_date,
                          COALESCE(num_visits,0) as num_visits,
                          COALESCE(num_trans,0) as num_trans
                   FROM ((
                         SELECT visit_date, user_id, COUNT(*) as num_visits
                         FROM visits
                         GROUP BY 1, 2) AS a
                        LEFT JOIN
                         (
                          SELECT transaction_date,
                                user_id,
                                count(*) as num_trans
                           FROM transactions
                         GROUP BY 1, 2) AS b
                        ON a.visit_date = b.transaction_date and a.user_id = b.user_id)
                     ),
             t2 AS (
                     SELECT MAX(num_trans) as trans
                       FROM t1
                     UNION ALL
                     SELECT trans-1
                       FROM t2
                     WHERE trans >= 1)
SELECT trans as transactions_count,
      COALESCE(visits_count,0) as visits_count
 FROM t2 LEFT JOIN (
                   SELECT num_trans as transactions_count, COALESCE(COUNT(*),0) as visits_count
                   FROM t1
                   GROUP BY 1
                   ORDER BY 1) AS a
ON a.transactions_count = t2.trans
ORDER BY 1		

-- Q5 --
create table failed(
	fail_date timestamp
);

insert into failed
values
('2018-12-28'),
('2018-12-29'),
('2019-01-04'),
('2019-01-05');

create table succeeded(
	success_date timestamp
);

insert into succeeded
values
('2018-12-30'),
('2018-12-31'),
('2019-01-01'),
('2019-01-02'),
('2019-01-03'),
('2019-01-06');


WITH t1
AS (
    SELECT *, 'succeeded ' period_state,
		success_date - ROW_NUMBER() OVER (ORDER BY success_date) * interval '1 day' grp
    FROM succeeded where success_date between '2019-01-01' and '2019-12-31'
	union
	SELECT *, 'failed' period_state,
		fail_date - ROW_NUMBER() OVER (ORDER BY fail_date) * interval '1 day' grp
    FROM failed where fail_date between '2019-01-01' and '2019-12-31'
    )
SELECT min(success_date) AS from_date
    ,max(success_date) AS to_date
    ,period_state
FROM t1
GROUP BY period_state , grp
ORDER BY from_date;




