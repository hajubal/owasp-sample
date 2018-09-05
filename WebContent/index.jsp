<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    %><%@ taglib uri="http://www.owasp.org/index.php/ESAPI" prefix="esapi" 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script src="http://xss.rocks/xss.js"></script> -->
</head>
<body>
<script>

var d = "<esapi:encodeForHTML>/index.jsp;;";;alert(1052);;s="?b=8&dt=bo&dm=l</esapi:encodeForHTML>";

//var d = "/index.jsp;;";;alert(1052);;s="?b=8&dt=bo&dm=l";

function movePage(str) {
  console.log(str);
  
  window.location = str;
}

</script>
<input value="1" type="button" onclick="movePage('/index.jsp;;";;alert(1052);;s="?b=8&dt=bo&dm=l')"/>
<input value="2" type="button" onclick="movePage('<esapi:encodeForJavaScript>/index.jsp;;";;alert(1052);;s="?b=8&dt=bo&dm=l</esapi:encodeForJavaScript>')"/>
<input value="3" type="button" onclick="movePage('<esapi:encodeForURL>/index.jsp</esapi:encodeForURL>')"/>
<input value="4" type="button" onclick="movePage('<esapi:encodeForHTML>/index.jsp;;";;alert(1052);;s="?b=8&dt=bo&dm=l</esapi:encodeForHTML>')"/>
</body>
</html>