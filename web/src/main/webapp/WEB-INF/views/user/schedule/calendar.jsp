<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.mycompany.myschool.web.util.Token" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
if(request.getAttribute("token_key") == null) {
	Token.set(request);
}
%>
<!DOCTYPE html>
<html>
<head>
<!-- <style>
 body { font-size: 62.5%; }
 label, input { display:block; }
 input.text { margin-bottom:12px; width:95%; padding: .4em; }
 fieldset { padding:0; border:0; margin-top:25px; }
 h1 { font-size: 1.2em; margin: .6em 0; }
 div#users-contain { width: 350px; margin: 20px 0; }
 div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
 div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
 .ui-dialog .ui-state-error { padding: .3em; }
 .validateTips { border: 1px solid transparent; padding: 0.3em; }
</style> -->

<style>
	/* body {
		margin-top: 40px;
		text-align: center;
		font-size: 13px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		} */
	body { font-size: 13px; }
    label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 350px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
    
	#calendar {
		width: 900px;
		margin: 0 auto;
		}
</style>

<%-- <link rel='stylesheet' href='<%=request.getContextPath() %>/lib/cupertino/jquery-ui.min.css' /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/css/black-tie/jquery-ui-1.10.4.custom.css"> --%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/smoothness/jquery-ui-1.10.4.custom.css" />

<link href='<%=request.getContextPath() %>/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='<%=request.getContextPath() %>/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />

<script src="<%=request.getContextPath() %>/js/jquery-1.11.1.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.4.custom.js"></script>

<script src='<%=request.getContextPath() %>/lib/moment.min.js'></script>
<%-- <script src='<%=request.getContextPath() %>/lib/jquery.min.js'></script>
<script src='<%=request.getContextPath() %>/lib/jquery-ui.custom.min.js'></script> --%>
<script src='<%=request.getContextPath() %>/fullcalendar/fullcalendar.min.js'></script>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/image_ov.js"></script>

