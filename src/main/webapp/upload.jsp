<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page import="uk.ac.dundee.computing.aec.instagrim.models.User"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <style>

            ul{
                list-style-type: none;
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
            *{
                padding:0px;
                margin:0px;
            }
            body{
                font-family:Arial, Helvetica, sans-serif;
                background:url(background.jpg);
                background-repeat: no-repeat;
                font-size:13px;
                background-attachment:fixed;
                background-position:50% 80%;

            }
            img{
                border:0;
            }
            .lg{width:468px; height:468px; margin:100px auto; background:url(user.jpg) no-repeat;
                border:2px ;
                border-radius:25px;
                -moz-border-radius:25px; /* Old Firefox */
                position:absolute;
                left:400px;
                top:70px;}
            .lg_top{ height:200px; width:468px;
            }
            .lg_main{width:400px; height:180px; margin:0 25px;
            }
            .lg_m_1{
                width:290px;
                height:100px;
                padding:60px 55px 20px 55px;
                border:2px ;
                border-radius:25px;
                -moz-border-radius:25px; /* Old Firefox */

            }
            .ur{
                height:37px;
                border:0;
                color:#666;
                width:236px;
                margin:4px 28px;
                padding-left:10px;
                font-size:16pt;
                font-family:Arial, Helvetica, sans-serif;
            }
            .pw{
                height:37px;
                border:0;
                color:#666;
                width:236px;
                margin:4px 28px;

                padding-left:10px;
                font-size:16pt;
                font-family:Arial, Helvetica, sans-serif;
            }
            .bn{width:330px; height:72px; background:url(enter.jpg) no-repeat; border:0; display:block; font-size:18px; color:#FFF; font-family:Arial, Helvetica, sans-serif; font-weight:bolder;
                border:2px solid;
                border-radius:25px;
                -moz-border-radius:25px; /* Old Firefox */}
            .lg_foot{
                height:80px;
                width:330px;
                padding: 6px 68px 0 68px;
            }

        </style>
    </head>
    <body>


        <ul>
            <li><a href="upload.jsp">Upload</a></li>
            <li><a href="/Instagrim">Home</a></li>
        </ul>




        <div class="lg">
            <form enctype="multipart/form-data" action="Image" method="POST">
                <div class="lg_top"></div>
                <div class="lg_main">
                    <div class="lg_m_1">
                        File to upload: <input type="file" name="upfile" class="ur"/><br/>
                    </div>
                </div>
                <div class="lg_foot">
                    <br/>
                    <input type="submit" value="upload" class="ur"/> t
                </div>
            </form>
        </div>

    </body>
</html>
