<%
set myad=server.createobject("MSWC.adrotator")
myad.clickable=true
myad.border=1
myad.targetframe="target=_blank"
response.write(myad.getadvertisement("adrotator.txt"))
%>
