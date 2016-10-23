<%-- 
    Document   : profile
    Created on : 2016-10-20, 18:09:08
    Author     : nanxiang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <style>

            body { 
                font: normal 11px auto sans-serif; 
                color: #4f6b72; 
                background: #E6EAE9; 
                background-image:url('background.jpg');
                background-repeat:no-repeat;
                background-attachment:fixed;
                background-position:50% 80%;
            } 


            a { 
                color: #c75f3e; 
            } 

            #mytable { 
                width: 700px; 
                padding: 0; 
                margin: 0; 
                table-layout:fixed ; 
            } 

            caption { 
                padding: 0 0 5px 0; 
                width: 700px;      
                text-align: right; 
            } 

            th { 
                color: #4f6b72; 
                border-top: 0; 
                border-left: 0; 
                border-right: 1px solid #C1DAD7; 
                letter-spacing: 2px; 
                text-transform: uppercase; 
                text-align: left; 
                padding: 6px 6px 6px 12px; 
                background: #CAE8EA; 
            } 

            th.nobg { 
                border-top: 0; 
                border-left: 0; 
                border-right: 1px solid #C1DAD7; 
                background: none; 
            } 

            td { 
                border-top: 0; 
                border-left: 0; 
                border-right: 1px solid #C1DAD7; 
                background: #C2DFFF; 
                width:100px;
                padding: 6px 6px 6px 12px; 
                color: #4f6b72; 
            } 


            td.alt { 
                background: #fff; 
                color: #797268; 
                width:100px;
            } 

            th.spec { 
                border-top: 0; 
                border-left: 0; 
                border-right: 1px solid #C1DAD7; 
                background: #C2DFFF;
            } 

            th.specalt { 
                border-left: 1px solid #C1DAD7; 
                border-top: 0; 
                background: #fff; 
                color: #797268; 
            } 
            /*---------for IE 5.x bug*/ 
            html>body td{ font-size:15px;} 

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
        </style>
    </head>




    <body>




        <%
            String username = (String) session.getAttribute("username");
            String firstname = (String) session.getAttribute("firstname");
            String lastname = (String) session.getAttribute("lastname");
            String email = (String) session.getAttribute("email");
            String address = (String) session.getAttribute("address");
        %>


        <ul>
            <li><a href="upload.jsp">Upload</a></li>
            <li><a href="/Instagrim">Home</a></li>
            <li><a href="setprofile.jsp">setting</a></li>
            <li><a href="setpass.jsp">changepass</a></li>
        </ul>







        <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series"
               align="center" valign="middle" style="top:30%;position:absolute;left:20%;"
               font-size:20px
               > 


            <tr> 
                <th  class="nobg">username</th> 

                <th  ><div><%=username%></div><br></th> 
            </tr> 

            <tr> 
                <th scope="row" class="spec">firstname</th> 
                <td> <div><%=firstname%></div><br></td> 

            </tr> 
            <tr> 
                <th scope="row"  class="specalt">lastname</th> 
                <td class="alt"><div><%=lastname%></div><br></td> 
            </tr> 
            <tr> 
                <th scope="row"  class="spec">email</th> 
                <td><div><%=email%></div><br></td> 

            </tr> 
            <tr> 
                <th scope="row"  class="specalt">address</th> 
                <td class="alt"><div><%=address%></div><br></td> 

            </tr> 
        </table> 


    </table>




</body>
</html>
