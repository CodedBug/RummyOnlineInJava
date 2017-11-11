<%-- 
    Document   : chat1
    Created on : 26 Jun, 2012, 7:41:18 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- The following line is essential for the "position: fixed" property to work correctly in IE -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>jquery.ui.chatbox</title>
    <link rel="stylesheet" href="css/ui-lightness/jquery-ui-1.8.2.custom.css" type="text/css" media="screen" />
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.2.custom.min.js"></script>
    <link type="text/css" href="jquery.ui.chatbox.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.ui.chatbox.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
          var box = null;
          $("input[type='button']").click(function(event, ui) {
              if(box) {
                  box.chatbox("option", "boxManager").toggleBox();
              }
              else {
                  box = $("#chat_div").chatbox({id:"chat_div", 
                                                user:{key : "value"},
                                                title : "test chat",
                                                messageSent : function(id, user, msg) {
                                                    $("#log").append(id + " said: " + msg + "<br/>");
                                                    $("#chat_div").chatbox("option", "boxManager").addMsg(id, msg);
                                                }});
              }
          });
      });
    </script>
  </head>
  <body>
    <p>It will not work untill necessary scripts and stylesheets are
    properly loaded, check out the code.</p>  
      <!--<input type="button" name="toggle" value="toggle" />-->
    <div id="chat_div">
    </div>
    <hr />
    <div id="log">
    </div>
  </body>
</html>