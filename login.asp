<%
dim con, str, rs
set con=server.createobject("ADODB.connection")
str="provider=microsoft.jet.OLEDB.4.0; data source=C:\inetpub\wwwroot\DOMINOS.mdb"
con.open str
set rs=server.createobject("ADODB.recordset")
rs.open "DOMINOS", con
found=0
e=request.form("n1")
e=trim(e)
f=request.form("n2")
f=trim(f)
while not rs.eof
if rs("USERNAME")=e and rs("PASSWORD")=f then
response.redirect("menu card.html")
found=1
end if
rs.movenext
wend
if found=0 then
response.write("LOGIN UNSUCCESSFUL, USERNAME OR PASSWORD INCORRECT")
end if
rs.close
%>