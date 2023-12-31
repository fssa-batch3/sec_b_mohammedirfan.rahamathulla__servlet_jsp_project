<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="../../assests/css/login.css" />
  </head>
  <body>
    <section class="container">
      <header>Login Form</header>
      <form action="login" class="form" method="POST">
     
        <div class="input-box">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Enter email address" value="kareem@gmail.com"required />
        </div>
        <div class="input-box">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" value="Kareem@12"required />
          </div>
                 <button type="submit">Login</button>
      </form>
    </section>
    
    <style>
    /* Add this CSS to your login.css file */

body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
}

.container {
  max-width: 400px;
  margin: 100px auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

header {
  font-size: 24px;
  font-weight: bold;
  text-align: center;
  margin-bottom: 20px;
}

.form {
  display: flex;
  flex-direction: column;
}

.input-box {
  margin-bottom: 15px;
}

label {
  font-weight: bold;
}

input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  margin-top: 20px;
}

button:hover {
  background-color: #0056b3;
}

@media (max-width: 480px) {
  .input-box {
    margin-bottom: 10px;
  }

  input, button {
    font-size: 14px;
  }
}
    
    </style>
  </body>
</html>