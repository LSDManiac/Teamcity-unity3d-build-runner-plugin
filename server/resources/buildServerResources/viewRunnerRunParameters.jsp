<%@ taglib prefix="props" tagdir="/WEB-INF/tags/props" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="propertiesBean" scope="request" type="jetbrains.buildServer.controllers.BasePropertiesBean"/>

<div class="parameter">
  <c:choose>
    <c:when test="${not empty propertiesBean.properties['argument.unity_version']}">
      Unity Version: <strong><props:displayValue name="argument.unity_version" /></strong>
    </c:when>
  </c:choose>
</div>

<div class="parameter">
  <c:choose>
    <c:when test="${not empty propertiesBean.properties['unity.executable']}">
      Unity Executable: <strong><props:displayValue name="unity.executable" /></strong>
    </c:when>
  </c:choose>
</div>

<div class="parameter">
  Project Path: <strong><props:displayValue name="argument.project_path" /></strong>
</div>

<div class="parameter">
  Line List Path: <strong><props:displayValue name="argument.line_list_path" /></strong>
</div>

<div class="parameter">
  Build player: <strong><props:displayValue name="argument.build_player" /></strong>
</div>

<div class="parameter">
  Build stage: <strong><props:displayValue name="argument.build_stage" /></strong>
</div>

<div class="parameter">
  Asset server ip: <strong><props:displayValue name="argument.asset_server_ip" /></strong>
</div>

<div class="parameter">
  Asset server proj: <strong><props:displayValue name="argument.asset_server_project" /></strong>
</div>

<div class="parameter">
  Asset server user: <strong><props:displayValue name="argument.asset_server_user" /></strong>
</div>

<div class="parameter">
  Asset server pass: <strong><props:displayValue name="argument.asset_server_password" /></strong>
</div>

<div class="parameter">
  Warnings As Errors: <strong><props:displayValue name="argument.warnings_as_errors" /></strong>
</div>

<div class="parameter">
  Build Extra: <strong><props:displayValue name="argument.build_extra" /></strong>
</div>

<div class="parameter">
  <c:choose>
    <c:when test="${propertiesBean.properties['argument.log_ignore']}">
      Ignore Errors Before: <strong><props:displayValue name="argument.log_ignore_text" /></strong>
    </c:when>
  </c:choose>
</div>
