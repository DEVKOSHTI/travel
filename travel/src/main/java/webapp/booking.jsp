<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Booking Page</title>
  <link rel="stylesheet" href="tour.css">
  <script src="sweetalert.min.js"></script>
  <!-- <style type="text/css">
    body {
      background-color: #58a59e;
      text-decoration: none;
      color:white;
    }
    header::before {
      background: url(tour-operator-business-plan.webp) no-repeat center center/cover;
      top: 0%;
      left: 0%;
      content: "";
      position: fixed;
      z-index: -1;
      width: 100%;
      height: 100%;
    }
    header {
      margin: 0%;
      display: flex;
      flex-direction: row;
    }
    .nav {
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: flex-start;
      width: 100%;
      margin: 0%;
    }
    #selected {
      text-decoration: none;
      border-radius: 6px;
      padding: 6px;
      color: #fff;
      background-color: #649119;
    }
    li a {
      margin: 3px;
      text-decoration: none;
      border-radius: 6px;
      width: 100px;
      padding: 6px;
      color: #fff;
      background-color: #00b8ff;
    }
    li a:active,
    li a:hover {
      text-decoration: none;
      border: 2px #fff solid;
      border-radius: 6px;
      padding: 4px;
      color: #fff;
      background-color: #58a59e;
    }
    li {
      list-style: none;
      padding: 11px 11px;
    }
    li img {
      width: 43px;
      height: 48px;
      filter: invert(1);
    }
    div {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    .a {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      margin: 0px;
      padding: 0px;
    }
    /* Form CSS */
    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    form label {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }
    form label span {
      margin-right: 10px;
    }
    form input[type="text"],
    form input[type="email"],
    form input[type="tel"],
    form input[type="number"],
    form input[type="date"] {
      width: 300px;
      padding: 5px;
      border-radius: 4px;
      border: none;
      margin-bottom: 10px;
    }
    form .form-group {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    .button {
      border: 2px #fff solid;
      margin: 2px;
      text-decoration: none;
      border-radius: 6px;
      width: 150px;
      padding: 4px;
      color: #fff;
      background-color: #00b8ff;
    }
    .button:hover {
      text-decoration: none;
      border: 2px #fff solid;
      border-radius: 6px;
      padding: 5px;
      color: #fff;
      background-color: #58a59e;
    }
  </style> -->
</head>
<body>
  <header class="header">
    <ul class="nav">
      <li><img src="image/bus.png"></li>
      <li><a href="welcome.jsp">home</a></li>
      <li><a href="places.jsp">places</a></li>
      <li><a href="booking.jsp" id="selected">booking</a></li>
      <li><a href="show.jsp">show</a></li>
    </ul>
  </header>
  <div>
    <div class="a">
      <h1>Book a Ticket</h1>
    </div>
    <form action="insert.jsp" method="post" onsubmit="return submitForm(this);" class="a">
      <div class="form-group">
        <label>
          <span>Name:</span>
          <input type="text" name="name" required placeholder="Firstname Lastname">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Email:</span>
          <input type="email" name="email" required placeholder="name@something.com">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Phone:</span>
          <input type="tel" name="phone" required placeholder="Phone Number">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Adults:</span>
          <input type="number" name="Adults" required placeholder="Numbers of adults">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Children:</span>
          <input type="number" name="Children" required placeholder="Numbers of children">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Date of Journey:</span>
          <input type="date" name="date" required>
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>From:</span>
          <input type="text" name="From" required placeholder="Enter Place of departure">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>To:</span>
          <input type="text" name="To" required placeholder="Enter Place to visit">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Bus type:</span>
          <input type="text" name="Bus" required placeholder="ac/non-ac/sleeper-ac/sleeper-non-ac">
        </label>
      </div>
      <div class="form-group">
        <label>
          <span>Single/Return:</span>
          <input type="text" name="Single/Return" required placeholder="Single/Return">
        </label>
      </div>
      <input type="submit" value="Book Now" class="button">
    </form>
  </div>
  <script>
    function submitForm(form) {
      swal({
        title: "Are you sure?",
        text: "",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      }).then(function (isOkay) {
        if (isOkay) {
          form.submit();
        }
      });
      return false;
    }
  </script>
</body>
</html>
