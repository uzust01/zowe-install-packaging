sed
  -e "s#{{root_dir}}#${ZOWE_ROOT_DIR}#" \
  -e "s#{{zowe_prefix}}#${ZOWE_PREFIX}#" \
  -e "s#{{zowe_instance}}#${ZOWE_INSTANCE}#" \
  -e "s#{{user_dir}}#${ZOWE_USER_DIR}#" \
  -e "s#{{config_location}}#${ZOWE_ROOT_DIR}/scripts/configure/config.properties}#" \
  -e "s#{{launch_component_groups}}#${LAUNCH_COMPONENT_GROUPS}#" \
  -e "s#{{java_home}}#${ZOWE_JAVA_HOME}#" \
  -e "s#{{node_home}}#${NODE_HOME}#" \
  -e "s#{{zosmf_port}}#${ZOSMF_PORT}#" \
  -e "s#{{zosmf_host}}#${ZOSMF_HOST}#" \
  -e "s#{{zosmf_userid}}#${ZOWE_ZOSMF_USERID}#" \
  -e "s#{{zosmf_admin_group}}#${ZOWE_ZOSMF_ADMIN_GROUP}#" \
  -e "s#{{zosmf_keyring}}#${ZOWE_ZOSMF_KEYRING}#" \
  -e "s#{{zowe_explorer_host}}#${ZOWE_EXPLORER_HOST}#" \
  -e "s#{{zowe_ip_address}}#${ZOWE_IP_ADDRESS}#" \
  -e "s#{{key_alias}}#localhost#" \
  -e "s#{{keystore}}#${ZOWE_ROOT_DIR}/components/api-mediation/keystore/localhost/localhost.keystore.p12#" \
  -e "s#{{keystore_password}}#password#" \
  -e "s#{{truststore}}#${ZOWE_ROOT_DIR}/components/api-mediation/keystore/localhost/localhost.truststore.p12#" \
  -e "s#{{external_certificate}}#${ZOWE_APIM_EXTERNAL_CERTIFICATE}#" \
  -e "s#{{external_certificate_alias}}#${ZOWE_APIM_EXTERNAL_CERTIFICATE_ALIAS}#" \
  -e "s#{{external_certificate_authorities}}#${ZOWE_APIM_EXTERNAL_CERTIFICATE_AUTHORITIES}#" \
  -e "s#{{discovery_port}}#${ZOWE_APIM_DISCOVERY_HTTP_PORT}#" \
  -e "s#{{catalog_port}}#${ZOWE_APIM_CATALOG_HTTP_PORT}#" \
  -e "s#{{gateway_port}}#${ZOWE_APIM_GATEWAY_HTTPS_PORT}#" \
  -e "s#{{verify_certificates}}#${ZOWE_APIM_VERIFY_CERTIFICATES}#" \
  -e "s#{{enable_sso}}#${ZOWE_APIM_ENABLE_SSO}#" \
  -e "s#{{files_api_port}}#${ZOWE_EXPLORER_SERVER_DATASETS_PORT}#" \
  -e "s#{{jobs_api_port}}#${ZOWE_EXPLORER_SERVER_JOBS_PORT}#" \
  -e "s#{{data_set_ui_port}}#${ZOWE_EXPLORER_MVS_UI_PORT}#" \
  -e "s#{{jobs_ui_port}}#${ZOWE_EXPLORER_JES_UI_PORT}#" \
  -e "s#{{uss_ui_port}}#${ZOWE_EXPLORER_USS_UI_PORT}#" \
  -e "s#{{zlux_https_port}}#${ZOWE_ZLUX_SERVER_HTTPS_PORT}#" \
  -e "s#{{zss_server_port}}#${ZOWE_ZSS_SERVER_PORT}#" \
  -e "s#{{zlux_ssh_port}}#${ZOWE_ZLUX_SSH_PORT}#" \
  -e "s#{{zlux_telnet_port}}#${ZOWE_ZLUX_TELNET_PORT}#" \
  -e "s#{{xmem_server_name}}#${ZSS_XMEM_SERVER_NAME}#" \
  "${INSTALL_DIR}/scripts/config.template.properties" \
  > "${CONFIG_LOCATION}"