<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div id="col1">
  <div id="col1_content" class="clearfix">
    <ul>
      <li><s:url id="urleffectdiv" action="effect-div"/><sj:a href="%{urleffectdiv}" targets="main">Highlight Effect / Click</sj:a></li>
      <li><s:url id="urleffectdivshake" action="effect-div-shake"/><sj:a href="%{urleffectdivshake}" targets="main">Shake Effect / MouseOver</sj:a></li>
      <li><s:url id="urleffectdivsize" action="effect-div-size"/><sj:a href="%{urleffectdivsize}" targets="main">Size Effect / Bind on Link</sj:a></li>
      <li><s:url id="urleffectdivevents" action="effect-div-events"/><sj:a href="%{urleffectdivevents}" targets="main">Fold Effect with Events</sj:a></li>
      <li><s:url id="urleffectdivresize" action="effect-div-resizeable"/><sj:a href="%{urleffectdivresize}" targets="main">A Resizeable Div</sj:a></li>
      <li><s:url id="urleffectdivdragdrop" action="effect-div-dragdrop"/><sj:a href="%{urleffectdivdragdrop}" targets="main">Drag and Drop</sj:a></li>
      <li><s:url id="urleffectdivselectable" action="effect-div-selectable"/><sj:a href="%{urleffectdivselectable}" targets="main">Selectable</sj:a></li>
      <li><s:url id="urleffectdivsortable" action="effect-div-sortable"/><sj:a href="%{urleffectdivsortable}" targets="main">Sortable</sj:a></li>
      <li><s:url id="urleffectdivportlets" action="effect-div-portlets"/><sj:a href="%{urleffectdivportlets}" targets="main">Sortable (Portlets)</sj:a></li>
    </ul>
  </div>
</div>
<div id="col3">
  <div id="col3_content" class="clearfix">
	<h2>Size Effect</h2>
	<p>
	    A Div with Size Effect bind on a link.
	</p>
    <strong>Div :</strong>
    <sj:effectDiv bindOn="startlink" events="click" effect="size" effectOptions="to: {width: 400,height: 300}" effectDuration="1000" cssClass="result ui-widget-content ui-corner-all" cssStyle="width: 200px; height: 200px; background: blue; color: yellow;">
        Do you love Struts2 with jQuery?
    </sj:effectDiv>
    <a id="startlink" href="#" class="buttonlink ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-4-diag"></span>Size Div</a>
    
	<div class="code ui-widget-content ui-corner-all">
	  <strong>Code:</strong>
	  <pre>
    &lt;sj:effectDiv bindOn="startlink" events="click" effect="size" effectOptions="to: {width: 400,height: 300}" effectDuration="1000" cssClass="result ui-widget-content ui-corner-all" cssStyle="width: 200px; height: 200px; background: blue; color: yellow;"&gt;
        Do you love Struts2 with jQuery?
    &lt;/sj:effectDiv&gt;
    &lt;a id="startlink" href="#"&gt;Size Div&lt;/a&gt;
	  </pre>
	</div>
  </div>
  <!-- IE Column Clearing -->
  <div id="ie_clearing"> &#160; </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('.buttonlink').hover(
            function() { $(this).addClass('ui-state-hover'); }, 
            function() { $(this).removeClass('ui-state-hover'); }
    );
});
</script>
