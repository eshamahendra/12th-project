<html>
<head>
<style type="text/css">
body {background-image:url(or.jpg);background-attachment:fixed;background-repeat:no-repeat;text-shadow:3px 4px 3px yellow}
p {font-size:250% ; font-family:"lucida handwriting";color:red}
</style>	
</head>
<body vlink="white">
<%
pc=request.form("n")
pc=trim(pc)
qty=request.form("s")
qty=int(qty)
dim con, st, rs
set con=server.createobject("ADODB.connection")
st="provider=microsoft.jet.OLEDB.4.0; data source=C:\Inetpub\wwwroot\DOMINOS.mdb"
con.open st
set rs=server.createobject("ADODB.recordset")
rs.open "PORDER", con, 2, 2
found=0
do while not rs.eof
if rs("CODE")=pc then
p=rs("PRODUCT NAME")
q=rs("PRODUCT DESCRIPTION")
r=rs("PRODUCT PRICE")
r=int(r)
bill=r*qty
found=1
exit do
end if
rs.movenext
loop
rs.close
con.close
%>
<%
if found=1 then 
%>
<BODY>
<form method="post" action="order.asp">
<p>
PRODUCT NAME:<input type="text" name="p" value="<%=p%>"><br>
PRODUCT DESCRIPTION:<input type="text" name="q" value="<%=q%>"><br>
PRODUCT PRICE:<input type="text" name="r" value="<%=r%>"><br>
BILLING AMOUNT:<input type="text" name="t" value="<%=bill%>"
<br>
<hr>
<%
response.write("<P>PLEASE CASH ON DELIVERY TO THE DELIVERY BOY</P>")
%>
</form>
<%
end if
%>
</P>
<CENTER>
<p>
<a href="start.html" target="_blank">THANKS!</a>
</p>
</CENTER>
</body>
</html>
