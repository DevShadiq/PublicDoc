<%--
Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
request.setAttribute("year", sdf.format(new java.util.Date()));
request.setAttribute("tomcatUrl", "https://tomcat.apache.org/");
request.setAttribute("tomcatDocUrl", "/docs/");
request.setAttribute("tomcatExamplesUrl", "/examples/");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title><%=request.getServletContext().getServerInfo() %></title>
        <link href="favicon.ico" rel="icon" type="image/x-icon" />
        <link href="tomcat.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        
		<% response.sendRedirect("/app/r/tmsbd/tms16333/home"); %>

        <%
        String requestURI = request.getRequestURI(); // Get the full URI from the request
        if (requestURI.endsWith("/app1")) {
            response.sendRedirect("/app/r/tmsbd/tms16333/home");
        } else if (requestURI.endsWith("/app2")) {
            response.sendRedirect("/app/r/vms/vat16333/home");
        } else {
            out.println("<h1>Welcome to the Application Hub</h1>");
            out.println("<p>Select an application:</p>");
            out.println("<ul>");
            out.println("<li><a href='/app1'>Application 1</a></li>");
            out.println("<li><a href='/app2'>Application 2</a></li>");
            out.println("</ul>");
        }
    %>
    




    </body>

</html>
