variable "emr_service_role_name" {
  type        = string
  description = "Name of the new IAM service role for the EMR cluster"
  default     = "tamr_emr_service_role"
}

variable "emr_ec2_role_name" {
  type        = string
  description = "Name of the new IAM role for EMR EC2 instances"
  default     = "tamr_emr_ec2_role"
}

variable "emr_ec2_instance_profile_name" {
  type        = string
  description = "Name of the new instance profile for EMR EC2 instances"
  default     = "tamr_emr_ec2_instance_profile"
}

variable "s3_policy_arns" {
  type        = list(string)
  description = "List of policy ARNs to attach to EMR EC2 instance profile."
}

variable "additional_tags" {
  type        = map(string)
  description = "Additional tags to be attached to the resources created"
  default     = {}
}

variable "s3_bucket_name_for_root_directory" {
  type        = string
  description = "S3 bucket name for storing root directory"
}

variable "s3_bucket_name_for_logs" {
  type        = string
  description = "S3 bucket name/directory for cluster logs."
}

variable "emr_service_iam_policy_name" {
  type        = string
  description = "Name for the IAM policy attached to the EMR Service role"
  default     = "tamr-emr-service-policy"
}

variable "emr_ec2_iam_policy_name" {
  type        = string
  description = "Name for the IAM policy attached to the EMR service role"
  default     = "tamr-emr-ec2-policy"
}

variable "arn_partition" {
  type        = string
  description = <<EOF
  The partition in which the resource is located. A partition is a group of AWS Regions.
  Each AWS account is scoped to one partition.
  The following are the supported partitions:
    aws -AWS Regions
    aws-cn - China Regions
    aws-us-gov - AWS GovCloud (US) Regions
  EOF
  default     = "aws"
}
