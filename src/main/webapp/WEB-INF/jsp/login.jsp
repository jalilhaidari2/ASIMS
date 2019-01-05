
<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <style>
  @import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form .title{
  font-family: "Roboto", sans-serif;
  color: #7C8280;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
  
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}

body {
  background: #DEDEDE; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #DEDEDE, #DEDEDE);
  background: -moz-linear-gradient(right, #DEDEDE, #DEDEDE);
  background: -o-linear-gradient(right, #DEDEDE, #DEDEDE);
  background: linear-gradient(to left, #DEDEDE, #A5A5A5);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
  
  </style>
  
 
</head>
<body>


<div class="login-page">
  <div class="form">
   
    <h3 class="title">welcome to ASIMS</h3>
    <h4 class="title">(Afghanistan Statistical Information Management System)</h4>
    <form  action="/login" class="login-form" method="POST">
      <input type="text" placeholder="username"name="username"/>
      <input type="password" name="password" placeholder="password"/>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>



</body>

</html> 
  
 