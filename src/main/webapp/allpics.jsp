<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Administrator
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
        <style>
  
            ul{
                list-style-type:none;
                margin:100px;
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
                width: 200px;
                font-weight:bold;
                color:#FFFFFF;
                background-color:#98bf21;
                text-align: center;
                padding: 10px;
                text-decoration: none;
                text-transform: uppercase;

            }
            a:hover,a:active{
                background-color: #7A991A;

            }


        </style>
    </head>
    <body>
        <header>

        </header>


        <ul       list-style-type="none"
                  margin="50px"
                  padding="1cm"
                  overflow="hidden"
                  position="absolute"
                  left=170px"
                  top="35px"> 

            <li  float="left"><a href="/Instagrim/upload.jsp">Upload</a></li>

            <li   float="left"><a href="/Instagrim">Home</a></li>
        </ul>


        <article>

            <%
                java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");
                if (lsPics == null) {
            %>
            <p>No Pictures found</p>
           
            
            <%
            } else {
                Iterator<Pic> iterator;
                iterator = lsPics.iterator();
                while (iterator.hasNext()) {
                    Pic p = (Pic) iterator.next();
               System.out.println("get1");
            %>
            <div class="img">
                <div style="width:400px; height:400px;"><a href="/Instagrim/Image/<%=p.getSUUID()%>" ><img src="/Instagrim/Thumb/<%=p.getSUUID()%>"  width="100%" height="100%"></a></div>
                
             
            </div>
            <br/><%

                    }
                }
            %>
        </article>



    </body>
</html>
