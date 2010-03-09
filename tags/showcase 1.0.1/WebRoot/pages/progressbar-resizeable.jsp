<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div id="col1">
  <div id="col1_content" class="clearfix">
    <ul>
      <li><s:url id="urlprogressbar" action="progressbar"/><sj:a href="%{urlprogressbar}" targets="main">Progressbar</sj:a></li>
      <li><s:url id="urlprogressbarchange" action="progressbar-change"/><sj:a href="%{urlprogressbarchange}" targets="main">Progressbar with change event</sj:a></li>
      <li><s:url id="urlprogressbarresizeable" action="progressbar-resizeable"/><sj:a href="%{urlprogressbarresizeable}" targets="main">Resizeable progressbar</sj:a></li>
    </ul>
  </div>
</div>
<div id="col3">
  <div id="col3_content" class="clearfix">
    <h2>Resizeable progressbar</h2>
    <p>
        A resizeable Progressbar.
    </p>
    <sj:effectDiv id="progressbarWrapper" resizable="true" cssStyle="height:30px;" cssClass="ui-widget-default">
        <sj:progressbar id="progressbarresize" value="21" change="change" cssStyle="height: 100%;"/>
    </sj:effectDiv>
  </div>
  
  <div class="code ui-widget-content ui-corner-all">
    <strong>Code:</strong>
    <pre>
    &lt;sj:effectDiv id="progressbarWrapper" resizable="true" cssStyle="height:30px;" cssClass="ui-widget-default"&gt;
        &lt;sj:progressbar id="progressbarresize" value="21" change="change" cssStyle="height: 100%;"/&gt;
    &lt;/sj:effectDiv&gt;
    </pre>
  </div>
  <!-- IE Column Clearing -->
  <div id="ie_clearing"> &#160; </div>
</div>