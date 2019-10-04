<%
dim con, st, rs
x=request.form("p1")
x=trim(x)
y=request.form("p2")
y=trim(y)
z=request.form("p3")
z=trim(z)
w=request.form("p4")
w=trim(w)
set con=server.createobject("ADODB.connection")
st="provider=microsoft.jet.OLEDB.4.0; data source=C:\inetpub\wwwroot\DOMINOS.mdb"
con.open st
set rs=server.createobject("ADODB.recordset")
rs.open "FEEDBACK",con,2,2
rs.addnew
rs("FULL NAME")=x
rs("MOBILE NO")=y
rs("REMARKS")=z
rs("SUGGESTIONS")=w
rs.update
response.redirect("start.html")
rs.close
con.close
%>