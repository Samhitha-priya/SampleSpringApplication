<%@page import="java.util.ArrayList"%>
<%@page import="com.example.springsecuritycustomlogin.Comments"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@ page import=" java.util.List"%>
<%@ page import=" java.util.Arrays"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

</head>
<body>

<%
String commentsList=request.getAttribute("commentsList").toString();
List list = Arrays.asList(commentsList);

%>
<div class="container" style="width:100%;padding:4px;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Home</a>
    </div>
   
  </div>
</nav>
  
    <form:form action="/postComment" method="POST" modelattribute="postCommentsForm">
    <div class="panel panel-primary">
      <div class="panel-heading"  value="<%=request.getAttribute("userId")%>"><%=request.getAttribute("name")%></div>
      <div class="panel-body">
      <input type="hidden"  name="comments_createdby" value="<%=request.getAttribute("userId")%>"/>
      <input type="hidden"  name="comments_parentid" value="-1"/>
       <textarea name="comments_description" class="form-control" rows="3" placeholder="Post your comments here.."></textarea>
       </div>
    </div>
      <button type="submit" class="btn btn-default">Send</button>
    </form:form>
    <div class="post-comments">
    
    
    <div class="row" style="width:100%;padding:17px;">
      <div class="media">
        <div class="media-heading">
           <span class="label label-info">Raju</span>
        </div>
        <div class="panel-collapse collapse in" id="collapseOne">
          <div class="media-left">
            <div class="vote-wrap">
              <div class="save-post">
                <a href="#"><span class="glyphicon glyphicon-star" aria-label="Save"></span></a>
              </div>
            </div>
          </div>
          <div class="media-body">
          <p>
           <%
           for (int i=0;i<list.size();i++){
        	   out.println(list.get(i).toString());
           }
           
           
           
           %>
           </p>
            <div class="comment-meta">
              <span><a href="#">Delete</a></span>
             
              <span>
                        <a class="" role="button" data-toggle="collapse" href="#replyCommentT" aria-expanded="false" aria-controls="collapseExample">reply</a>
                      </span>
              <div class="collapse" id="replyCommentT">
                <form>
                  <div class="form-group">
                    <label for="comment">Your Comment</label>
                    <textarea name="comment" class="form-control" rows="3"></textarea>
                  </div>
                  <button type="submit" class="btn btn-default">Send</button>
                </form>
              </div>
            </div>
           </div>
        </div>
       </div>
       </div>
    </div>
  </div>
</body>
</html>