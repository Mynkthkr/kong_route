module "service_post_service" {
    source = "../Module/service/variable.tf"
    service_name                = var.service_name_post_service
    service_protocol            = var.service_protocol_post_service
    service_host                = var.service_host_post_service
    service_port                = var.service_port_post_service
    service_retries             = var.service_retries_post_service
    service_path                = var.service_path_post_service
    service_connect_timeout     = var.service_connect_timeout_post_service
    service_write_timeout       = var.service_write_timeout_post_service
    service_read_timeout        = var.service_read_timeout_post_service
  
}


module "route_post-service" {
    source                  = "../Module/route/variable.tf"
    route_name              = var.name_post_service
    route_protocols         = var.route_protocols_post_service
    route_hosts             = var.route_hosts_post_service
    route_paths             = var.route_paths_post_service
    route_strip_path        = var.route_strip_path_post_service
    route_preserve_host     = var.route_preserve_host_post_service
    route_regex_priority    = var.route_regex_priority_post_service
    service_id              = module.service_post_service.service.id
  
}



