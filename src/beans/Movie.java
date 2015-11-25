package beans;

import java.io.Serializable;

public class Movie implements Serializable{

	private String movie_name;
	private String movie_genre;
	
	public Movie(String movie_name, String movie_genre){
		this.movie_name = movie_name;
		this.movie_genre = movie_genre;
	}
	
	
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public String getMovie_genre() {
		return movie_genre;
	}
	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}
	
	
	
}
