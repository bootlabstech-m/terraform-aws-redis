variable "name" {
    type=string
    description = "name of redis cluster "  
}
variable "engine" {
    type=string
    description = "engine of redis"
    default = "redis" 
}
variable "redis_version" {
    type = string
    description = "version of redis" 
}
variable "node_type" {
    type = string
    description = "configation of redis" 
}
variable "parameter_group_name" {
    type=string
    description = "parameter group name" 
}
variable "port" {
    type=number
    description = "port for connaction"
  
}
variable "availability_zone" {
    type=string
    description = "zone of redis"
}
variable "vpc_security_group_ids" {
    type = list(string)
    description = "security group id " 
}
variable "snapshot_retention_limit" {
    type=string
    description = "snapshot retention limit"
    default = "7"  
}
variable "subnet_ids" {
    type=list(string)
    description = "subnet id for redis"
}
variable "subnet_group_name" {
    type=string
    description = "subnet group name for redis" 
}
variable "role_arn" {
    type = string
    description = "role arn of account" 
}
variable "region" {
    type = string
    description = "region " 
}