<script>
$(document).ready(function() {
	var curDate = new Date();
	
	$('#calendar').fullCalendar({
		theme: true,
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		selectable: true,
		selectHelper: true,
		select: function(start, end, jsEvent, view) {
			var gmt = 0;
	    	var sdate = new Date(start); 
	    	var edate = new Date(end);
	    	
	    	if (sdate.toString().indexOf("GMT+0900") != -1) {
	    		gmt = -9;
	    	}
	    	
			var sd = sdate.getDate();
			var sm = sdate.getMonth() + 1;
			var sy = sdate.getFullYear();
			var sh = sdate.getHours() + gmt;
			if (sh < 0) {
				sh = sh + 24; 
				sd = sd - 1; 
			}
			var smi = sdate.getMinutes();
			var ed = edate.getDate();
			var em = edate.getMonth() + 1;
			var ey = edate.getFullYear();
			var eh = edate.getHours() + gmt;
			if (eh < 0) {
				eh = eh + 24; 
				ed = ed - 1; 
			}
			var emi = edate.getMinutes();
			
			var ch = curDate.getHours();
			var cmi = curDate.getMinutes();
			if (cmi < 30) {
				cmi = 0;
			} else if (smi > 30) {
				cmi = 30;
			}
			
			/* console.log(sdate + "/" + edate); 
			console.log("Start->" + sy + "-" + (sm<10?"0"+sm:sm) + "-" + (sd<10?"0"+sd:sd) + "T" + (sh<10?"0"+sh:sh) + ":" + (smi<10?"0"+smi:smi));
			console.log("End->" + ey + "-" + (em<10?"0"+em:em) + "-" + (ed<10?"0"+ed:ed) + "T" + ((eh+1)<10?"0"+(eh+1):(eh+1)) + ":" + (emi<10?"0"+emi:emi)); */
			
			if (view.name == "month") {
				ed = ed - 1;
			}
			
			if (view.name == "month") {
				$( "#evt_datetime_s" ).val(sy + "-" + (sm<10?"0"+sm:sm) + "-" + (sd<10?"0"+sd:sd) + "T" + (ch<10?"0"+ch:ch) + ":" + (cmi<10?"0"+cmi:cmi));
				$( "#evt_datetime_e" ).val(ey + "-" + (em<10?"0"+em:em) + "-" + (ed<10?"0"+ed:ed) + "T" + ((ch+1)<10?"0"+(ch+1):(ch+1)) + ":" + (cmi<10?"0"+cmi:cmi));				
			} else {
				$( "#evt_datetime_s" ).val(sy + "-" + (sm<10?"0"+sm:sm) + "-" + (sd<10?"0"+sd:sd) + "T" + (sh<10?"0"+sh:sh) + ":" + (smi<10?"0"+smi:smi));
				$( "#evt_datetime_e" ).val(ey + "-" + (em<10?"0"+em:em) + "-" + (ed<10?"0"+ed:ed) + "T" + (eh<10?"0"+eh:eh) + ":" + (emi<10?"0"+emi:emi));
			}
			
			$( "#dialog-form" ).dialog( "open" );
		},
		editable: false,
		events: function(start, end, timezone, callback) {
	        $.ajax({
	        	url: 'http://127.0.0.1:8088/My School/user/schedule/scheduleJson.do',
	            dataType: "jsonp",
		        jsonp: "callback",
	            data: {
	                // our hypothetical feed requires UNIX timestamps
	                start: start.unix(),
	                end: end.unix()
	            },
	            success: function(doc) {
	                var events = [];
	                $.each(doc.items, function(i, row) {
			            /* console.log(JSON.stringify(row)); */
			            events.push({
	                        title: $(this).attr('title'),
	                        start: $(this).attr('start'), // will be parsed
	                        evt_id: $(this).attr('evt_id')
	                    });
			        });
	                callback(events);
	            }
	        });
	    },
	    eventClick: function(calEvent, jsEvent, view) {
	        $.ajax({
	        	url: "<c:out value='${context_name}'/>/user/schedule/" + calEvent.evt_id + ".do",
	        	type: "POST",
			  	dataType: "jsonp",
			  	jsonp: "jsoncallback",
				data: $("form#evtView").serialize(),
			  	success: function( response ) {
			  		$( "#dialog-view" ).dialog( "open" );
			  		document.getElementById("title").value = response.evt_title;
			  		document.getElementById("datetime_s").value = response.evt_datetime_s;
			  		document.getElementById("datetime_e").value = response.evt_datetime_e;
			  		document.getElementById("location").value = response.evt_location;
			  		document.getElementById("contents").value = response.evt_contents;
			  	},
				error: function( jqXHR, textStatus, errorThrown ) {
					console.log('Status: ' + textStatus + "\nError: " + errorThrown);
				}
	        });
	        
	        $( "#dialog-view" ).dialog( "open" );
	    },
	    dayClick: function(date, jsEvent, view) {
	    	
	    },
	    eventDrop: function(event, delta, revertFunc) {

	        alert(event.title + " was dropped on " + event.start.format());

	        if (!confirm("Are you sure about this change?")) {
	            revertFunc();
	        }

	    }
	    
	});
	
});
</script>
<script>
  $(function() {
	  var evt_title = $( "#evt_title" ),
	 	  evt_category = $( "#evt_category" ),
	      evt_datetime_s = $( "#evt_datetime_s" ),
	      evt_datetime_e = $( "#evt_datetime_e" ),
	      evt_location = $( "#evt_location" ),
	      evt_contents = $( "#evt_contents" ),
	      allFields = $( [] ).add( evt_title ).add( evt_category ).add( evt_datetime_s ).add( evt_datetime_e ).add( evt_location ).add( evt_contents ),
	      tips = $( ".validateTips" );
 
	  function updateTips( t ) {
	      tips.text( t ).addClass( "ui-state-highlight" );
	      setTimeout(function() {
	        tips.removeClass( "ui-state-highlight", 1500 );
	      }, 500 );
	  }
	 
	  function checkLength( o, n, min, max ) {
	      if ( o.val().length > max || o.val().length < min ) {
	        o.addClass( "ui-state-error" );
	        updateTips( "Length of " + n + " must be between " +
	          min + " and " + max + "." );
	        return false;
	      } else {
	        return true;
	      }
	  }
	 
	  function checkNull( o, n ) {
	  		if ( o.val().length == 0 ) {
	          o.addClass( "ui-state-error" );
	          updateTips( "Please, enter a " + n + "." );
	          return false;
	        } else {
	          return true;c
	        }
	  }
 	
	  $( "#dialog-message" ).dialog({
	    	autoOpen: false,
	        modal: true,
	        buttons: {
	          Ok: function() {
	        	$( "#dialog-form" ).dialog( "close" );
	            $( this ).dialog( "close" );
	            location.reload();
	          }
	        }
	  });
	    
	  $( "#dialog-form" ).dialog({
	      autoOpen: false,
	      show: {
	          effect: "blind",
	          duration: 300
	        },
	      height: 550,
	      width: 400,
	      modal: true,
	      buttons: {
	        "Create an event": function() {
	          var bValid = true;
	          allFields.removeClass( "ui-state-error" );
	 			
	          bValid = bValid && checkNull( evt_title, "title of event");
	          bValid = bValid && checkNull( evt_datetime_s, "start date of event");
	          bValid = bValid && checkNull( evt_datetime_e, "end date of event");
	           
	          if ( bValid ) {
	            /* $( "#users tbody" ).append( "<tr>" +
	              "<td>" + name.val() + "</td>" +
	              "<td>" + email.val() + "</td>" +
	              "<td>" + password.val() + "</td>" +
	            "</tr>" ); */
	            $.ajax({
	    			url: "<c:out value='${context_name}'/>/user/schedule/scheduleAddProc.do",
	    		  	type: "POST",
	    		  	dataType: "jsonp",
	    		  	jsonp: "jsoncallback",
	    			data: $("form#evtFrm").serialize(),
	    		  	success: function( response ) {
	    		  		console.log(response.result_code);
	    		  		if (response.result_code == "E40007") {
	    		  			user_id.addClass( "ui-state-error" );
	    			        updateTips( response.result_msg );
	    		  		} else {
	    		  			$( "#dialog-message" ).append("<p>" + 
		    		  						"<span class='ui-icon ui-icon-circle-check' style='float:left; margin:0 7px 50px 0;''></span>" +
		    		  						response.result_msg + 
		    		    		  		  	"</p>");
	    		  			$( "#dialog-message" ).dialog( "open" );
	    		  			//$( "#errorDiv" ).append("");
	    		  		}
	    		  	},
	    			error: function( jqXHR, textStatus, errorThrown ) {
	    				//$.mobile.hidePageLoadingMsg();
	    				console.log('Status: ' + textStatus + "\nError: " + errorThrown);
	    			}
	    		});
	          }
	        },
	        Cancel: function() {
	          $( this ).dialog( "close" );
	        }
	      },
	      close: function() {
	        allFields.val( "" ).removeClass( "ui-state-error" );
	      }
	  });
    
	  $( "#dialog-view" ).dialog({
	        autoOpen: false,
	        show: {
	            effect: "blind",
	            duration: 300
	          },
	        height: 550,
	        width: 400,
	        modal: true,
	        buttons: {
	            Close: function() {
	              $( this ).dialog( "close" );
	              document.getElementById("title").value = "";
	  	  		document.getElementById("datetime_s").value = "";
	  	  		document.getElementById("datetime_e").value = "";
	  	  		document.getElementById("location").value = "";
	  	  		document.getElementById("contents").value = "";
	            }
	          },
        	close: function() {
            	document.getElementById("title").value = "";
    	  		document.getElementById("datetime_s").value = "";
    	  		document.getElementById("datetime_e").value = "";
    	  		document.getElementById("location").value = "";
    	  		document.getElementById("contents").value = "";
            }
      });
	  
	 /*  $("#new").button({
		    icons: {
		        primary: "ui-icon-document"
		    }
		}).click(function() {
			$( "#dialog-form" ).dialog( "open" );
		}); */
  });
  </script>

