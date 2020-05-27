
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<form:form class="form-horizontal" action='/saveNewUserDetails' method="POST" style="padding-left: 364px;width: 50%;" modelattribute="userinfo">
  <fieldset>
    <div id="legend" style="text-align:center">
      <legend class="">Register</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="" class="input-xlarge" style="height:5%;">
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="input-xlarge" style="height:5%;">
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="" class="input-xlarge" style="height:5%;">
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="password_confirm">Password (Confirm)</label>
      <div class="controls">
        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge" style="height:5%;">
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls" style="width:50%;align:right;">
        <button class="btn btn-success" >Register</button>
      </div>
    </div>
  </fieldset>
</form:form>