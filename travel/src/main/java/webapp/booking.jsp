<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Booking Page</title>
  <link rel="stylesheet" href="tour.css">
  <script src="sweetalert.min.js"></script>
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
