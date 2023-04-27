<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Places Page</title>
	<style>
	 div{color:white;
	 align: center;}
		button {margin: 2px;}
		.modal {
		  display: none; /* Hidden by default */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Sit on top */
		  padding-top: 100px; /* Location of the box */
		  left: 0;
		  top: 0;
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
		}

		/* Modal Content (image) */
		.modal-content {
		  margin: auto;
		  display: block;
		  width: 80%;
		  max-width: 700px;
		}

		/* Add Animation */
		.modal-content, #caption {
		  -webkit-animation-name: zoom;
		  -webkit-animation-duration: 0.6s;
		  animation-name: zoom;
		  animation-duration: 0.6s;
		}


		/* The Close Button */
		.close {
		  position: absolute;
		  top: 15px;
		  right: 35px;
		  color: #f1f1f1;
		  font-size: 40px;
		  font-weight: bold;
		  transition: 0.3s;
		}

		.close:hover,
		.close:focus {
		  color: #bbb;
		  text-decoration: none;
		  cursor: pointer;
		}

		/* 100% Image Width on Smaller Screens */
		@media only screen and (max-width: 700px){
		  .modal-content {
		    width: 100%;
		  }
		}
	</style>
</head>
<body>
	<h1>View Places</h1>
	<p>Select a place to view:</p>
	<button onclick="openModal('MyPicture.jpeg')">Place 1</button><br>
	<button onclick="openModal('image2.jpg')">Place 2</button><br>
	<button onclick="openModal('MyPicture.jpeg')">Place 3</button><br>
	<button onclick="openModal('image4.jpg')">Place 4</button><br>
	<button onclick="openModal('image5.jpg')">Place 5</button><br><br>
	<a href="booking.jsp"><button>Book a Ticket</button></a>

	<!-- The Modal -->
	<div id="myModal" class="modal">
		<span class="close">&times;</span>
		<div >place 1</div>
		<a href="booking.jsp"><img class="modal-content" id="img01"></a><br>		
	</div>

	<script>
		function openModal(imgSrc) {
		  var modal = document.getElementById("myModal");
		  var modalImg = document.getElementById("img01");
		  modal.style.display = "block";
		  modalImg.src = imgSrc;
		  var span = document.getElementsByClassName("close")[0];
		  span.onclick = function() {
		    modal.style.display = "none";
		  }
		}
	</script>
</body>
</html>