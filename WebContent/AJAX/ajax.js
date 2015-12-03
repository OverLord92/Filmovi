$(document).ready(function(){
	$('#addMovie').click(function(){
		
		var filmName = $('#filmName').val();
		var filmGenre = $('#filmGenre').val();
		
		$.ajax({
				url: 'AddMovieServlet',
				method: 'POST',
				data: {filmName: filmName,
				filmGenre: filmGenre}
		}).done(function(odgovor){
			$('#lista').append('<tr><td>' + filmName + '</td><td>' + filmGenre + '</td></tr>');
			$('#filmName').val('');
			$('#filmGenre').val('');
			
		});	
	});
	
	$('#filmName').blur(function(){
		
		var filmName = $('#filmName').val();
		
		$.ajax({
			url: 'CheckIfMovieAlreadyExsts',
			method: 'GET',
			data: {filmName: filmName}
		}).done(function(odgovor){
			$('#spanFilmName').html(odgovor);
		});
	});
	
	$('#trazi').click(function(){
		
		var filmName = $('#search').val();
		var filmGenre = $('#searchGenre').val();
		
		$('.rezultat').remove('tr');
		
		$.ajax({
			url: 'searchServlet',
			method: 'GET',
			data: {filmName: filmName,
				filmGenre: filmGenre}
		}).done(function(odgovor){
			$('.rezultat').append(odgovor);
		});		
	});
});