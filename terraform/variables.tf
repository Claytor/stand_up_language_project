variable "credentials" {
  description = "My Credentials"
  default     = "~/.gcp/claytor_mage.json"
  #ex: if you have a directory where this file is called keys with your service account json file
}

variable "project" {
  description = "Claytor DE Bootcamp"
  default = "zoomcamp-2024"
}

variable "gcs_bucket_name" {
  description = "Audio Files for Stand Up Language Project"
  #Update the below to a unique bucket name
  default     = "standup_language_project"
}

variable "local_folder_path" {
  description = "The local path to the folder containing files to be uploaded."
  type        = string
  default     = "/home/claytor/stand_up_language_project/recordings"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}