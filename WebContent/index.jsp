<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Load bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Load custom CSS -->
<link href="customCSS/custom.css" rel="stylesheet">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="customJS/custom.js"></script>
<script type="text/javascript" src="AJAX/ajax.js"></script>

</head>
<body>

	<div class="container">
	<button id="pokaziSpisak" class="btn btn-primary">POKAZI SPISAK</button>
		<div id="spisak">
		<h3>Spisak filmova</h3>
		<table class="table" id="lista">
		<tr><th>head</th><th>head</th></tr>
			<c:forEach items="${listOfAllMovies}" var="element">
				<tr>
				<td>${element.movie_name}</td>
				<td>${element.movie_genre}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>

	<div class="container">
		<button id="dodajFilm" class="btn btn-primary">DODAJ FILM</button>
		<div class="dodajFilmDiv">
			<div class="row">

				<div class="col-md-1"></div>
				<label for="filmName" class="col-md-1">film name</label>
				<div class="col-md-3">
					<input type="text" name ="filmName" id="filmName" placeholder="enter movie name" />
					<span id="spanFilmName"></span>
				</div>

				<label class="col-md-1">zanr</label>
				<div class="col-md-3">
					<select id="filmGenre">
						<option value="horor">Horor</option>
						<option value="komedija">Komedija</option>
						<option value="drama">Drama</option>
						<option value="triler">Triler</option>
					</select>
				</div>

				<div class="cl-md-5">
				<button id="addMovie" class="btn btn-default">ADD MOVIE</button>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<input type="text" id="search" />
		
		<select id="searchGenre">
			<option value="horor">Horor</option>
			<option value="komedija">Komedija</option>
			<option value="drama">Drama</option>
			<option value="triler">Triler</option>
		</select>
		
		<button id="trazi">btn</button>
		<table class="table rezultat">
			
		</table>
	</div>



	<br /><br />
	<script type="text/javascript" src="customJS/custom.js"></script>

</body>
</html>