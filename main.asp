<!DOCTYPE html> 
<html>
<head>
<title>jQuery Mobile Web App</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="jquery/jquery.mobile-1.4.5.min.css">
<link href="styles/custom.css" rel="stylesheet" type="text/css"/>
<script src="jquery/jquery-1.12.3.min.js" type="text/javascript"></script>
<script src="jquery/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>



<script>
/*
This section of code is to mock up the menu system.  In a live system, this would be generated based on data
pulled from the database.  Any combination of selections can be made and for this application the same set
of result data will be displayed.
*/

/*
This section populates the sample point menu based on the unit that was selected.  On a live system, each
unit will have it"s own set of unique sample points.
*/
$(document).ready(function(){
	$("#unit").change(function(){
		switch ($("#unit").val()){
		case "02":
			$("#code").children().remove();
			$("#code").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#code").append($("<option></option>").val("W-16 Naphtha").html("W-16 Overhead"));
			$("#code").append($("<option></option>").val("W-16 Diesel").html("W-16 Diesel"));
			$("#code").append($("<option></option>").val("W-27 Naphtha").html("W-27 Overhead"));
			$("#code").append($("<option></option>").val("W-27 Kerosene").html("W-27 Kerosene"));
			break;
		case "25":
			$("#code").children().remove();
			$("#code").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#code").append($("<option></option>").val("D-2504 Bottoms").html("D-2504 Bottoms"));
			$("#code").append($("<option></option>").val("D-2505 Side Draw").html("D-2505 Side Draw"));
			break;
		case "33":
			$("#code").children().remove();
			$("#code").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#code").append($("<option></option>").val("X-765 Product").html("X-765 Product"));
			$("#code").append($("<option></option>").val("D-457 Overhead").html("D-457 Overhead"));
			$("#code").append($("<option></option>").val("W-82 Bottoms").html("W-82 Bottoms"));
			$("#code").append($("<option></option>").val("W-82 Side Draw").html("W-82 Side Draw"));
			break;
		case "45":
			$("#code").children().remove();
			$("#code").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#code").append($("<option></option>").val("D-451 Kerosene").html("D-451 Kerosene"));
			$("#code").append($("<option></option>").val("D-457 Overhead").html("D-457 Overhead"));
			$("#code").append($("<option></option>").val("X-755 Product").html("X-755 Product"));
			break;
		default:
			$("#code").children().remove();
			$("#code").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			break;
		}
	});
});

$(document).ready(function(){
	$("#rptunit").change(function(){
		switch ($("#rptunit").val()){
		case "02":
			$("#rptcode").children().remove();
			$("#rptcode").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#rptcode").append($("<option></option>").val("W-16 Naphtha").html("W-16 Overhead"));
			$("#rptcode").append($("<option></option>").val("W-16 Diesel").html("W-16 Diesel"));
			$("#rptcode").append($("<option></option>").val("W-27 Naphtha").html("W-27 Overhead"));
			$("#rptcode").append($("<option></option>").val("W-27 Kerosene").html("W-27 Kerosene"));
			break;
		case "25":
			$("#rptcode").children().remove();
			$("#rptcode").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#rptcode").append($("<option></option>").val("D-2504 Bottoms").html("D-2504 Bottoms"));
			$("#rptcode").append($("<option></option>").val("D-2505 Side Draw").html("D-2505 Side Draw"));
			break;
		case "33":
			$("#rptcode").children().remove();
			$("#rptcode").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#rptcode").append($("<option></option>").val("X-765 Product").html("X-765 Product"));
			$("#rptcode").append($("<option></option>").val("D-457 Overhead").html("D-457 Overhead"));
			$("#rptcode").append($("<option></option>").val("W-82 Bottoms").html("W-82 Bottoms"));
			$("#rptcode").append($("<option></option>").val("W-82 Side Draw").html("W-82 Side Draw"));
			break;
		case "45":
			$("#rptcode").children().remove();
			$("#rptcode").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			$("#rptcode").append($("<option></option>").val("D-451 Kerosene").html("D-451 Kerosene"));
			$("#rptcode").append($("<option></option>").val("D-457 Overhead").html("D-457 Overhead"));
			$("#rptcode").append($("<option></option>").val("X-755 Product").html("X-755 Product"));
			break;
		default:
			$("#rptcode").children().remove();
			$("#rptcode").append($("<option></option>").val("NONE").html("Select Sample Point").attr({"disabled": true, "selected": true}));
			break;
		}
	});
});

