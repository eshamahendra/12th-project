<html>
<body>
<%
set mypagecounter=server.createobject("MSWC.pagecounter")
mypagecounter.pagehit()
n=mypagecounter.hits()
%>
<h1>YOU ARE THE <%=n%> USER.</h1>
</body>
</html>


