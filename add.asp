<%
dim con, st, rs
a=request.form("n1")
a=trim(a)
b=request.form("n2")
b=int(b)
c=request.form("n3")
c=trim(c)
d=request.form("n4")
d=trim(d)
e=request.form("n5")
e=trim(e)
f=request.form("n6")
f=trim(f)
set con=server.createobject("ADODB.connection")
st="provider=microsoft.jet.OLEDB.4.0; data source=C:\inetpub\wwwroot\DOMINOS.mdb"
con.open st
set rs=server.createobject("ADODB.recordset")
rs.open "DOMINOS",con,2,2
rs.addnew
rs("FULL NAME")=a
rs("MOBILE NO")=b
rs("ADDRESS")=c
rs("E-MAIL ID")=d
rs("USERNAME")=e
rs("PASSWORD")=f
rs.update
response.redirect("congo.html")
rs.close
con.close
%>
