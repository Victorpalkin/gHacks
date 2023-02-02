# SAP Analytics at Scale with Google Cloud Cortex Framework

## Introduction

WIP

In this hack, you’ll get the hands on experience with the Google Cloud Cortex Framework. You will install the Cortex data foundation in the precofigured environment. After that, you will explore both the data foundation using the test data delivered with Cortex, as well as build your first Looker Studio dashboards to run the data analysis.

## Learning Objectives

This hack will help you explore the following tasks:

- Using Cloud Source Repositories for version control
- Using Cloud Build for automating continuous integration and delivery
- Vertex AI for 
  - Exploration through an interactive environment
  - Training on diverse hardware 
  - Model registration
  - Managed pipelines
  - Model serving
  - Model monitoring

> The instructions are minimal, meaning that you need to figure out things :) That's by design

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

## Challenge 1: Let’s start exploring!

### Introduction

As depicted in the overview diagram, the first step of any ML project is data analysis and maybe some experimentation. Jupyter notebooks are great for interactive exploration. We can run those locally, but Vertex AI provides managed environments where you get to run Jupyter with the right security controls.

### Description 

Create a Managed Notebook on Vertex AI. It's a good practice to have isolated virtual environments for experiments, so create a new virtual environment and install that as a kernel. See this [gist](https://gist.github.com/meken/e6c7430997de9b3f2cf7721f8ecffc04) for the instructions. 

We’ve prepared a [sample project on Github](https://github.com/meken/gcp-mlops-demo/archive/refs/heads/main.zip), navigate there and download the project as a **zip** file and extract the contents of the zip file into your notebook environment. Open the notebook `01-tip-toe-vertex-ai.ipynb`, make sure that you've selected the newly created kernel. You should now be able to run the first notebook and get familiar with some of the Vertex AI concepts.

<ql-warningbox>
Unfortunately at the moment it's not possible to create Managed Notebooks in Qwiklab environments. For this lab you can use _User-Managed Notebooks_. Pick a region close to you, create a simple vanilla Python3 notebook instance (with no GPUs) and please make sure that you've selected the **single user only** mode for the permissions. 
</ql-warningbox>

### Success Criteria

1. There’s a new (User-)Managed Notebook
2. The sample notebook `01-tip-toe-vertex-ai.ipynb` is successfully run and a model file is generated/stored in Google Cloud Storage
3. No code changes are needed for this challenge

### Tips

- Some of the required settings can be found in the _Advanced Settings_ section when you're creating a new _User-Managed Notebook_.
- You can download the zip file to your local machine and then upload it to the Notebook, but you can also get the zip URL and use the `wget` (or `curl`) command from the notebook environment.
- Not using a dedicated and isolated environment/kernel might cause dependency conflicts as _User-Managed Notebook_ instances come pre-installed with some versions of the required libraries.

### Learning Resources

- Documentation on [Vertex AI Workbench](https://cloud.google.com/vertex-ai/docs/workbench/managed/introduction)

## Challenge 2: If it isn’t in version control, it doesn’t exist

### Introduction

The objective of this challenge is to create and configure a Git repository so that the code can be version controlled. You could use any external Git repository (Github/BitBucket/Gitlab etc) but the easiest way for this challenge is to use a Cloud Source Repository on GCP.

### Description

If you have completed the previous challenge, you should have the source code already unpacked on your Managed Notebook. But you’re free to complete this challenge on another environment such as Cloud Shell or your local machine.

Create a Cloud Source Repository, configure access through SSH.

Make sure that the source code is pushed to the freshly created repository and can be cloned from it.

### Success Criteria

1. There’s a new Cloud Source Repository 
2. The code base is pushed to Cloud Source Repository
3. At least one team member can access the repository from the command line
4. No code changes are needed for this challenge

### Tips

- You already have a terminal available on the notebook that you’ve created as part of the previous challenge. That terminal has all the tools you need to complete this challenge.

### Learning Resources

- How-to guides for [Cloud Source Repository](https://cloud.google.com/source-repositories/docs/how-to)

## Challenge 3: You break the build, you buy cake

### Introduction

This task is all about automating things using Cloud Build.

### Description

Once things look fine locally, set up a Cloud Build that’s triggered when code is pushed to the repository. The code base already includes a build configuration (`cloudbuild.yaml`), have a look at it to understand what it does. Make sure that the trigger uses that build configuration. 

### Success Criteria

1. There’s a new Cloud Build push trigger
2. The trigger is connected to the repository created in the previous task
3. The trigger uses the provided (fully configured) build configuration from the repository
4. And there’s at least one successful build 

### Tips

- You will need to make some minor changes to the code base to have a successful run

### Learning Resources

How-to guides for [Cloud Build](https://cloud.google.com/build/docs/how-to)

## Challenge 4: Automagic training with pipelines

### Introduction

The previous challenge introduced the concept of build pipelines. But there are different types of pipelines, and this task is getting started with Vertex AI pipelines for continuous training. 

### Description

If you’ve successfully completed the previous challenge, your training code has been packaged and can be run from a pipeline.

The provided project has a `pipeline.py` file that can generate a pipeline definition. Run that to generate a pipeline definition file (JSON). Use the generated pipeline definition file to create a new Pipeline Run through the GCP Console. You'll need to fill in some parameters (you can look up the Python package location). Do not set/override the endpoint and monitoring_job parameters (keep the default values).

<ql-infobox>
Once the pipeline is triggered, it will take ~10 minutes to complete.
</ql-infobox>

### Success Criteria

1. There’s at least one successful Vertex AI pipeline run that has generated a Managed Model in the Model Registry
2. No code change is needed for this challenge

### Tips

- You have already created a bucket, you can use that as the pipeline root (optionally add `pipelines` folder in it).
- Make sure that you're consistent in your region selection.
- You can either upload the pipeline definition from a local machine, or put it on GCS and refer to its location.
- Make sure that you're running the module `trainer.pipeline` in the virtual environment you have created as part of the first challenge.
- If you're in doubt about the parameters, remember to _Use the Force and read the Source_ ;)

### Learning Resources

- Running [Python modules from the command line](https://docs.python.org/3/using/cmdline.html#cmdoption-m)
- Running [Vertex AI Pipelines](https://cloud.google.com/vertex-ai/docs/pipelines/run-pipeline#console) on the console

### Learning Resources

- [Log based alerts](https://cloud.google.com/logging/docs/alerting/log-based-alerts) for Cloud Logging
- [Webhook notifications](https://cloud.google.com/monitoring/support/notification-options#webhooks) for Cloud Logging
- [Log based alerts](https://cloud.google.com/vertex-ai/docs/model-monitoring/using-model-monitoring#set-up-alerts) for Vertex AI Model Monitoring feature anomaly detection
- [Triggering Cloud Build with webhooks](https://cloud.google.com/build/docs/automate-builds-webhook-events)
