<#if (actionMessages?? && actionMessages?size > 0 && !parameters.isEmptyList)>
<div 
<#if parameters.id?if_exists != "">
 id="${parameters.id?html}"<#rt/>
</#if>
<#if parameters.cssClass??>
 class="ui-widget ${parameters.cssClass?html}"<#rt/>
<#else>
 class="ui-widget actionMessage"<#rt/>
</#if>
<#if parameters.cssStyle??>
 style="${parameters.cssStyle?html}"<#rt/>
</#if>
>
	<div class="ui-state-highlight ui-corner-all" style="padding: 0.3em 0.7em; margin-top: 20px;"> 
		<#list actionMessages as message>
            <#if message?if_exists != "">
		<p><span class="ui-icon ui-icon-info" style="float: left; margin-right: 0.3em;"></span>
		<span><#if parameters.escape>${message!?html}<#else>${message!}</#if></span></p>
            </#if>
		</#list>
	</div>
</div>
</#if>