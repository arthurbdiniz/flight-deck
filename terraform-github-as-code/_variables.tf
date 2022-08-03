variable "owner" {
  type = string
}

variable "pages" {
  type = list(any)
  default = []
}

variable "empty_repository" {
  type        = bool
  default     =  true
  description = "Is an empty/new repository"
}

variable "template" {
  type = list(any)
  default = []
}

variable "name" {
  type = string
}

variable "description" {
  type = string
  default = ""
}

variable "visibility" {
  type = string
  default = "public"
}

variable "default_branch" {
  type = string
  default = "main"
}

variable "delete_branch_on_merge" {
  type    = bool
  default = false
}

variable "has_downloads" {
  type    = bool
  default = true
}


variable "has_issues" {
  type    = bool
  default = true
}

variable "has_projects" {
  type    = bool
  default = true
}

variable "has_wiki" {
  type    = bool
  default = true
}

variable "is_template" {
  type    = bool
  default = false
}

variable "topics" {
  type    = list(any)
  default = []
}

variable "archived" {
  type    = bool
  default = false
}

variable "homepage_url" {
  type    = string
  default = ""
}

variable "vulnerability_alerts" {
  type    = bool
  default = true
}

variable "labels" {
  type    = list(any)
  default = []
}

variable "branch_protections" {
  type    = list(any)
  default = []
}