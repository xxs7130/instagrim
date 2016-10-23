<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : nanxiang
--%>


<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>

            ul{
                list-style-type:none;
                margin:50px;
                padding: 1cm;
                overflow: hidden;
                position:absolute;
                left:170px;
                top:35px;

            }
            li{
                float:left;
            }
            a:link,a:visited{
                display:block;
                width:200px;
                font-weight:bold;
                color:#FFFFFF;
                background-color:#98bf21;
                text-align: center;
                padding: 10px;
                text-decoration:none;
                text-transform: uppercase;

            }
            a:hover,a:active{
                background-color: #7A991A;

            }
            body{
                background-image:url('background.jpg');
                background-repeat:no-repeat;
                background-attachment:fixed;
                background-position:50% 80%;
            }
        </style>
    </head>
    <body>
        <header>

        </header>
        <nav>
            <ul>



                <li><a href="upload.jsp">Upload</a></li>
                    <%

                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>

                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>

                <li><a href="profile.jsp">profile</a></li>    
                <li><a href="/Instagrim/Logout">logout</a></li>
                    <%}
                    } else {
                    %> 
                <li><a href="register.jsp">Register</a></li>

                <li><a href="login.jsp">Login</a></li>
                    <%
                        }
                    %>

                <li><a href="/Instagrim">Home</a></li>
                <li><a href="/Instagrim/allpics">allpics</a></li>






            </ul>






    </body>
</html>
