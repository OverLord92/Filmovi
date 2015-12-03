<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filmovi</title>


<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="jquery-ui/jquery-ui.css" rel="stylesheet">
<!-- Load custom CSS -->
<link href="customCSS/custom.css" rel="stylesheet">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui/jquery-ui.js"></script>

<script type="text/javascript" src="AJAX/ajax.js"></script>

<script>
	$(document).ready(function() {
		$('#accordion').accordion({
			collapsible : true
		});
	});
</script>

</head>
<body>

	<div class="container">
		<div id="accordion">
			<h3>Izlistaj sve filmove</h3>
			<div>
				<table class="table" id="lista">
					<tr>
						<th>ime filma</th>
						<th>zanr</th>
					</tr>
					<c:forEach items="${listOfAllMovies}" var="element">
						<tr>
							<td>${element.movie_name}</td>
							<td>${element.movie_genre}</td>
						</tr>
					</c:forEach>
				</table>

			</div>
			<h3>Dodaj Film</h3>
			<div class="dodajFilmDiv">
				<div class="row">

					<div class="col-md-1"></div>
					<label for="filmName" class="col-md-1">film name</label>
					<div class="col-md-3">
						<input type="text" name="filmName" id="filmName"
							placeholder="unesite ime filma" /> <span id="spanFilmName"></span>
					</div>

					<label class="col-md-1">zanr</label>
					<div class="col-md-3">
						<select id="filmGenre">
							<option value=""></option>
							<option value="horor">Horor</option>
							<option value="komedija">Komedija</option>
							<option value="drama">Drama</option>
							<option value="triler">Triler</option>
						</select>
					</div>

					<div class="cl-md-5">
						<button id="addMovie" class="btn btn-warning">Dodaj film</button>
					</div>
				</div>
			</div>
			<h3>Pretrazuj Filmove</h3>
			<div>
				<input type="text" id="search" placeholder="unesite ime filma" />
				 <select id="searchGenre">
				 	<option value=""></option>
					<option value="horor">Horor</option>
					<option value="komedija">Komedija</option>
					<option value="drama">Drama</option>
					<option value="triler">Triler</option>
				</select>

				<button id="trazi" class="btn btn-warning">Trazi</button>
				<br>
				<h4>Rezultat pretrage: </h4>
				<table class="table rezultat">
					<tr><th>Naziv filma</th><th>Zanr</th></tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>