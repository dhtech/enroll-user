<!DOCTYPE html>
<html lang="en">
<head>
  <title>Dreamhack Tech user registry</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
  <script src="/static/js/jquery.min.js"></script>
  <script src="/static/js/popper.min.js"></script>
  <script src="/static/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>DreamHack Tech user registry</h1>
    <p>Please fill in all of the fields</p>
    <p>You will not be able to alter the submission once you press submit</p>
    <p>GDPR is in affect, all your data belongs to us (that you will submit)</p>
    <p>All data submitted here will be stored in our LDAP service, and additional group memebership will be added</p>
    <p>if you get accepted to dreamhack tech, you will be able to se all data of yourself in the self service portal</p>
    <p>You can alse choose to be forgotten, but implise that you cannot work for dreamhack tech anymore</p>
  </div>
  <form action="/submit" method="post">
    <div class="form-group">
      <label for="text">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="no special chars, only lowercase, min 3 max 20" name="username" pattern="(?=.*[a-z]).{3,20}"required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Must contain at least one uppercase and one lowercase letter, and at least 15 or more characters" name="password" pattern="(?=.*[a-z])(?=.*[A-Z]).{15,}" required>
    </div>
    <div class="form-group">
      <label for="text">Username in dreamhack crew corner:</label>
      <input type="text" class="form-control" id="ccousername" placeholder="Your Dreamhack Crew Corner Username" name="ccousername" required>
    </div>
    <div class="form-group">
      <label for="text">First Name:</label>
      <input type="text" class="form-control" id="firstname" placeholder="Your first name" name="firstname" required>
    </div>
    <div class="form-group">
      <label for="text">Last Name:</label>
      <input type="text" class="form-control" id="lastname" placeholder="Your first name" name="lastname" required>
    </div>
    <div class="form-group">
      <label for="email">google enabled Email:</label>
      <input type="email" class="form-control" id="googleemail" placeholder="Your google enabled email (can be the same as your primary email)" name="googleemail" required>
    </div>
    <div class="form-group">
      <label for="email">primary Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Your primary email (can bee the same as google enabled email)" name="primaryemail" required>
    </div>
    <div class="form-group">
      <label for="text">Mobile Phone:</label>
      <input type="text" class="form-control" id="phone" placeholder="Your mobile phone number: ex +46712345678" name="phone">
    </div>
    <div class="form-group">
      <label for="text">City:</label>
      <input type="text" class="form-control" id="city" placeholder="Your city ex Stockholm" name="city" required>
    </div>
    <div class="form-group">
      <label for="text">Country:</label>
      <input type="text" class="form-control" id="country" placeholder="Your Country ex Sweden" name="country" required>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>

