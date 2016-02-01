###########################################
#
#  Keystone policy Settings
#
###########################################
default['bcpc']['keystone']['policy'] = {
  "admin_required" => "role:admin or is_admin:1",
  "service_role" => "role:service",
  "service_or_admin" => "rule:admin_required or rule:service_role",
  "owner" => "user_id:%(user_id)s",
  "admin_or_owner" => "rule:admin_required or rule:owner",
  "token_subject" => "user_id:%(target.token.user_id)s",
  "admin_or_token_subject" => "rule:admin_required or rule:token_subject",

  "default" => "rule:admin_required",

  "identity:get_region" => "",
  "identity:list_regions" => "",
  "identity:create_region" => "rule:admin_required",
  "identity:update_region" => "rule:admin_required",
  "identity:delete_region" => "rule:admin_required",

  "identity:get_service" => "rule:admin_required",
  "identity:list_services" => "rule:admin_required",
  "identity:create_service" => "rule:admin_required",
  "identity:update_service" => "rule:admin_required",
  "identity:delete_service" => "rule:admin_required",

  "identity:get_endpoint" => "rule:admin_required",
  "identity:list_endpoints" => "rule:admin_required",
  "identity:create_endpoint" => "rule:admin_required",
  "identity:update_endpoint" => "rule:admin_required",
  "identity:delete_endpoint" => "rule:admin_required",

  "identity:get_domain" => "rule:admin_required",
  "identity:list_domains" => "rule:admin_required",
  "identity:create_domain" => "rule:admin_required",
  "identity:update_domain" => "rule:admin_required",
  "identity:delete_domain" => "rule:admin_required",

  "identity:get_project" => "rule:admin_required",
  "identity:list_projects" => "rule:admin_required",
  "identity:list_user_projects" => "rule:admin_or_owner",
  "identity:create_project" => "rule:admin_required",
  "identity:update_project" => "rule:admin_required",
  "identity:delete_project" => "rule:admin_required",

  "identity:get_user" => "rule:admin_required",
  "identity:list_users" => "rule:admin_required",
  "identity:create_user" => "rule:admin_required",
  "identity:update_user" => "rule:admin_required",
  "identity:delete_user" => "rule:admin_required",
  "identity:change_password" => "rule:admin_or_owner",

  "identity:get_group" => "rule:admin_required",
  "identity:list_groups" => "rule:admin_required",
  "identity:list_groups_for_user" => "rule:admin_or_owner",
  "identity:create_group" => "rule:admin_required",
  "identity:update_group" => "rule:admin_required",
  "identity:delete_group" => "rule:admin_required",
  "identity:list_users_in_group" => "rule:admin_required",
  "identity:remove_user_from_group" => "rule:admin_required",
  "identity:check_user_in_group" => "rule:admin_required",
  "identity:add_user_to_group" => "rule:admin_required",

  "identity:get_credential" => "rule:admin_required",
  "identity:list_credentials" => "rule:admin_required",
  "identity:create_credential" => "rule:admin_required",
  "identity:update_credential" => "rule:admin_required",
  "identity:delete_credential" => "rule:admin_required",

  "identity:ec2_get_credential" => "rule:admin_required or (rule:owner and user_id:%(target.credential.user_id)s)",
  "identity:ec2_list_credentials" => "rule:admin_or_owner",
  "identity:ec2_create_credential" => "rule:admin_or_owner",
  "identity:ec2_delete_credential" => "rule:admin_required or (rule:owner and user_id:%(target.credential.user_id)s)",

  "identity:get_role" => "rule:admin_required",
  "identity:list_roles" => "rule:admin_required",
  "identity:create_role" => "rule:admin_required",
  "identity:update_role" => "rule:admin_required",
  "identity:delete_role" => "rule:admin_required",

  "identity:check_grant" => "rule:admin_required",
  "identity:list_grants" => "rule:admin_required",
  "identity:create_grant" => "rule:admin_required",
  "identity:revoke_grant" => "rule:admin_required",

  "identity:list_role_assignments" => "rule:admin_required",

  "identity:get_policy" => "rule:admin_required",
  "identity:list_policies" => "rule:admin_required",
  "identity:create_policy" => "rule:admin_required",
  "identity:update_policy" => "rule:admin_required",
  "identity:delete_policy" => "rule:admin_required",

  "identity:check_token" => "rule:admin_required",
  "identity:validate_token" => "rule:service_or_admin",
  "identity:validate_token_head" => "rule:service_or_admin",
  "identity:revocation_list" => "rule:service_or_admin",
  "identity:revoke_token" => "rule:admin_or_token_subject",

  "identity:create_trust" => "user_id:%(trust.trustor_user_id)s",
  "identity:get_trust" => "rule:admin_or_owner",
  "identity:list_trusts" => "",
  "identity:list_roles_for_trust" => "",
  "identity:get_role_for_trust" => "",
  "identity:delete_trust" => "",

  "identity:create_consumer" => "rule:admin_required",
  "identity:get_consumer" => "rule:admin_required",
  "identity:list_consumers" => "rule:admin_required",
  "identity:delete_consumer" => "rule:admin_required",
  "identity:update_consumer" => "rule:admin_required",

  "identity:authorize_request_token" => "rule:admin_required",
  "identity:list_access_token_roles" => "rule:admin_required",
  "identity:get_access_token_role" => "rule:admin_required",
  "identity:list_access_tokens" => "rule:admin_required",
  "identity:get_access_token" => "rule:admin_required",
  "identity:delete_access_token" => "rule:admin_required",

  "identity:list_projects_for_endpoint" => "rule:admin_required",
  "identity:add_endpoint_to_project" => "rule:admin_required",
  "identity:check_endpoint_in_project" => "rule:admin_required",
  "identity:list_endpoints_for_project" => "rule:admin_required",
  "identity:remove_endpoint_from_project" => "rule:admin_required",

  "identity:create_endpoint_group" => "rule:admin_required",
  "identity:list_endpoint_groups" => "rule:admin_required",
  "identity:get_endpoint_group" => "rule:admin_required",
  "identity:update_endpoint_group" => "rule:admin_required",
  "identity:delete_endpoint_group" => "rule:admin_required",
  "identity:list_projects_associated_with_endpoint_group" => "rule:admin_required",
  "identity:list_endpoints_associated_with_endpoint_group" => "rule:admin_required",
  "identity:get_endpoint_group_in_project" => "rule:admin_required",
  "identity:add_endpoint_group_to_project" => "rule:admin_required",
  "identity:remove_endpoint_group_from_project" => "rule:admin_required",

  "identity:create_identity_provider" => "rule:admin_required",
  "identity:list_identity_providers" => "rule:admin_required",
  "identity:get_identity_providers" => "rule:admin_required",
  "identity:update_identity_provider" => "rule:admin_required",
  "identity:delete_identity_provider" => "rule:admin_required",

  "identity:create_protocol" => "rule:admin_required",
  "identity:update_protocol" => "rule:admin_required",
  "identity:get_protocol" => "rule:admin_required",
  "identity:list_protocols" => "rule:admin_required",
  "identity:delete_protocol" => "rule:admin_required",

  "identity:create_mapping" => "rule:admin_required",
  "identity:get_mapping" => "rule:admin_required",
  "identity:list_mappings" => "rule:admin_required",
  "identity:delete_mapping" => "rule:admin_required",
  "identity:update_mapping" => "rule:admin_required",

  "identity:create_service_provider" => "rule:admin_required",
  "identity:list_service_providers" => "rule:admin_required",
  "identity:get_service_provider" => "rule:admin_required",
  "identity:update_service_provider" => "rule:admin_required",
  "identity:delete_service_provider" => "rule:admin_required",

  "identity:get_auth_catalog" => "",
  "identity:get_auth_projects" => "",
  "identity:get_auth_domains" => "",

  "identity:list_projects_for_groups" => "",
  "identity:list_domains_for_groups" => "",

  "identity:list_revoke_events" => "",

  "identity:create_policy_association_for_endpoint" => "rule:admin_required",
  "identity:check_policy_association_for_endpoint" => "rule:admin_required",
  "identity:delete_policy_association_for_endpoint" => "rule:admin_required",
  "identity:create_policy_association_for_service" => "rule:admin_required",
  "identity:check_policy_association_for_service" => "rule:admin_required",
  "identity:delete_policy_association_for_service" => "rule:admin_required",
  "identity:create_policy_association_for_region_and_service" => "rule:admin_required",
  "identity:check_policy_association_for_region_and_service" => "rule:admin_required",
  "identity:delete_policy_association_for_region_and_service" => "rule:admin_required",
  "identity:get_policy_for_endpoint" => "rule:admin_required",
  "identity:list_endpoints_for_policy" => "rule:admin_required",

  "identity:create_domain_config" => "rule:admin_required",
  "identity:get_domain_config" => "rule:admin_required",
  "identity:update_domain_config" => "rule:admin_required",
  "identity:delete_domain_config" => "rule:admin_required"
}