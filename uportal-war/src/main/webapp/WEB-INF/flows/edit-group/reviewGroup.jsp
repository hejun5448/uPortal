<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<%@ include file="/WEB-INF/jsp/include.jsp" %>
<portlet:renderURL var="backUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="cancel"/>
</portlet:renderURL>
<portlet:renderURL var="saveUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="save"/>
</portlet:renderURL>
<portlet:renderURL var="deleteUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="confirmRemove"/>
</portlet:renderURL>
<portlet:renderURL var="permissionsUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="viewGroupPermissions"/>
</portlet:renderURL>
<portlet:renderURL var="editDetailsUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="editDetails"/>
</portlet:renderURL>
<portlet:renderURL var="editMembersUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="editMembers"/>
</portlet:renderURL>
<portlet:renderURL var="createMemberUrl">
    <portlet:param name="execution" value="${flowExecutionKey}" />
    <portlet:param name="_eventId" value="createChildGroup"/>
</portlet:renderURL>
<c:set var="n"><portlet:namespace/></c:set>

<!-- Portlet -->
<div class="fl-widget portlet grp-mgr view-reviewgroup" role="section">

    <!-- Portlet Titlebar -->
    <div class="fl-widget-titlebar titlebar portlet-titlebar" role="sectionhead">
        <h2 class="title" role="heading"><c:out value="${ group.name }"/></h2>
        <h3 class="subtitle">${ group.description }</h3>
        <div class="details">Created by ${ group.creatorId }</div>
        <div class="toolbar">
        	<ul>
            	<li><a class="button" href="${ editDetailsUrl }"><spring:message code="edit"/></a></li>
                <li><a class="button" href="${ permissionsUrl }"><spring:message code="view.permissions"/></a></li>
                <li><a class="button" href="${ deleteUrl }"><spring:message code="delete"/></a></li>
                <li><a class="button" href="${ createMemberUrl }"><spring:message code="create.member.group"/></a></li>
            </ul>
        </div>
    </div> <!-- end: portlet-titlebar -->
    
    <!-- Portlet Body -->
    <div class="fl-widget-content content portlet-content" role="main">
        
        <!-- Portlet Section -->
        <div class="portlet-section" role="region">
            <div class="titlebar">
                <h3 class="title" role="heading"><spring:message code="members"/></h3>
                <div class="options">
                    <a href="${ editMembersUrl }"><span><spring:message code="edit.members"/></span></a>
                </div>
            </div>
            <div class="content">
                <ul class="group-member">
                    <c:forEach items="${ group.members }" var="child">
                        <li><a href="${ editMembersUrl }">${ child.name }</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        
        <div class="buttons">
            <a class="button" href="${ cancelUrl }"><spring:message code="cancel"/></a>
            <a class="button primary" href="${ saveUrl }"><spring:message code="save"/></a>
        </div>
    </div>
</div>