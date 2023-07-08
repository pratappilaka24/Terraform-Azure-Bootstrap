variable "rgname" {
  type = string
  description = "Resource group name"  
}

variable "location" {
  type = string
  description = "Storage account location"  
}

variable "tags" {
  description = "Extra Tags to apply to Azure Resources"
  type        = map(string)
  default     = {}
}