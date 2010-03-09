<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div id="col1">
  <div id="col1_content" class="clearfix">
    <ul>
      <li><s:url id="urlslider" action="slider"/><sj:a href="%{urlslider}" targets="main">Slider</sj:a></li>
      <li><s:url id="urlsliderform" action="slider-form"/><sj:a href="%{urlsliderform}" targets="main">Slider in a Form</sj:a></li>
      <li><s:url id="urlsliderrange" action="slider-range"/><sj:a href="%{urlsliderrange}" targets="main">Slider with Range and Events</sj:a></li>
    </ul>
  </div>
</div>
<div id="col3">
  <div id="col3_content" class="clearfix">
	<h2>Slider with Form</h2>
	<p>
	    Slider in a form with AJAX submit.
	</p>
    <strong>Result Div :</strong>
	<div id="result" class="result ui-widget-content ui-corner-all">Submit form bellow.</div>
    
    <s:form id="form" action="echo" theme="simple" cssClass="yform">
        <fieldset>
            <legend>AJAX Form</legend>
	        <div class="type-text">
	            <label for="echo">Echo: <span id="displayvaluespan">40</span></label>
	            <sj:slider id="echo" name="echo" value="40" displayValueElement="displayvaluespan" min="20" max="200" animate="true" step="5" cssStyle="margin: 10px;"/>
	        </div>
	        <div class="type-button">
	            <sj:submit targets="result" value="AJAX Submit" indicator="indicator_slider_form"/> <img id="indicator_slider_form" src="images/indicator.gif" alt="Loading..." style="display:none"/> 
	        </div>
        </fieldset>
    </s:form>

	<div class="code ui-widget-content ui-corner-all">
	  <strong>Code:</strong>
	  <pre>
        &lt;sj:slider id="echo" name="echo" <strong>value="40" displayValueElement="displayvaluespan" min="20" max="200" animate="true" step="5"</strong> cssStyle="margin: 10px;"&gt;
	  </pre>
	</div>
  </div>
  <!-- IE Column Clearing -->
  <div id="ie_clearing"> &#160; </div>
</div>