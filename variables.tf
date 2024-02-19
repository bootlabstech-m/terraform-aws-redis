variable "name" {
    type=string
    description = "name of cluster " 
}
variable "node_type" {
    type = string
    description = "node type of redis" 
}
variable "engine" {
    type=string
    description = "engine of instance " 
}
variable "engine_version" {
    type = string
    description = "engine version of redis" 
}
variable "num_cache_clusters" {
    type=number
    description = "number of cluster "
}
variable "security_group_ids" {
    type=list(string)
    description = "Security group id"
}
variable "parameter_group_name" {
    type = string
    description = "parameter group name"
}
variable "test_subnet_name" {
    type=string
    description = "subnet name for redis" 
}
variable "subnet_ids" {
    type=list(string)
    description = "subnet_ids" 
}
variable "port" {
    type=number
    description = "port for redis"
    default =  6379
}
variable "snapshot_retention_limit" {
    type=number
    description = "keep snapshot for backup "
}
variable "transit_encryption_enabled" {
    type=bool
    description = "transit encryption enabled"
}
variable "region" {
    type=string
    description = "region of instance"
}
variable "role_arn" {
    type=string
    description = "role arn"
}