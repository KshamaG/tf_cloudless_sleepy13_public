# Configure these variables

variable "sample_var" {
  description = "A sample_var to pass to the template."
  default     = "hello"
}

variable "sleepy_time" {
  description = "How long our local-exec will take a nap."
  default     = 2700
}
variable "TF_VERSION" {
 default = "0.13"
 description = "terraform engine version to be used in schematics"
}
