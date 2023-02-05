variable "cortex_source_project" {

}

variable "cortex_target_project" {

}

variable "sap_raw_landing_dataset" {
    default = "RAW_LANDING"
}

variable "sap_cdc_processed_dataset" {
    default = "CDC_PROCESSED"
}

variable "reporting_dataset"{
    default = "REPORTING"
}

variable "ml_models_dataset"{
    default = "MODELS"
}

variable "location"{
    default = "US"
}