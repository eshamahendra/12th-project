<html>
<head>
<title>FEEDBACK</title>
<style>
body {background-image:url(feedback.jpg);background-attachment:fixed;background-repeat:no-repeat}
p {text-shadow:3px 4px 3px purple;font-size:150%}
</style>
</head>
<body>
<font color="blue">
<p>
<%
dim vote
vote=request.querystring("opinion")
if vote="good" then
mycount.increment("goodcounter")
elseif vote="excellent" then
mycount.increment("excellentcounter")
elseif vote="outstanding" then
mycount.increment("outstandingcounter")
end if
%>
<font face="kristen ITC" color="green">
<h1>GIVE YOUR FEEDBACK</h1>
</font>
<font face="castellar" color="pink">
<form name="frm" method="get" action="feedback.asp">
<input type="radio" name="opinion"> GOOD
<img src="good.jpg" width="100" height="200">
<br>
<input type="radio" name="opinion">EXCELLENT
<img src="excellent.jpg" width="100" height="200">
<br>
<input type="radio" name="opinion">OUTSTANDING
<img src="outstanding.jpg" width="100" height="200">
<br>
<input type="submit" value="GIVE MY OPINION">
</form>
</font>
<font face="book antiqua" color="blue">
<h1>VOTE TALLY:</h1>
<table border="2">
<tr><td width="100">GOOD:
<td width="30"><%=mycount.Get("goodcounter") %></tr>
<tr><td>EXCELLENT:<td><%=mycount.Get("excellentcounter") %>
</tr>
<tr><td>OUTSTANDING:<td><%=mycount.Get("outstandingcounter")%>
</tr>
</table>
</font>
<br><center>
<h2>This page has been visited<%=mycount.increment("pgcount") %> times.</h2>
</center>
</p>
</font>
</body>
</html>