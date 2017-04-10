<%@ taglib prefix="props" tagdir="/WEB-INF/tags/props" %>
<%@ taglib prefix="l" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="forms" tagdir="/WEB-INF/tags/forms" %>

<jsp:useBean id="propertiesBean" scope="request" type="jetbrains.buildServer.controllers.BasePropertiesBean"/>

<tr>
    <th>
        <label for="argument.unity_version">Unity Version: </label>
    </th>
    <td>
        <props:textProperty name="argument.unity_version" style="width:32em;"/>
        <span class="error" id="error_argument.unity_version"></span>
        <span class="smallNote">
             Specify a version of Unity to use - e.g. 5.1.2f1. If left blank the latest version installed will be used.
        </span>
    </td>
</tr>


<tr>
    <th>
        <label for="unity.executable">Unity Executable: </label>
    </th>
    <td>
        <props:textProperty name="unity.executable" style="width:32em;"/>
        <span class="error" id="error_unity.executable"></span>
        <span class="smallNote">
             Optional, specify to use override the Unity executable path (if specifying a version of unity its best to leave blank).
        </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.project_path">Project path: </label>
    </th>
    <td>
        <props:textProperty name="argument.project_path" style="width:32em;"/>
        <span class="error" id="error_argument.project_path"></span>
        <span class="smallNote">
             Open the project at the given path.
        </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.line_list_path">Line List path: </label>
    </th>
    <td>
        <props:textProperty name="argument.line_list_path" style="width:32em;"/>
        <span class="error" id="error_argument.line_list_path"></span>
        <span class="smallNote">
             Open the Error / Warning list file at the following path
        </span>
    </td>
</tr>

<props:selectSectionProperty name="argument.build_player" title="Build player:">
    <props:selectSectionPropertyContent value="" caption="<Don't build player>"/>
    <props:selectSectionPropertyContent value="BuildScript.BuildAndroid" caption="Android"/>

    <props:selectSectionPropertyContent value="BuildScript.BuildOSXUni" caption="OSX (Universal) Player"/>

    <props:selectSectionPropertyContent value="BuildScript.BuildStandalone" caption="Windows standalone" />

    <props:selectSectionPropertyContent value="BuildScript.BuildWebPlayer" caption="Web Player" />
    <props:selectSectionPropertyContent value="BuildScript.BuildWebGL" caption="Web GL" />
</props:selectSectionProperty>

<props:selectSectionProperty name="argument.build_stage" title="Build stage:">
    <props:selectSectionPropertyContent value="" caption="Dev"/>
    <props:selectSectionPropertyContent value="Stage" caption="Stage"/>
    <props:selectSectionPropertyContent value="Release" caption="Release"/>
</props:selectSectionProperty>

<tr>
    <th>
        <label for="argument.asset_server_ip">Asset server ip: </label>
    </th>
    <td>
        <props:textProperty name="argument.asset_server_ip" style="width:32em;"/>
        <span class="error" id="error_argument.asset_server_ip"></span>
        <span class="smallNote">
             ip
        </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.asset_server_project">Asset server project: </label>
    </th>
    <td>
        <props:textProperty name="argument.asset_server_project" style="width:32em;"/>
        <span class="error" id="error_argument.asset_server_project"></span>
        <span class="smallNote">
             project
        </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.asset_server_user">Asset server user: </label>
    </th>
    <td>
        <props:textProperty name="argument.asset_server_user" style="width:32em;"/>
        <span class="error" id="error_argument.asset_server_user"></span>
        <span class="smallNote">
             user
        </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.asset_server_password">Asset server password: </label>
    </th>
    <td>
        <props:textProperty name="argument.asset_server_password" style="width:32em;"/>
        <span class="error" id="error_argument.asset_server_password"></span>
        <span class="smallNote">
             password
        </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.build_extra">Build extra: </label>
    </th>
    <td>
        <props:textProperty name="argument.build_extra" style="width:32em;"/>
        <span class="smallNote">
             Add extra command line options.
        </span>
    </td>
<tr>

<tr>
    <th>
        <label for="argument.warnings_as_errors">Warnings As Errors: </label>
    </th>
    <td>
         <props:checkboxProperty name="argument.warnings_as_errors"/>
         <span class="error" id="error_argument.warnings_as_errors"></span>
         <span class="smallNote">
            Should the build will report warnings as errors.
         </span>
    </td>
</tr>

<tr>
    <th>
        <label for="argument.log_ignore">Enable Log Ignore: </label>
    </th>
    <td>
        <c:set var='onclick'>
          if (this.checked) {
          BS.Util.show('argument.log_ignore_text.container');
          $('argument.log_ignore_text').focus();
          } else {
          BS.Util.hide('argument.log_ignore_text.container');
          }
          BS.VisibilityHandlers.updateVisibility('mainContent');
        </c:set>
        <props:checkboxProperty name="argument.log_ignore" onclick="${onclick}"/>
        <span class="error" id="error_argument.log_ignore"></span>

        <div id="argument.log_ignore_text.container" style="${propertiesBean.properties['argument.log_ignore'] ? '' : 'display:none;'}"
            <label for="argument.log_ignore_text">Ignore any log line before: </label>
            <props:textProperty name="argument.log_ignore_text" style="width:32em;"/>
            <span class="error" id="error_argument.log_ignore_text"></span>
        </div>

        <span class="smallNote">
             Will ignore all log lines output before the specified text is found. Will output all ignored lines if the text is never found.<br/>
             This prevents errors shown in TeamCity logs before Unity has refreshed and found new files.<br/>
        </span>
    </td>
</tr>
