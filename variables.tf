variable "region" {
  type        = string
  description = "AWS region"
  default = "us-west-2"
}

variable "availability_zones" {
  type = list(string)
  default = ["us-west-2a","us-west-2b","us-west-2c"]
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `eg` or `cp`)"
  default = "atlas"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`, `infra`)"
  default = "scratch"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `app` or `cluster`)"
  default = "rds-pg"
}

variable "database_name" {
  type        = string
  description = "The name of the database to create when the DB instance is created"
  default = "scratch_demodb"
}

variable "database_user" {
  type        = string
  description = "Username for the master DB user"
  default = "atlas"
}

variable "database_password" {
  type        = string
  description = "Password for the master DB user"
  default = "Snapek1ll$dumbledore"
}

variable "database_port" {
  type        = number
  description = "Database port (_e.g._ `3306` for `MySQL`). Used in the DB Security Group to allow access to the DB instance from the provided `security_group_ids`"
  default = 5432
}

variable "deletion_protection" {
  type        = bool
  description = "Set to true to enable deletion protection on the RDS instance"
  default = false
}

variable "multi_az" {
  type        = bool
  description = "Set to true if multi AZ deployment must be supported"
  default = false
}

variable "storage_type" {
  type        = string
  description = "One of 'standard' (magnetic), 'gp2' (general purpose SSD), or 'io1' (provisioned IOPS SSD)"
  default = "standard"
}

variable "storage_encrypted" {
  type        = bool
  description = "(Optional) Specifies whether the DB instance is encrypted. The default is false if not specified"
  default = false
}

variable "allocated_storage" {
  type        = number
  description = "The allocated storage in GBs"
  default = 100
}

variable "engine" {
  type        = string
  description = "Database engine type"
  # http://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html
  # - mysql
  # - postgres
  # - oracle-*
  # - sqlserver-*
  default = "postgres"
}

variable "engine_version" {
  type        = string
  description = "Database engine version, depends on engine type"
  # http://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html
  default = "11.5"
}

variable "major_engine_version" {
  type        = string
  description = "Database MAJOR engine version, depends on engine type"
  # https://docs.aws.amazon.com/cli/latest/reference/rds/create-option-group.html
  default = "11"
}

variable "instance_class" {
  type        = string
  description = "Class of RDS instance"
  # https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
  default = "db.t3.micro"
}

variable "db_parameter_group" {
  type        = string
  description = "Parameter group, depends on DB engine used"
  # "mysql5.6"
  # "postgres9.5"
  default = "postgres11"
}

variable "publicly_accessible" {
  type        = bool
  description = "Determines if database can be publicly available (NOT recommended)"
  default = true
}

variable "apply_immediately" {
  type        = bool
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default = false
}
