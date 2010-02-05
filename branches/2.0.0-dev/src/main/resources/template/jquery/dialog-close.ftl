<#--
/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
<#assign escapedOptionId="${parameters.id?string?replace('.', '_')}">
</div>
<script type='text/javascript'>
$(document).ready(function () { 
	var options_${escapedOptionId?html} = {};
  <#if parameters.height?if_exists != "">
	options_${escapedOptionId?html}.height = ${parameters.height?html};
  </#if>
  <#if parameters.width?if_exists != "">
	options_${escapedOptionId?html}.width = ${parameters.width?html};
  </#if>
   <#if parameters.maxHeight?if_exists != "">
	options_${escapedOptionId?html}.maxheight = ${parameters.maxHeight?html};
  </#if>
  <#if parameters.maxWidth?if_exists != "">
	options_${escapedOptionId?html}.maxwidth = ${parameters.maxWidth?html};
  </#if>
   <#if parameters.minHeight?if_exists != "">
	options_${escapedOptionId?html}.minheight = ${parameters.minHeight?html};
  </#if>
  <#if parameters.minWidth?if_exists != "">
	options_${escapedOptionId?html}.minwidth = ${parameters.minWidth?html};
  </#if>
  <#if parameters.zindex?if_exists != "">
	options_${escapedOptionId?html}.zindex = ${parameters.zindex?html};
  </#if>
  <#if parameters.title?if_exists != "">
	options_${escapedOptionId?html}.title = "${parameters.title?html}";
  </#if>
  <#if parameters.showEffect?if_exists != "">
	options_${escapedOptionId?html}.show = "${parameters.showEffect?html}";
  </#if>
  <#if parameters.hideEffect?if_exists != "">
	options_${escapedOptionId?html}.hide = "${parameters.hideEffect?html}";
  </#if>
  <#if parameters.position?if_exists != "">
	options_${escapedOptionId?html}.position = "${parameters.position?html}";
  </#if>
  <#if parameters.buttons?if_exists != "">
	options_${escapedOptionId?html}.buttons = "${parameters.buttons?html}";
  </#if>
  <#if parameters.draggable?if_exists != "">
	options_${escapedOptionId?html}.draggable = false;
  <#else>
	options_${escapedOptionId?html}.draggable = true;
  </#if>
  <#if parameters.resizable?if_exists != "">
	options_${escapedOptionId?html}.resizable = "${parameters.resizable?html}";
  </#if>
  <#if parameters.autoOpen?if_exists == "false">
	options_${escapedOptionId?html}.autoopen = false;
  <#else>
	options_${escapedOptionId?html}.autoopen = true;
  </#if>
<#if parameters.modal?if_exists == "true" >
 <#if parameters.overlayColor?if_exists != "" || parameters.overlayOpacity?if_exists != "">
	<#if parameters.overlayColor?if_exists != "">
	options_${escapedOptionId?html}.backgroundcolor = "${parameters.overlayColor?html}";
	</#if>
	<#if parameters.overlayOpacity?if_exists != "">
	options_${escapedOptionId?html}.opacity = ${parameters.overlayOpacity?html};
	<#else>
	opacity="0.7"<#rt/>
	options_${escapedOptionId?html}.opacity = 0.7;
	</#if>
  </#if>
	options_${escapedOptionId?html}.modal = true;
</#if>
  <#if parameters.onOpenTopics?if_exists != "">
	options_${escapedOptionId?html}.onopentopics = "${parameters.onOpenTopics?html}";
  </#if>
  <#if parameters.onCloseTopics?if_exists != "">
	options_${escapedOptionId?html}.onclosetopics = "${parameters.onCloseTopics?html}";
  </#if>
  <#if parameters.onFocusTopics?if_exists != "">
	options_${escapedOptionId?html}.onfocustopics = "${parameters.onFocusTopics?html}";
  </#if>
  <#if parameters.onBeforeCloseTopics?if_exists != "">
	options_${escapedOptionId?html}.onbeforeclosetopics = "${parameters.onBeforeCloseTopics?html}";
  </#if>
<#include "/${parameters.templateDir}/jquery/base.ftl" />
<#include "/${parameters.templateDir}/jquery/interactive.ftl" />
<#include "/${parameters.templateDir}/jquery/topics.ftl" />
<#include "/${parameters.templateDir}/jquery/action.ftl" />

<#include "/${parameters.templateDir}/jquery/jquery-bind.ftl" />
 });  
</script>
