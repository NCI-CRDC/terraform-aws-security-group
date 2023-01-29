variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}
variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

variable "associated_resource" {
  type        = string
  description = "provide the abbreviated name of the resource this security group is associated with (i.e. alb)"
}

variable "description" {
  type        = string
  description = "describe the purpose of this security group"
}

variable "revoke_rules_on_delete" {
  type        = bool
  description = "revoke attached ingress and egress rules before deleting the rule itself"
  default     = false
}

variable "vpc_id" {
  type        = string
  description = "the associated vpc that the security group will be deployed into"
}