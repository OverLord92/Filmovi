package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Movie;

public class MovieDAO {
	
	public static void main(String[] args){
		
		System.out.println(isFilmInDatabase("film"));
		
	}

	public static boolean addMovieToDatabse(Movie movie){
		
		ConnectionManager cm = ConnectionManager.getInstance();
		Connection connection = cm.getConnection();
		
		try(
				PreparedStatement pm = connection.prepareStatement("INSERT INTO movies(movie_name, movie_genre) VALUES(?, ?)")
				){
			
			pm.setString(1, movie.getMovie_name());
			pm.setString(2, movie.getMovie_genre());
			
			pm.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	public static ArrayList<Movie> getMoviesFromDatabase(){
		
		ArrayList<Movie> listOfAllMovies = new ArrayList<>();
		
		ConnectionManager cm = ConnectionManager.getInstance();
		Connection connection = cm.getConnection();
		
		ResultSet movies = null;
		
		try(
				Statement stmt = connection.createStatement();
				){
			
			movies = stmt.executeQuery("SELECT * FROM movies");
			
			while(movies.next()){
				String movie_name = movies.getString(2);
				String movie_genre = movies.getString(3);
				
				System.out.println(movie_name);
				
				Movie movie = new Movie(movie_name, movie_genre);
				
				listOfAllMovies.add(movie);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listOfAllMovies;
		
	}
	
	public static boolean isFilmInDatabase(String filmName){
		
		ConnectionManager cm = ConnectionManager.getInstance();
		Connection connection = cm.getConnection();
		
		ResultSet movies = null;
		
		try(
				Statement stmt = connection.createStatement();
				){
			
			movies = stmt.executeQuery("SELECT movie_name FROM movies");
			
			while(movies.next()){
				String movie_name = movies.getString(1);
				
				if(movie_name.equals(filmName))
					return true;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
