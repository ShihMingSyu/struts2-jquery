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
</ul>
</div>
<script type="text/javascript">
$(document).ready(function () {
    $('#${parameters.id?html} ul div').appendTo('#${parameters.id?html}');
    $('#${parameters.id?html}').tabs({
  <#if parameters.selectedTab?exists >
        selected: ${parameters.selectedTab?html},
  </#if>
  <#if parameters.openOnMouseover?default(false)>
        event: 'mouseover', 
  </#if>
  <#if parameters.collapsible?default(false)>
        collapsible: true, 
  </#if>
  <#if parameters.useSelectedTabCookie?default(false)>
        cookie: { expires: 30 }, 
  </#if>
  <#if parameters.animate?default(false)>
        fx: { opacity: 'toggle' }, 
  </#if>
  <#if parameters.spinner?if_exists != "">
            spinner: '${parameters.spinner}',
  </#if>
        ajaxOptions:{ dataType:'html'} 
    });
});
</script>


