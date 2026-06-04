variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
}

variable "bucket_name" {
  type        = string
  description = "Pre-created S3 bucket name"
}

variable "iam_group_name" {
  type        = string
  description = "IAM group name"
}

variable "iam_policy_name" {
  type        = string
  description = "IAM policy name"
}

variable "iam_role_name" {
  type        = string
  description = "IAM role name"
}

variable "iam_instance_profile_name" {
  type        = string
  description = "IAM instance profile name"
}

variable "project_id" {
  type        = string
  description = "Project tag value"
}
