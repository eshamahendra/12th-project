<%
a=request.form("t1")
a=trim(a)
b=request.form("t2")
b=trim(b)
c=request.form("t3")
c=trim(c)
d=request.form("t4")
d=trim(d)
e=request.form("t5")
e=trim(e)
dim con, st, rs
set con=server.createobject("ADODB.connection")
st="provider=microsoft.jet.OLEDB.4.0; data source=C:/inetpub/wwwroot/emp.mdb"
con.open st
set rs=server.createobject("ADODB.RECORDSET")
rs.open "CEMP", con,2,2
rs.addnew
rs("empid")=a
rs("ename")=b
rs("shiftid")=c
rs("joindate")=d
rs("designation")=e
rs.update
response.write("RECORD ADDED")
rs.close
con.close
%>
