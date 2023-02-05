git clone https://github.com/GoogleCloudPlatform/cortex-data-foundation.git --recurse-submodules
cd cortex-data-foundation
gcloud builds submit --project sandbox-churn-prediction \
--substitutions \
_PJID_SRC=sandbox-churn-prediction,_PJID_TGT=sandbox-churn-prediction,_DS_CDC=CDC_PROCESSED,_DS_RAW=RAW_LANDING,_DS_REPORTING=REPORTING,_DS_MODELS=MODELS,_GCS_BUCKET=sandbox-churn-prediction-logs,_TGT_BUCKET=sandbox-churn-prediction-dags,_TEST_DATA=true,_DEPLOY_CDC=true,_MANDT=100