</head>
<body>
<!-- calendar -->
<div id='calendar'></div>

<div id="dialog-form" title="Create new event">
  <p class="validateTips">All form fields are required.</p>
 
  <form id="evtFrm" method="post">
  <input type="hidden" name="token_key" value="<%=request.getAttribute("token_key") %>" />
  <input type="hidden" name="student_id" value="<c:out value='${userEntity.user_id }'/>" />
  <fieldset>
  	<label for="title">Title</label>
    <input type="text" name="evt_title" id="evt_title" class="text ui-widget-content ui-corner-all" />
    <label for="category">Category</label>
    <input type="text" name="evt_category" id="evt_category" value="" class="text ui-widget-content ui-corner-all" />
    <label for="sdate">State date</label>
    <input type="datetime-local" name="evt_datetime_s" id="evt_datetime_s" value="" step="1800" class="text ui-widget-content ui-corner-all" />
    <label for="sdate">End date</label>
    <input type="datetime-local" name="evt_datetime_e" id="evt_datetime_e" value="" step="1800" class="text ui-widget-content ui-corner-all" />
    <label for="location">Location</label>
    <input type="text" name="evt_location" id="evt_location" value="" class="text ui-widget-content ui-corner-all" />
    <label for="location">Contents</label>
    <textarea name="evt_contents" id="evt_contents" style="width: 360px; height: 100px;" class="text ui-widget-content ui-corner-all" ></textarea>
  </fieldset>
  </form>
</div>

<div id="dialog-view" title="View event">
  <form id="evtView" method="post">
  <fieldset>
  	<label for="title">Title</label>
    <input type="text" name="_title" id="title" readonly="readonly" class="text ui-widget-content ui-corner-all" />
    <label for="category">Category</label>
    <input type="text" name="category" id="category" value="" readonly="readonly" class="text ui-widget-content ui-corner-all" />
    <label for="sdate">State date</label>
    <input type="datetime-local" name="datetime_s" id="datetime_s" readonly="readonly" value="" step="1800" class="text ui-widget-content ui-corner-all" />
    <label for="sdate">End date</label>
    <input type="datetime-local" name="datetime_e" id="datetime_e" readonly="readonly" value="" step="1800" class="text ui-widget-content ui-corner-all" />
    <label for="location">Location</label>
    <input type="text" name="location" id="location" value="" readonly="readonly" class="text ui-widget-content ui-corner-all" />
    <label for="location">Contents</label>
    <textarea name="contents" id="contents" style="width: 360px; height: 100px;" class="text ui-widget-content ui-corner-all" readonly="readonly"></textarea>
  </fieldset>
  </form>
</div>

<div id="dialog-message" title="New event created">
</div>
</body>
</html>
