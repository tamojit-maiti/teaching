CREATE TABLE points(
	x INTEGER NOT NULL,
	y INTEGER NOT NULL)
	
INSERT INTO points VALUES
(-1, -1),
(0,0),
(-1,-2)

SELECT * FROM points

WITH 
	cross_joined_table AS 
	(SELECT 
		p1.x as x1,
		p1.y as y1,
		p2.x as x2,
		p2.y as y2
	FROM
		points as p1
	CROSS JOIN
		points as p2),
		
	distance_table AS
	(SELECT 
		*,
		SQRT(POW(x1 - x2,2) + POW(y1 - y2,2)) AS distance
	 FROM
	 	cross_joined_table
	 WHERE
	 	cross_joined_table.x1 != cross_joined_table.x2 OR cross_joined_table.y1 != cross_joined_table.y2
	)
SELECT 
	MIN(distance)
FROM
	distance_table
	
	