/*
This section populates the sample point menu based on the unit that was selected.  On a live system, each
unit will have it"s own set of unique sample points.
*/
$(document).ready(function(){
	$("#test").change(function(){
		switch ($("#test").val()){
		case "D-4259":
			$("#det").children().remove();
			$("#det").append($("<option></option>").val("NONE").html("Select Determinant").attr({"disabled": true, "selected": true}));
			$("#det").append($("<option></option>").val("API Gravity").html("API Gravity"));
			$("#det").append($("<option></option>").val("Density").html("Density"));
			break;
		case "D-86":
			$("#det").children().remove();
			$("#det").append($("<option></option>").val("NONE").html("Select Determinant").attr({"disabled": true, "selected": true}));
			$("#det").append($("<option></option>").val("IBP").html("Initial Boiling Point"));
			$("#det").append($("<option></option>").val("10%").html("10% Point"));
			$("#det").append($("<option></option>").val("50%").html("50% Point"));
			$("#det").append($("<option></option>").val("90%").html("90% Point"));
			$("#det").append($("<option></option>").val("FBP").html("Final Boiling Point"));
			break;
		case "D-93":
			$("#det").children().remove();
			$("#det").append($("<option></option>").val("NONE").html("Select Determinant").attr({"disabled": true, "selected": true}));
			$("#det").append($("<option></option>").val("Flash").html("Flash Point"));
			break;
		default:
			$("#det").children().remove();
			$("#det").append($("<option></option>").val("NONE").html("Select Determinant").attr({"disabled": true, "selected": true}));
			break;
		}
	});
});

</script>

<script dir="ltr">

function dispdata(unit, code, test, det){
    document.getElementById("dataframe").src="data.asp?unit="+unit+"&code='"+code+"'&test='"+test+"'&det='"+det+"'";
}

function dispchart(){
	document.getElementById("dataframe").src="chart.html";
}

function logout(){
	document.getElementById("username").value = "";
	document.getElementById("passwd").value = "";
}

</script>

</head>

<body> 

<!--
<div id="login" data-role="page" data-theme="b">
  <form method="post" action="temp.asp">
	<label for="username">Username</label>
    <input type="text" name="username" id="username">
	<label for="passwd">Password</label>
    <input type="password" name="passwd" id="passwd">
    <a href="#main" class="ui-btn">Login</a>
  </form>
 </div>
/-->

<div id="main" data-role="page" data-theme="b">
    <div data-role="content">
        <ul data-role="listview" data-theme="c">
            <li><a href="#search" data-transition="slide">Search Data</a></li>
            <li><a href="#about" data-transition="slide">About Us</a></li>
            <li><a href="#contact" data-transition="slide">Contact Info</a></li>
            <!--
            <li><a href="#login" data-transition="slide" onclick="logout()">Logout</a></li>
            /-->
        </ul>
    </div>
</div>

<div id="search" data-role="page" data-theme="b">
    <div data-role="content">
        <ul data-role="listview" data-theme="c">
            <li><a href="#trend" data-transition="slide">Result Trend</a></li>
            <li><a href="#report" data-transition="slide">Sample Report</a></li>
        </ul>
    </div>
</div>

