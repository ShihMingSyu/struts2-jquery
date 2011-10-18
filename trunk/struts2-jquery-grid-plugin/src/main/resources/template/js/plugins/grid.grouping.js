// Grouping module
(function(a){a.jgrid.extend({groupingSetup:function(){return this.each(function(){var g=this,c=g.p.groupingView;if(c!==null&&((typeof c==="object")||a.isFunction(c))){if(!c.groupField.length){g.p.grouping=false}else{if(typeof(c.visibiltyOnNextGrouping)=="undefined"){c.visibiltyOnNextGrouping=[]}for(var e=0;e<c.groupField.length;e++){if(!c.groupOrder[e]){c.groupOrder[e]="asc"}if(!c.groupText[e]){c.groupText[e]="{0}"}if(typeof(c.groupColumnShow[e])!="boolean"){c.groupColumnShow[e]=true}if(typeof(c.groupSummary[e])!="boolean"){c.groupSummary[e]=false}if(c.groupColumnShow[e]===true){c.visibiltyOnNextGrouping[e]=true;a(g).jqGrid("showCol",c.groupField[e])}else{c.visibiltyOnNextGrouping[e]=a("#"+g.p.id+"_"+c.groupField[e]).is(":visible");a(g).jqGrid("hideCol",c.groupField[e])}c.sortitems[e]=[];c.sortnames[e]=[];c.summaryval[e]=[];if(c.groupSummary[e]){c.summary[e]=[];var b=g.p.colModel;for(var d=0,f=b.length;d<f;d++){if(b[d].summaryType){c.summary[e].push({nm:b[d].name,st:b[d].summaryType,v:""})}}}}g.p.scroll=false;g.p.rownumbers=false;g.p.subGrid=false;g.p.treeGrid=false;g.p.gridview=true}}else{g.p.grouping=false}})},groupingPrepare:function(d,c,e,b){this.each(function(){c[0]+="";var h=c[0].toString().split(" ").join("");var f=this.p.groupingView,g=this;if(e.hasOwnProperty(h)){e[h].push(d)}else{e[h]=[];e[h].push(d);f.sortitems[0].push(h);f.sortnames[0].push(a.trim(c[0].toString()));f.summaryval[0][h]=a.extend(true,[],f.summary[0])}if(f.groupSummary[0]){a.each(f.summaryval[0][h],function(){if(a.isFunction(this.st)){this.v=this.st.call(g,this.v,this.nm,b)}else{this.v=a(g).jqGrid("groupingCalculations."+this.st,this.v,this.nm,b)}})}});return e},groupingToggle:function(b){this.each(function(){var g=this,m=g.p.groupingView,d=b.lastIndexOf("_"),k=b.substring(0,d+1),h=parseInt(b.substring(d+1),10)+1,e=m.minusicon,j=m.plusicon,i=a("#"+b),c=i.length?i[0].nextSibling:null,l=a("#"+b+" span.tree-wrap-"+g.p.direction),f=false;if(l.hasClass(e)){if(m.showSummaryOnHide&&m.groupSummary[0]){if(c){while(c){if(a(c).hasClass("jqfoot")){break}a(c).hide();c=c.nextSibling}}}else{if(c){while(c){if(a(c).attr("id")==k+String(h)){break}a(c).hide();c=c.nextSibling}}}l.removeClass(e).addClass(j);f=true}else{if(c){while(c){if(a(c).attr("id")==k+String(h)){break}a(c).show();c=c.nextSibling}}l.removeClass(j).addClass(e)}if(a.isFunction(g.p.onClickGroup)){g.p.onClickGroup.call(g,b,f)}});return false},groupingRender:function(b,c){return this.each(function(){var e=this,k=e.p.groupingView,g="",i="",j,f=k.groupCollapse?k.plusicon:k.minusicon,d,h,l;if(!k.groupDataSorted){k.sortitems[0].sort();k.sortnames[0].sort();if(k.groupOrder[0].toLowerCase()=="desc"){k.sortitems[0].reverse();k.sortnames[0].reverse()}}f+=" tree-wrap-"+e.p.direction;l=0;while(l<c){if(e.p.colModel[l].name==k.groupField[0]){h=l;break}l++}a.each(k.sortitems[0],function(r,p){j=e.p.id+"ghead_"+r;i="<span style='cursor:pointer;' class='ui-icon "+f+"' onclick=\"jQuery('#"+e.p.id+"').jqGrid('groupingToggle','"+j+"');return false;\"></span>";try{d=e.formatter(j,k.sortnames[0][r],h,k.sortitems[0])}catch(y){d=k.sortnames[0][r]}g+='<tr id="'+j+'" role="row" class= "ui-widget-content jqgroup ui-row-'+e.p.direction+'"><td colspan="'+c+'">'+i+a.jgrid.format(k.groupText[0],d,b[p].length)+"</td></tr>";for(var o=0;o<b[p].length;o++){g+=b[p][o].join("")}if(k.groupSummary[0]){var t="";if(k.groupCollapse&&!k.showSummaryOnHide){t=' style="display:none;"'}g+="<tr"+t+' role="row" class="ui-widget-content jqfoot ui-row-'+e.p.direction+'">';var s=k.summaryval[0][p],v=e.p.colModel,u,w=b[p].length;for(var q=0;q<c;q++){var m="<td "+e.formatCol(q,1,"")+">&#160;</td>",x="{0}";a.each(s,function(){if(this.nm==v[q].name){if(v[q].summaryTpl){x=v[q].summaryTpl}if(this.st=="avg"){if(this.v&&w>0){this.v=(this.v/w)}}try{u=e.formatter("",this.v,q,this)}catch(n){u=this.v}m="<td "+e.formatCol(q,1,"")+">"+a.jgrid.format(x,u)+"</td>";return false}});g+=m}g+="</tr>"}});a("#"+e.p.id+" tbody:first").append(g);g=null})},groupingGroupBy:function(c,b){return this.each(function(){var f=this;if(typeof(c)=="string"){c=[c]}var d=f.p.groupingView;f.p.grouping=true;if(typeof d.visibiltyOnNextGrouping=="undefined"){d.visibiltyOnNextGrouping=[]}var e;for(e=0;e<d.groupField.length;e++){if(!d.groupColumnShow[e]&&d.visibiltyOnNextGrouping[e]){a(f).jqGrid("showCol",d.groupField[e])}}for(e=0;e<c.length;e++){d.visibiltyOnNextGrouping[e]=a("#"+f.p.id+"_"+c[e]).is(":visible")}f.p.groupingView=a.extend(f.p.groupingView,b||{});d.groupField=c;a(f).trigger("reloadGrid")})},groupingRemove:function(b){return this.each(function(){var e=this;if(typeof(b)=="undefined"){b=true}e.p.grouping=false;if(b===true){var c=e.p.groupingView;for(var d=0;d<c.groupField.length;d++){if(!c.groupColumnShow[d]&&c.visibiltyOnNextGrouping[d]){a(e).jqGrid("showCol",c.groupField)}}a("tr.jqgroup, tr.jqfoot","#"+e.p.id+" tbody:first").remove();a("tr.jqgrow:hidden","#"+e.p.id+" tbody:first").show()}else{a(e).trigger("reloadGrid")}})},groupingCalculations:{sum:function(b,d,c){return parseFloat(b||0)+parseFloat((c[d]||0))},min:function(b,d,c){if(b===""){return parseFloat(c[d]||0)}return Math.min(parseFloat(b),parseFloat(c[d]||0))},max:function(b,d,c){if(b===""){return parseFloat(c[d]||0)}return Math.max(parseFloat(b),parseFloat(c[d]||0))},count:function(b,d,c){if(b===""){b=0}if(c.hasOwnProperty(d)){return b+1}else{return 0}},avg:function(b,d,c){return parseFloat(b||0)+parseFloat((c[d]||0))}}})})(jQuery);