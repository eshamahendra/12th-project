<%
dim con,st,rs
set con=server.createobject("ADODB.connection")
st="provider=microsoft.jet.OLEDB.4.0; data source=C:\Inetpub\wwwroot\DOMINOS.mdb"
con.open st
set rs=server.createobject("ADODB.recordset")
rs.open "DOMINOS", con
e=request.form("n5")
e=trim(e)
found =0
do while not rs.eof
if rs("USERNAME")=e then
response.write(rs("PASSWORD"))
end if
rs.movenext
loop
rs.close
con.close
%>