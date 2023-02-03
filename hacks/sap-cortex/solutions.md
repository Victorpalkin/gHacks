# SAP Analytics at Scale with Google Cloud Cortex Framework

## Introduction

We'll be assuming that all necessary services have been enabled and the (default) service accounts have the right permissions. You can use the provided `Terraform` scripts to set up things properly if you're not using Qwiklabs.

## Coach's Guides

- Challenge 1: Deploy the Cortex Foundation
- Challenge 2: Let's Start to explore
- Challenge 3: No dashboards, no self-service analytics
- Challenge 4: No Code AI is the best AI

## Challenge 1: Deploy the Cortex Foundation

### Notes & Guidance


## Challenge 2: Let's Start to explore

### Notes & Guidance
The following SQL queries can be used to answer the questions in the challenges:

Find out how many differnt products are in the product group "002" (Electronics) Use the following query (substitute the with the name of your own project):
```
SELECT count(MaterialNumber_MATNR) FROM `<Project name>.REPORTING.MaterialsMD` where MaterialGroup_MATKL="002"
```

Identify the top three product from the product group "002" (Electronics) with the biggest amount of sold units in 2016:
```
SELECT MaterialNumber_MATNR, sum(CumulativeOrderQuantity_KWMENG) as soldUnits FROM `<Project name>.REPORTING.SalesOrders` where MaterialGroup_MATKL = "002" and Extract(YEAR from DocumentDate_AUDAT) = 2016 group by MaterialNumber_MATNR order by soldUnits desc limit 3
```

Find out what was the highest temperature in year 2021:
```
SELECT max(MaxTemp) FROM `<Project name>.REPORTING.Weather` where extract(YEAR from WeekStartDate) = 2021
```


## Challenge 3: No dashboards, no self-service analytics

### Notes & Guidance



## Challenge 4: No Code AI is the best AI

### Notes & Guidance


