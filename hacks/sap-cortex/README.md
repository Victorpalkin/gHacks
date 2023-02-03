# SAP Analytics at Scale with Google Cloud Cortex Framework

## Introduction

In this hack, you’ll get the hands on experience with the Google Cloud Cortex Framework. You will install the Cortex data foundation in the precofigured environment. After that, you will explore both the data foundation using the test data delivered with Cortex, as well as build your first Looker Studio dashboards to run the data analysis and preditions.

## Learning Objectives

This hack will help you explore the following tasks:

- Setting up Google Cortex framework
- Exploring essential components of the Cortex data foundation
- Building a simple dashboard using Cortex data and Looker Studio
- Exploring how you can leverage AI on top of Cortex data

The instructions are minimal, meaning that you need to figure out things :) However, we also anticipate that participants might have different level of experience with the used technical tools and different roles and goals. Therefore, the Challenges 2-4 can be explored independently from each other. Just choose the topic you are interested to explore. You can of course do all the challenges in case you have time and are willing to. Only the Challenge 1 (Deploy the Cortex Foundation) is required to be completed before you can move to Challenges 2-4.

## Challenges

- Challenge 1: Deploy the Cortex Foundation
- Challenge 2: Let's Start to explore
- Challenge 3: No dashboards, no self-service analytics
- Challenge 4: No Code AI is the best AI

## Prerequisites

- Knowledge of Python
- Knowledge of Git
- Basic knowledge of GCP
- Access to a GCP environment

## Contributors

- Viktor Palkin
- Ekaterina Kruse

## Challenge 1: Deploy the Cortex Foundation

### Introduction



### Description 



### Success Criteria



### Tips



### Learning Resources


## Challenge 2: Let's Start to explore

### Introduction

The objective of this challenge is to explore the data foundation deployed on the previous step. For this, we prepared a few questions for you, which you can answer using the data foundation views and the provided sample Cortex data. In case you are not familiar with SQL, you can use hints.

### Description

If you have completed the previous challenge, you can now see the deployed Cortex datasets in your BigQuery. To explore the deployed dataset, please, answer the following questions. For some of them, you would need to run SQL queries directly in the reporting datasets. We anticipate that you might not code in your daily job and therefore, we provide ready to use SQL statements for every question. Feel free to use them! If you have SQL experience and you have time, we encourage you to come up with the solution on your own.

Now, usign the  reporting views, please try to answer the following questions:

- Find out how many differnt products are in the product group "002" (Electronics)
Use the following query (substitute the <Projec name> with the name of your own project):

```
SELECT count(MaterialNumber_MATNR) FROM `<Project name>.REPORTING.MaterialsMD` where MaterialGroup_MATKL="002"
```

- Review the view "MaterialsMD"that you used to answer the previous question. What source tables is this view built on? Tip: you can find the required information in the "Details" tab of the view.
- Let continue our review of the product groups Electronics. Now, please, identify the top three product from the product group "002" (Electronics) with the biggest amount of sold units in 2016.
  
Use the following query (substitute the <Projec name> with the name of your own project):

```
SELECT MaterialNumber_MATNR, sum(CumulativeOrderQuantity_KWMENG) as soldUnits FROM `<Project name>.REPORTING.SalesOrders` where MaterialGroup_MATKL = "002" and Extract(YEAR from DocumentDate_AUDAT) = 2016 group by MaterialNumber_MATNR order by soldUnits desc limit 3
```

  
- Review the view "SalesOrders" that you used to answer the previous question. What source tables is this view built on? Tip: you can find the required information in the "Details" tab of the view.
- Now, let us explore the Weather dataset. Please, find out what was the highest temperature in year 2021?

Use the following query (substitute the <Projec name> with the name of your own project):

```
SELECT max(MaxTemp) FROM `<Project name>.REPORTING.Weather` where extract(YEAR from WeekStartDate) = 2021
```

### Success Criteria

1. Your SQL statements to datasets are returning results and you can answer the formulated questions
2. You can now review the source tables that constitute COrtex reporting views

### Tips

- We recommend you to come up with your own solution to get a hands on experience with the data foundation in Cortex. 
- In case you are not familiar with SQL syntax, please, use the provided SQL statements for each question.
- To view how a view was built and which tables constitute a view, please, use the tab "Details" and scroll down to view a query.

### Learning Resources

- You can review the query syntax for Google BigQuery [here](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax)

## Challenge 3: No dashboards, no self-service analytics

### Introduction


### Description


### Success Criteria



### Tips


### Learning Resources


## Challenge 4: No Code AI is the best AI

### Introduction



### Description



### Success Criteria


### Tips


### Learning Resources


### Learning Resources


