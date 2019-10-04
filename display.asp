<%
dim con, st, rs
set con=server.createobject("ADODB.connection")
st="provider=microsoft.jet.OLEDB.4.0; data source=C:/inetpub/wwwroot/emp.mdb"
con.open st
set rs=server.createobject("ADODB.recordset")
rs.open "CEMP" , con
do while not rs.eof
response.write(rs("empid")& " "& rs("ename")&" "&rs("shiftid")& " "&rs("joindate")& " "&rs("designation")&"<br>")
rs.movenext
loop
rs.close
con.close
%>