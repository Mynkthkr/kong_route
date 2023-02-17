resource "kong_service" "service" {
  name            = var.service_name
  protocol        = var.service_protocol
  host            = var.service_host
  port            = var.service_port
  path            = var.service_path
  retries         = var.service_retries
  connect_timeout = var.service_connect_timeout
  write_timeout   = var.service_write_timeout
  read_timeout    = var.service_read_timeout
}