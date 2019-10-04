<%
set pgcounter=server.createobject("MSWC.pagecounter")
pgcounter.pagehit()
N=pgcounter.hits()
%>
<h1>THIS PAGE HAS BEEN VISITED <%=N%> TIMES.</h1>