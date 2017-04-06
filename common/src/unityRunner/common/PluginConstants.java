package unityRunner.common;

import org.jetbrains.annotations.NonNls;

import java.util.Arrays;
import java.util.List;

public interface PluginConstants {
    @NonNls final String RUN_TYPE = "unityRunner";
    @NonNls final String RUNNER_DISPLAY_NAME = "Unity";
    final String RUNNER_DESCRIPTION = "Unity runner";

    final String PROPERTY_UNITY_EXECUTABLE_PATH = "unity.executable";
    final String PROPERTY_PROJECT_PATH = "argument.project_path";
    final String PROPERTY_LINELIST_PATH = "argument.line_list_path";
    final String PROPERTY_BUILD_PLAYER = "argument.build_player";
    final String PROPERTY_BUILD_STAGE = "argument.build_stage";
    final String PROPERTY_BUILD_EXTRA = "argument.build_extra";
    final String PROPERTY_UNITY_VERSION = "argument.unity_version";

    final String PROPERTY_ASSET_SERVER_IP = "argument.asset_server_ip";
    final String PROPERTY_ASSET_SERVER_PROJECT = "argument.asset_server_project";
    final String PROPERTY_ASSET_SERVER_USER = "argument.asset_server_user";
    final String PROPERTY_ASSET_SERVER_PASSWORD = "argument.asset_server_password";

    final String PROPERTY_WARNINGS_AS_ERRORS = "argument.warnings_as_errors";

    final String PROPERTY_LOG_IGNORE = "argument.log_ignore";
    final String PROPERTY_LOG_IGNORE_TEXT = "argument.log_ignore_text";

    final String CONFIGPARAM_UNITY_BASE_VERSION = "unity.";
    final String CONFIGPARAM_UNITY_LOG_PATH = "unity.log";
    final String CONFIGPARAM_UNITY_LATEST_VERSION = "unity.latest";
}
