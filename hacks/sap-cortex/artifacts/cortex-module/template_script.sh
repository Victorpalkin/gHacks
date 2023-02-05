git clone https://github.com/GoogleCloudPlatform/cortex-data-foundation.git --recurse-submodules
cd cortex-data-foundation
gcloud builds submit --project ${cortex_source_project} \
--substitutions \
_PJID_SRC=${cortex_source_project},_PJID_TGT=${cortex_target_project},_DS_CDC=${bq_processed_dataset},_DS_RAW=${bq_raw_dataset},_DS_REPORTING=${bq_reporting_dataset},_DS_MODELS=${bq_ml_dataset},_GCS_BUCKET=${logs_bucket},_TGT_BUCKET=${dags_bucket},_TEST_DATA=${if_test_data},_DEPLOY_CDC=${if_cdc_data},_MANDT=${sap_client}

