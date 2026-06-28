# Data Science & Machine Learning Resources

[![Python Version](https://img.shields.io/badge/python-3.8%2B-blue)](https://www.python.org/)
[![Requirements](https://img.shields.io/badge/requirements-listed-brightgreen)](requirements.txt)

This repository contains educational materials, including lecture slides, detailed Jupyter Notebooks, hands-on assignments, and datasets designed for weekend lecture sessions delivered across the following professional and graduate programs:

1. **[PGP in Data Science by University of Maryland](https://www.upgrad.com/executive-pgp-in-data-science-business-analytics-maryland/)**
2. **[MS in Data Science by University of Arizona](https://www.upgrad.com/data-science-ms-uoa/)**
3. **[Certification in Data Science by University of Maryland](https://www.upgrad.com/data-science-and-business-analytics-certification-training/)**

---

## 📚 Repository Structure & Topics Covered

The repository is structured into modules covering core data science concepts, machine learning models, specialized analytics, and interview/test preparation.

### 1. Foundations of Data Science

| Module / Topic | Description & Contents | Key Resources |
| :--- | :--- | :--- |
| **Python Programming** | Core Python fundamentals and production-grade programming practices. | - Assignments: [Functions & Methods](./intro_python/Assignment_Functions_%26_Methods.ipynb), [Strings](./intro_python/Assignment_Introduction_to_Strings.ipynb), [Conditionals & Loops](./intro_python/Assignment_Statements,_Indentation_and_Conditionals.ipynb), [Data Structures](./intro_python/Assignment_Tuples,_Sets_and_Dictionaries.ipynb)<br>- Notebook: [Production Grade Programming](./intro_python/Production_Grade_Programming.ipynb) |
| **Numpy & Pandas (EDA)** | Introduction to data manipulation using NumPy, Pandas, and exploratory data analysis. | - Notebooks: [Intro to NumPy](./intro_pandas/Introduction_to_Numpy.ipynb), [Intro to Pandas](./intro_pandas/Python__Introduction_to_Pandas.ipynb), [Advanced Pandas](./intro_pandas/Python__Advanced_Pandas.ipynb), [Advanced Time Series in Pandas](./intro_pandas/Python__Advanced_Pandas_Time_Series.ipynb)<br>- EDA Walkthroughs: [Melbourne Housing](./intro_pandas/EDA__Melbourne_Housing.ipynb), [IMDB Dataset](./intro_pandas/EDA__IMDB_Dataset.ipynb), [911 Calls](./intro_pandas/EDA__911_Calls.ipynb)<br>- Datasets: [Movie Assignment Data](./eda/data/Movie+Assignment+Data.csv), [Phone Data](./eda/data/phone_data.csv) |
| **Structured Query Language (SQL)** | Fundamental and advanced SQL concepts, tar/csv database setups, and practical case studies. | - Lectures: [Introduction to SQL (PDF)](./intro_sql/scripts/Introduction%20to%20SQL.pdf)<br>- SQL Scripts: [Fundamentals 2](./intro_sql/scripts/SQL%20Fundamentals%202.sql), [Advanced SQL](./intro_sql/scripts/Advanced_SQL.sql), [Demo & Tables](./intro_sql/scripts/Demo.sql)<br>- Case Study: [Store Data Analysis SQL](./intro_sql/case%20study/Data_analysis.sql)<br>- Assignments & Tests: [SQL Assignment IV (PDF)](./intro_sql/tests/SQL%20Fundamentals%20IV%20-%20Assignment.pdf) / [Solution](./intro_sql/tests/Assignment%20IV%20Solution.sql), [SQL Assignment V (PDF)](./intro_sql/tests/SQL%20Fundamentals%20V%20-%20Assignment.pdf) / [Solution](./intro_sql/tests/Assignment%20V%20Solution.sql) |
| **Statistics & Probability** | Fundamentals of basic probability, discrete probability distributions, descriptive and inferential statistics. | - Lecture Notes: [Session 1 Notes](./intro_statistics/notes/Revision%20of%20Statistics%20and%20Probability%20Session%201.pdf), [Session 2 Notes](./intro_statistics/notes/Revision%20of%20Statistics%20and%20Probability%20Session%202.pdf)<br>- Notebooks: [Basic Probability](./intro_statistics/Statistics_101__Basic_Probability.ipynb), [Descriptive Statistics](./intro_statistics/Statistics_101__Descriptive_Statistics.ipynb), [Discrete Distributions](./intro_statistics/Statistics_101__Discrete_Probability_Distributions.ipynb), [Inferential Statistics](./intro_statistics/Statistics_101__Inferential_Statistics.ipynb), [Probability Assignment](./intro_statistics/Assignment_Probability_Theory.ipynb) |
| **Hypothesis Testing** | Statistical significance, z-tests, t-tests, ANOVA, and Chi-square testing with solved examples. | - Lectures: [Hypothesis Testing (PDF)](./hypothesis_testing/Hypothesis%20Testing.pdf)<br>- Notebooks: [Part I Solved Examples](./hypothesis_testing/Hypothesis_Testing_I_Solved_Examples.ipynb), [Part II Advanced](./hypothesis_testing/Hypothesis_Testing_II.ipynb) |
| **Statistical Inference** | Rigorous background on estimators, confidence intervals, and parameter estimation. | - Lectures: [Statistical Inference (PDF)](./interential_stats/Statistical%20Inference.pdf) |

### 2. Machine Learning Algorithms

| Algorithm / Topic | Description & Contents | Key Resources |
| :--- | :--- | :--- |
| **Linear Regression** | Simple and multiple linear regression models built from scratch or with `scikit-learn` and `statsmodels`. | - Notebooks: [Boston Housing Price Prediction](./linear_regression/Linear_Regression_on_Boston_Housing.ipynb), [Startup Profit Prediction](./linear_regression/Linear_Regression_on_Startup_Profit.ipynb)<br>- Datasets: [Boston Housing](./linear_regression/Boston.csv), [50 Startups](./linear_regression/50_Startups.csv) |
| **Logistic Regression** | Binary and multiclass classification using logistic regression. | - Lectures: [Logistic Regression S1](./logistic_regression/notes/Logistic%20Regression%20CAL%20S1.pdf), [Session 2](./logistic_regression/notes/Logistic%20Regression%20CAL%20S2.pdf), [Presentation (PPTX)](./logistic_regression/presentation/Logistic%20Regression.pptx)<br>- Notebooks: [Telecom Churn Case Study](./logistic_regression/notebook/Logistic%2BRegression%2B-%2BTelecom%2BChurn%2BCase%2BStudy.ipynb), [Multiclass Sklearn](./logistic_regression/notebook/multiclass-logistic-regression-using-sklearn.ipynb) |
| **Naive Bayes** | Probabilistic classification using Bayes' theorem with applications in NLP/Spam Filtering. | - Lectures: [Naive Bayes Classifier (PDF)](./naive_bayes/notes/Naive%20Bayes%20Classifier.pdf)<br>- Datasets: [Spam SMS dataset](./naive_bayes/data/spam.csv) |
| **Decision Trees & Random Forest** | Tree-based models for classification and regression tasks, addressing splitting criteria (Gini, Entropy) and ensemble methods. | - Lectures: [Session 1 Notes](./intro_trees/Decision%20Trees%20upGrad%20S1.pdf), [Session 2 Notes](./intro_trees/Decision%20Trees%20upGrad%20S2.pdf), [Presentation (PPTX)](./intro_trees/Decision%20Trees.pptx)<br>- Notebooks: [Decision Trees Implementation](./intro_trees/Decision_Trees.ipynb)<br>- Datasets: [Daily Weather](./intro_trees/daily_weather.csv) |
| **K-Nearest Neighbours** | Instance-based learning for classification and regression. | - Lectures: [K-Nearest Neighbours (PDF)](./k_nearest_neighbours/notes/K%20Nearest%20Neighbours.pdf)<br>- Datasets: [Diabetes dataset](./k_nearest_neighbours/diabetes.csv) |
| **Clustering Algorithms** | Unsupervised learning algorithms, density-based methods, hierarchical structures, and market basket analysis. | - Lectures: [Clustering Core Concepts](./clustering/Clustering.pdf)<br>- Notebooks: [KMeans & DBSCAN](./clustering/Clustering___KMeans___DBSCAN.ipynb), [Hierarchical Clustering](./clustering/Clustering___Hierarchical_Clustering.ipynb), [Gaussian Mixture Models (GMM)](./clustering/Clustering___GMM_with_Iris.ipynb), [KModes with Bank Attributes](./clustering/Clustering___KModes_with_Bank_Customer_Attributes.ipynb), [Apriori Algorithm (MBA)](./clustering/Market_Basket_Analysis___Apriori_Algorithm.ipynb)<br>- Datasets: [Mall Customers](./clustering/Mall_Customers.csv) |
| **Classification Case Study** | End-to-end classification workflow applied to user cross-sell and customer churn prediction. | - Notebooks: [Health Insurance Cross Sell Prediction](./classification_usecase/Classification_Usecase___Health_Insurance_Cross_Sell_Prediction.ipynb)<br>- Datasets: [Telco Customer Churn](./classification_usecase/WA_Fn-UseC_-Telco-Customer-Churn.csv), [Insurance Train Data](./classification_usecase/train.csv) |

### 3. Advanced & Applied Topics

| Topic | Description & Contents | Key Resources |
| :--- | :--- | :--- |
| **Time Series Forecasting** | Stationarity checks, decomposition, Autoregressive (AR), Moving Average (MA), and ARIMA/SARIMA models. | - Lectures: [Time Series Analysis (PDF)](./time_series_forecasting/notes/Time%20Series%20Analysis.pdf), [Slides](./time_series_forecasting/slides/Time%20Series%20Analysis%20and%20Forecasting.pdf)<br>- Notebooks: [Decomposition & Forecasting](./time_series_forecasting/notebooks/Time_Series_Analysis___Decomposition_%26_Forecasting.ipynb), [Stationarity Check](./time_series_forecasting/notebooks/Time_Series_Analysis___Stationarity.ipynb) |
| **Model & Feature Selection** | Bias-Variance Tradeoff, regularization techniques (Lasso, Ridge, Elastic Net) for linear regression. | - Lectures: [Choosing Models (PDF)](./feature_selection/Choosing%20Models.pdf)<br>- Notebooks: [Bias-Variance Tradeoff](./feature_selection/Models___Bias_Variance_Tradeoff.ipynb), [Regularized Linear Regression](./feature_selection/Models___Regularized_Linear_Regression.ipynb)<br>- Datasets: [Bank Marketing](./feature_selection/bankmarketing.csv) |
| **Recommender Systems** | Content-based filtering, collaborative filtering, Alternating Least Squares (ALS), and K-Nearest Neighbours recommendations. | - Lectures: [Notes on Recommender Systems](./recommender_systems/notes/Notes%20on%20Recommender%20Systems.pdf), [Recommendation Systems Presentation](./recommender_systems/presentations/Recommendation%20Systems.pdf)<br>- Notebooks: [Content-Based Filtering](./recommender_systems/notebooks/Content_Based_Flitering.ipynb), [Collaborative Filtering](./recommender_systems/notebooks/Collaborative_Filtering.ipynb), [ALS Movie Recommendations](./recommender_systems/notebooks/movie_recommendation_using_ALS.ipynb), [KNN Movie Recommendations](./recommender_systems/notebooks/movie_recommendation_using_KNN.ipynb)<br>- Datasets: [Shared Articles](./recommender_systems/data/shared_articles.csv), [User Interactions](./recommender_systems/data/users_interactions.csv) |
| **Technical Analysis** | Quantitative finance and trading strategies, technical indicators (SMA, EMA, MACD, RSI, Stochastic Oscillator, Bollinger Bands, Pivot Points, Fibonacci). | - Notebooks: [SMA Backtester](./technical_analysis/notebook/NB_03_SMABacktester.ipynb), [MACD & RSI Strategy](./technical_analysis/notebook/NB_08_MACD_RSI.ipynb), [Bollinger Bands](./technical_analysis/notebook/NB_10_BollingerBands.ipynb), [Fibonacci](./technical_analysis/notebook/NB_12_Fibonacci.ipynb) (and more)<br>- Datasets: [Stocks](./technical_analysis/data/stocks.csv), [EUR/USD OHLC](./technical_analysis/data/EURUSD_ohlc.csv), [XAU/USD (Gold) OHLC](./technical_analysis/data/XAUUSD_ohlc.csv) |

### 4. Practice & Interview Preparation

| Resource | Description | Path |
| :--- | :--- | :--- |
| **Hiring Manager Q&A** | Slides for navigating hiring manager rounds and session preparation. | - [Hiring Manager Session (PDF)](./interview_questions/Hiring%20Manager%20Session.pdf)<br>- [Hiring Manager Questions (PDF)](./interview_questions/Hiring%20Manager%20Questions.pdf) |
| **Machine Learning Question Set** | Comprehensive question set covering core ML algorithms and prep materials. | - [ML Question Set (PDF)](./test-prep/ML%20Question%20Set.pdf) |
| **Self-Assessment Questionnaires (SCQ)** | Multiple choice and conceptual question sheets covering key ML and statistical models. | - [SCQ: Clustering, PCA & Model Selection](./interview_questions/SCQ%20_%20Clustering%20_%20PCA%20_%20Model%20Selection.pdf)<br>- [SCQ: Linear & Logistic Regression, Decision Trees, Random Forest](./interview_questions/SCQ%20_%20LR%20_%20LogR%20_%20DTree%20_%20RF.pdf) |

---

## 🛠️ Environment Setup & Installation

To run these notebooks and scripts locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/tamojit-maiti/teaching.git
   cd teaching
   ```

2. **Set up a virtual environment (recommended):**
   *Using venv:*
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install the required packages:**
   ```bash
   pip install -r requirements.txt
   ```
   *Note: Dependencies include `numpy`, `pandas`, `matplotlib`, `scikit-learn` (`sklearn`), `statsmodels`, and `seaborn`.*

4. **Launch Jupyter Notebook:**
   ```bash
   jupyter notebook
   ```
