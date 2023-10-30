module "wrapper" {
  source = "../../modules/container-definition"

  for_each = var.items

  cloudwatch_log_group_kms_key_id        = try(each.value.cloudwatch_log_group_kms_key_id, var.defaults.cloudwatch_log_group_kms_key_id, null)
  cloudwatch_log_group_retention_in_days = try(each.value.cloudwatch_log_group_retention_in_days, var.defaults.cloudwatch_log_group_retention_in_days, 30)
  cloudwatch_log_group_use_name_prefix   = try(each.value.cloudwatch_log_group_use_name_prefix, var.defaults.cloudwatch_log_group_use_name_prefix, false)
  command                                = try(each.value.command, var.defaults.command, [])
  cpu                                    = try(each.value.cpu, var.defaults.cpu, null)
  create_cloudwatch_log_group            = try(each.value.create_cloudwatch_log_group, var.defaults.create_cloudwatch_log_group, true)
  dependencies                           = try(each.value.dependencies, var.defaults.dependencies, [])
  disable_networking                     = try(each.value.disable_networking, var.defaults.disable_networking, null)
  dns_search_domains                     = try(each.value.dns_search_domains, var.defaults.dns_search_domains, [])
  dns_servers                            = try(each.value.dns_servers, var.defaults.dns_servers, [])
  docker_labels                          = try(each.value.docker_labels, var.defaults.docker_labels, {})
  docker_security_options                = try(each.value.docker_security_options, var.defaults.docker_security_options, [])
  enable_cloudwatch_logging              = try(each.value.enable_cloudwatch_logging, var.defaults.enable_cloudwatch_logging, true)
  entrypoint                             = try(each.value.entrypoint, var.defaults.entrypoint, [])
  environment                            = try(each.value.environment, var.defaults.environment, [])
  environment_files                      = try(each.value.environment_files, var.defaults.environment_files, [])
  essential                              = try(each.value.essential, var.defaults.essential, null)
  extra_hosts                            = try(each.value.extra_hosts, var.defaults.extra_hosts, [])
  firelens_configuration                 = try(each.value.firelens_configuration, var.defaults.firelens_configuration, {})
  health_check                           = try(each.value.health_check, var.defaults.health_check, {})
  hostname                               = try(each.value.hostname, var.defaults.hostname, null)
  image                                  = try(each.value.image, var.defaults.image, null)
  interactive                            = try(each.value.interactive, var.defaults.interactive, false)
  links                                  = try(each.value.links, var.defaults.links, [])
  linux_parameters                       = try(each.value.linux_parameters, var.defaults.linux_parameters, {})
  log_configuration                      = try(each.value.log_configuration, var.defaults.log_configuration, {})
  memory                                 = try(each.value.memory, var.defaults.memory, null)
  memory_reservation                     = try(each.value.memory_reservation, var.defaults.memory_reservation, null)
  mount_points                           = try(each.value.mount_points, var.defaults.mount_points, [])
  name                                   = try(each.value.name, var.defaults.name, null)
  operating_system_family                = try(each.value.operating_system_family, var.defaults.operating_system_family, "LINUX")
  port_mappings                          = try(each.value.port_mappings, var.defaults.port_mappings, [])
  privileged                             = try(each.value.privileged, var.defaults.privileged, false)
  pseudo_terminal                        = try(each.value.pseudo_terminal, var.defaults.pseudo_terminal, false)
  readonly_root_filesystem               = try(each.value.readonly_root_filesystem, var.defaults.readonly_root_filesystem, true)
  repository_credentials                 = try(each.value.repository_credentials, var.defaults.repository_credentials, {})
  resource_requirements                  = try(each.value.resource_requirements, var.defaults.resource_requirements, [])
  secrets                                = try(each.value.secrets, var.defaults.secrets, [])
  service                                = try(each.value.service, var.defaults.service, "")
  start_timeout                          = try(each.value.start_timeout, var.defaults.start_timeout, 30)
  stop_timeout                           = try(each.value.stop_timeout, var.defaults.stop_timeout, 120)
  system_controls                        = try(each.value.system_controls, var.defaults.system_controls, [])
  tags                                   = try(each.value.tags, var.defaults.tags, {})
  ulimits                                = try(each.value.ulimits, var.defaults.ulimits, [])
  user                                   = try(each.value.user, var.defaults.user, null)
  volumes_from                           = try(each.value.volumes_from, var.defaults.volumes_from, [])
  working_directory                      = try(each.value.working_directory, var.defaults.working_directory, null)
}
