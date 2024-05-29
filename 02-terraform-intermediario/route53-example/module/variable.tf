variable "zone" {
    description = "Map of Route 53"
    type = object({
      name = string
      comment = optional(string)
      delegation_set_id = optional(string)
      vpc = optional(object({
        id = string
        region = optional(string)
      }))
    })
}

variable "tags" {
  description = "Map of resource Tags"
  type = map(any)
}