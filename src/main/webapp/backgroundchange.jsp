<%@page import="java.util.Iterator"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.Pic"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.Pic"%>
<!DOCTYPE HTML>

    <head>
        <meta charset="UTF-8">
        <title>Instagrim</title>
        <style type="text/css">

            html,body {
                height: 100%;
            }
            /*???????????????*/
            img.bg {
                min-height: 100%;
                min-width: 1024px;
                width: 100%;
                height: auto !important;
                height: 100%;
                position: fixed;
                top: 0;
                left: 50%;
                z-index:1;
                -webkit-transform: translateX(-50%);
                -moz-transform: translateX(-50%);
                -o-transform: translateX(-50%);
                -ms-transform: translateX(-50%);
            }
            /*???????????????????*/
            /* Slide Left */

            @-webkit-keyframes 'slideLeft' {
                0% { left: -500px; }
                100% { left: 0; }
            }
            @-moz-keyframes 'slideLeft' {
                0% { left: -500px; }
                100% { left: 0; }
            }
            @-o-keyframes 'slideLeft' {
                0% { left: -500px; }
                100% { left: 0; }
            }
            @-ms-keyframes 'slideLeft' {
                0% { left: -500px; }
                100% { left: 0; }
            }
            @keyframes 'slideLeft' {
                0% { left: -500px; }
                100% { left: 0; }
            }
            /*???????????????????*/
            /* Slide Bottom */

            @-webkit-keyframes 'slideBottom' {
                0% { top: 350px; }
                100% { top: 0; }
            }
            @-moz-keyframes 'slideBottom' {
                0% { top: 350px; }
                100% { top: 0; }
            }
            @-ms-keyframes 'slideBottom' {
                0% { top: 350px; }
                100% { top: 0; }
            }
            @-o-keyframes 'slideBottom' {
                0% { top: 350px; }
                100% { top: 0; }
            }
            @keyframes 'slideBottom' {
                0% { top: 350px; }
                100% { top: 0; }
            }
            /*????????????????*/
            /* Zoom In */

            @-webkit-keyframes 'zoomIn' {
                0% { -webkit-transform: scale(0.1); }
                100% { -webkit-transform: none; }
            }
            @-moz-keyframes 'zoomIn' {
                0% { -moz-transform: scale(0.1); }
                100% { -moz-transform: none; }
            }
            @-ms-keyframes 'zoomIn' {
                0% { -ms-transform: scale(0.1); }
                100% { -ms-transform: none; }
            }
            @-o-keyframes 'zoomIn' {
                0% { -o-transform: scale(0.1); }
                100% { -o-transform: none; }
            }
            @keyframes 'zoomIn' {
                0% { transform: scale(0.1); }
                100% { transform: none; }
            }
            /*????????????????*/
            /* Zoom Out */

            @-webkit-keyframes 'zoomOut' {
                0% { -webkit-transform: scale(2); }
                100% { -webkit-transform: none; }
            }
            @-moz-keyframes 'zoomOut' {
                0% { -moz-transform: scale(2); }
                100% { -moz-transform: none; }
            }
            @-ms-keyframes 'zoomOut' {
                0% { -ms-transform: scale(2); }
                100% { -ms-transform: none; }
            }
            @-o-keyframes 'zoomOut' {
                0% { -o-transform: scale(2); }
                100% { -o-transform: none; }
            }
            @keyframes 'zoomOut' {
                0% { transform: scale(2); }
                100% { transform: none; }
            }
            /*????????????*/
            /* Rotate */

            @-webkit-keyframes 'rotate' {
                0% { -webkit-transform: rotate(-360deg) scale(0.1); }
                100% { -webkit-transform: none; }
            }
            @-moz-keyframes 'rotate' {
                0% { -moz-transform: rotate(-360deg) scale(0.1); }
                100% { -moz-transform: none; }
            }
            @-ms-keyframes 'rotate' {
                0% { -ms-transform: rotate(-360deg) scale(0.1); }
                100% { -ms-transform: none; }
            }
            @-o-keyframes 'rotate' {
                0% { -o-transform: rotate(-360deg) scale(0.1); }
                100% { -o-transform: none; }
            }
            @keyframes 'rotate' {
                0% { transform: rotate(-360deg) scale(0.1); }
                100% { transform: none; }
            }
            /*?????????????*/
            @-webkit-keyframes 'notTarget' {
                0% { z-index: 75; }
                100% { z-index: 75; }
            }
            @-moz-keyframes 'notTarget' {
                0% { z-index: 75; }
                100% { z-index: 75; }
            }
            @-ms-keyframes 'notTarget' {
                0% { z-index: 75; }
                100% { z-index: 75; }
            }
            @-o-keyframes 'notTarget' {
                0% { z-index: 75; }
                100% { z-index: 75; }
            }
            @keyframes 'notTarget' {
                0% { z-index: 75; }
                100% { z-index: 75; }
            }



            .slider {
                position: absolute;
                width: 100%;
                text-align: center;
                z-index: 9999;
                bottom: 100px;
            }
            .slider li {
                display: inline-block;
                width: 172px;
                height: 154px;
                margin-right: 15px;
            }
            .slider a {
                display: inline-block;
                width: 170px;
                padding-top: 70px;
                padding-bottom: 20px;
                position: relative;
                cursor: pointer;
                border: 2px solid #fff;
                border-radius: 5px;
                vertical-align: top;
                color: #fff;
                text-decoration: none;
                font-size: 22px;
                font-family: 'Yesteryear', cursive;
                text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.8),-2px -2px 1px rgba(0, 0, 0, 0.3),-3px -3px 1px rgba(0, 0, 0, 0.3);
            }
            /*??????????????*/
            ul > li:nth-of-type(1){
                background-color: #02646e;
            }
            ul > li:nth-of-type(2){
                background-color: #eb0837;
            }
            ul > li:nth-of-type(3){
                background-color: #67b374;
            }    
            ul > li:nth-of-type(4){
                background-color: #e6674a;
            }    
            ul > li:nth-of-type(5){
                background-color: #e61061;
            }
            /*???????????*/
            ul > li a::after{
                content:"";
                display: block;
                height: 120px;
                width: 120px;
                border: 5px solid #fff;
                border-radius: 50%;
                position: absolute;
                left: 50%;
                margin-left: -60px;
                z-index: 9999;
                top: -80px;
            }

            /*??????????????*/
            ul > li a::before{
                content:"";
                display: block;
                height: 120px;
                width: 120px;
                border: 5px solid #fff;
                border-radius: 50%;
                position: absolute;
                left: 50%;
                margin-left: -60px;
                z-index: 99999;
                top: -80px;
                background: rgba(0,0,0,0.3);
            }
            /*????????????????????*/
            ul > li a:hover::before{
                opacity:0;
            }
            /*???????????????*/
            /*?????????*/
            .slideLeft:target{
                z-index: 100;
                -webkit-animation-name: slideLeft;
                -webkit-animation-duration: 1s;
                -webkit-animation-iteration-count: 1;
                -moz-animation-name: slideLeft;
                -moz-animation-duration: 1s;
                -moz-animation-iteration-count: 1;
                -ms-animation-name: slideLeft;
                -ms-animation-duration: 1s;
                -ms-animation-iteration-count: 1;
                -o-animation-name: slideLeft;
                -o-animation-duration: 1s;
                -o-animation-iteration-count: 1;
                animation-name: slideLeft;
                animation-duration: 1s;
                animation-iteration-count: 1;
            }
            /*?????????*/
            .slideBottom:target{
                z-index: 100;
                -webkit-animation-name: slideBottom;
                -webkit-animation-duration: 1s;
                -webkit-animation-iteration-count: 1;
                -moz-animation-name: slideBottom;
                -moz-animation-duration: 1s;
                -moz-animation-iteration-count: 1;
                -ms-animation-name: slideBottom;
                -ms-animation-duration: 1s;
                -ms-animation-iteration-count: 1;
                -o-animation-name: slideBottom;
                -o-animation-duration: 1s;
                -o-animation-iteration-count: 1;
                animation-name: slideBottom;
                animation-duration: 1s;
                animation-iteration-count: 1;
            }
            /*?????????*/
            .zoomIn:target{
                z-index: 100;
                -webkit-animation-name: zoomIn;
                -webkit-animation-duration: 1s;
                -webkit-animation-iteration-count: 1;
                -moz-animation-name: zoomIn;
                -moz-animation-duration: 1s;
                -moz-animation-iteration-count: 1;
                -ms-animation-name: zoomIn;
                -ms-animation-duration: 1s;
                -ms-animation-iteration-count: 1;
                -o-animation-name: zoomIn;
                -o-animation-duration: 1s;
                -o-animation-iteration-count: 1;
                animation-name: zoomIn;
                animation-duration: 1s;
                animation-iteration-count: 1;
            }

            /*?????????*/
            .zoomOut:target{
                z-index: 100;
                -webkit-animation-name: zoomOut;
                -webkit-animation-duration: 1s;
                -webkit-animation-iteration-count: 1;
                -moz-animation-name: zoomOut;
                -moz-animation-duration: 1s;
                -moz-animation-iteration-count: 1;
                -ms-animation-name: zoomOut;
                -ms-animation-duration: 1s;
                -ms-animation-iteration-count: 1;
                -o-animation-name: zoomOut;
                -o-animation-duration: 1s;
                -o-animation-iteration-count: 1;
                animation-name: zoomOut;
                animation-duration: 1s;
                animation-iteration-count: 1;
            }

            /*???????*/
            .rotate:target{
                z-index: 100;
                -webkit-animation-name: rotate;
                -webkit-animation-duration: 1s;
                -webkit-animation-iteration-count: 1;
                -moz-animation-name: rotate;
                -moz-animation-duration: 1s;
                -moz-animation-iteration-count: 1;
                -ms-animation-name: rotate;
                -ms-animation-duration: 1s;
                -ms-animation-iteration-count: 1;
                -o-animation-name: rotate;
                -o-animation-duration: 1s;
                -o-animation-iteration-count: 1;
                animation-name: rotate;
                animation-duration: 1s;
                animation-iteration-count: 1;
            }
            /*???????????????*/
            /* Not Target */

            img.bg:not(:target){
                -webkit-animation-name: notTarget;
                -webkit-animation-duration: 1s;
                -webkit-animation-iteration-count: 1;
                -moz-animation-name: notTarget;
                -moz-animation-duration: 1s;
                -moz-animation-iteration-count: 1;
                -ms-animation-name: notTarget;
                -ms-animation-duration: 1s;
                -ms-animation-iteration-count: 1;
                -o-animation-name: notTarget;
                -o-animation-duration: 1s;
                -o-animation-iteration-count: 1;
                animation-name: notTarget;
                animation-duration: 1s;
                animation-iteration-count: 1;
            }
        </style>
    </head>
    <body>

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
            <div class="slider">
                <ul class="clearfix">
                    <li><a href="/Instagrim/Image/<%=p.getSUUID()%>"> </a></li>
                    <li><a href="/Instagrim/Image/<%=p.getSUUID()%>"> </a></li>
                </ul>
            </div>
            <img src="/Instagrim/Thumb/<%=p.getSUUID()%>" alt="" class="bg rotate" />
            <img src="/Instagrim/Thumb/<%=p.getSUUID()%>" alt="" class="bg rotate" />
            <br/>
            <%
                    }
                }
            %>
        </article>


    </body>
</html>