variable "rg_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "my-aks-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for AKS cluster"
  type        = string
  default     = "myaksdemo"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 2
}

variable "node_size" {
  description = "VM size for the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}
