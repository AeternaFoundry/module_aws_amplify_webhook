variable "amplify_webhooks" {
  description = <<EOT
Map of amplify_webhooks, attributes below
Required:
    - app_id
    - branch_name
Optional:
    - description
    - region
EOT

  type = map(object({
    app_id      = string
    branch_name = string
    description = optional(string)
    region      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.amplify_webhooks : (
        can(regex("^[0-9A-Za-z/_.-]{1,255}$", v.branch_name))
      )
    ])
    error_message = "should be not be more than 255 letters, numbers, and the symbols /_.-"
  }
}

