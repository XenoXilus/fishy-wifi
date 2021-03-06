<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="small-form" />
        <g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="create-area" class="content scaffold-create" role="main">

            <h1><g:message code="area.title" /></h1>
            %{--<p><g:message code="area.question" /></p>--}%

            <g:if test="${flash.message}">
                <div class="message alert" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.area}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.area}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:field bean="area" property="name"
                             widget-placeholder="${message(code:"area.name.placeholder")}"/>
                    <f:field bean="area" property="crop"/>
                    <f:field bean="area" property="variety"/>
                    <f:field bean="area" property="area"/>
                    <f:field bean="area" property="canopyRadius"/>
                    <f:field bean="area" property="inGreenhouse"/>
                </fieldset>

                <fieldset class="buttons">
                    <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