<div id="trend" data-role="page" data-theme="b">
	<div data-role="header" data-theme="b">	
    <a href="#main" class="ui-btn" data-transition="slide" data-direction="reverse">Back</a>
	  <h3>Search Data</h3>
    </div>
	<div data-role="content">
      <form id="trendform">
      <select id="unit" name="unit">
      	<option value="NONE" disabled selected>Select Unit</option>
      	<option value="2">02</option>
      	<option value="25">25</option>
      	<option value="33">33</option>
      	<option value="45">45</option>
      </select>
      <select name="code" id="code">
      	<option value="NONE"  disabled selected>Select Sample Point</option>
      </select>
      <select id="test" name="test">
      	<option value="NONE" disabled selected>Select Test</option>
      	<option value="D-4259">API Gravity/Density</option>
      	<option value="D-86">Distillation</option>
      	<option value="D-93">Pensky Martens Flash</option>
      </select>
      <select id="det" name="det">
      	<option value="NONE"  disabled selected>Select Determinant</option>
      </select>
      <div id="trenddiv">
          <iframe id="dataframe" src="blank.html" frameborder="0">
          </iframe>
	  </div>
      <table id="radioline">
      	<tr>
        	<td width="50%">
      			<input type="radio" name="display" id="chart"  onclick="dispchart()"/>
     			<label for="chart"">Chart</label>
			</td>
        	<td width="50%">
      			<input type="radio" name="display" id="data" onclick="dispdata(document.getElementById('unit').value, document.getElementById('code').value, document.getElementById('test').value, document.getElementById('det').value)"/>
     			<label for="data"">Data</label>
        	</td>
        </tr>
      </table>
	</form>
    </div>
</div>

<div id="report" data-role="page" data-theme="b">
	<div data-role="header" data-theme="b">	
    <a href="#main" class="ui-btn" data-transition="slide" data-direction="reverse">Back</a>
	  <h3>Search Data</h3>
    </div>
	<div data-role="content">
        <form>
          <select id="rptunit" name="rptunit">
            <option value="NONE" disabled selected>Select Unit</option>
            <option value="02">02</option>
            <option value="25">25</option>
            <option value="33">33</option>
            <option value="45">45</option>
          </select>
          <select name="rptcode" id="rptcode">
            <option value="NONE"  disabled selected>Select Sample Point</option>
          </select>
          <table>
            <tr>
                <td>Date:</td>
                <td><input id="start" name="start" type="date"/></td>
            </tr>
            <tr>
			  <td>Time:</td>
              <td><input id="end" name="end" type="time"/></td>
            </tr>
          </table>
        </form>
      <div id="rptdiv">
          <iframe id="rptframe" src="report.html">
          </iframe>
	  </div>
	</div>
</div>

<div id="about" data-role="page" data-theme="b">
	<div data-role="header" data-theme="b">	
    <a href="#main" class="ui-btn" data-transition="slide" data-direction="reverse">Back</a>
      <h3>About Us</h3>
    </div>
	<div data-role="content">
	  <p> LabData Mobile is a company born out of the need to provide mobile solutions for laboratory data delivery.</p>
	</div>
</div>

<div id="contact" data-role="page" data-theme="b">

	<div data-role="header" data-theme="b">	
    <a href="#main" class="ui-btn" data-transition="slide" data-direction="reverse">Back</a>
	  <h3>Contact Info</h3>
    </div>
	<div data-role="content">
	  Developer - Kenneth Hart<br>
      Email - kenneth.hart@smail.rasmussen.edu
    </div>
</div>
</body>

<script>

//This is where I set the element widths
//This is just some global css udpates
	$("#trenddiv").css({"padding":"10"});
	$("#rptdiv").css({"padding":"10"});

//This is where I set the element widths
	$("#trenddiv").width($("#main").width()-30);
	
	$("#dataframe").width($("#trenddiv").width()-3);
	
	$("#rptdiv").width($("#main").width()-30);
	
	$("#rptframe").width($("#rptdiv").width()-3);
	
	
//This is where I set the element heights
	$("#trenddiv").height($("#main").height()-380);
	
	$("#dataframe").height($("#trenddiv").height());
	
	$("#rptdiv").height($("#main").height()-380);
	
	$("#rptframe").height($("#rptdiv").height());
	
	$("#radioline").width($("#main").width());
</script>
</html>
