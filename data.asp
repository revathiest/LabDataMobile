<%
response.expires=-1

Dim oConn, oRs
Dim qry, connectstr
Dim db_name, db_username, db_userpassword
Dim db_server

db_server = "amwa-db.database.windows.net"
db_name = "AMWA-DB"
db_username = "khart@AMWA-DB"
db_userpassword = "1Hunglow"
fieldname = "your_field"
tablename = "your_table"
    
unit=Request.querystring("unit")
code=Request.querystring("code")
method=Request.querystring("test")
det=Request.querystring("det")

sqlstr = "SELECT * FROM results WHERE unit = "&unit&" AND code = "&code&" AND method = "&method&" AND determinant = "&det

connectstr = "Driver={SQL Server};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword

'response.write("<p>Creating Connection</p>")
set oConn = Server.CreateObject("ADODB.Connection")

'response.write("<p>Opening Database</p>")
oConn.Open(connectstr)

'response.write("<p>Creating Recordset</p>")
set rs = Server.CreateObject("ADODB.recordset")

'response.write("<p>Pulling data into recordset</p>")
rs.Open sqlstr, oConn

'response.write("<p>Done</p>")
'response.write(unit & "<br>")
'response.write(code & "<br>")
'response.write(method & "<br>")
'response.write(det & "<br>")

response.write("<!DOCTYPE html>")
response.write("<html>")
response.write("<head>")

response.write("<link rel=""stylesheet"" type=""text/css"" href=""jquery/jquery.mobile-1.4.5.min.css"">")
response.write("<link href=""styles/custom.css"" rel=""stylesheet"" type=""text/css""/>")
response.write("<script src=""jquery/jquery-1.12.3.min.js"" type=""text/javascript""></script>")
response.write("<script src=""jquery/jquery.mobile-1.4.5.min.js"" type=""text/javascript""></script>")
response.write("</head>")
response.write("<body><div data-role=""page"" data-theme=""b"">")
response.write("<table>")
    response.write("<tr><b><td>Sample Point</td>")
    response.write("<td>Test</td>")
    response.write("<td>Determinant</td>")
    response.write("<td>Date/Time</td>")
    response.write("<td>Result</td></tr>")
do until rs.EOF
    response.write("<td width=""20%"">" & rs.Fields("code") & "</b></td>")
    response.write("<td width=""20%"">" & rs.Fields("method") & "</td>")
    response.write("<td width=""20%"">" & rs.Fields("determinant") & "</td>")
    response.write("<td width=""30%"">" & rs.Fields("date") & "</td>")
    response.write("<td width=""10%"">" & rs.Fields("result") & "</td></tr>")
  rs.MoveNext
loop
response.write("</table>")
response.write("<div><body>")
response.write("</html>")
%> 