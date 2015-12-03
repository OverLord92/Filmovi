package ajaxSerlvet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Movie;

/**
 * Servlet implementation class searchServlet
 */
@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		
		String filmName = request.getParameter("filmName");
		String filmGenre = request.getParameter("filmGenre");
		
		System.out.println(filmGenre);
		
		HttpSession session = request.getSession();
		
		ArrayList<Movie> filmovi = (ArrayList<Movie>)session.getAttribute("listOfAllMovies");
		
		

		PrintWriter writer = response.getWriter();
		
		
		for(Movie movie: filmovi){

			if(
					(movie.getMovie_name().contains(filmName)) 
					&& 
					(movie.getMovie_genre().contains(filmGenre))){

				
				writer.write("<tr><td>" + movie.getMovie_name() + "</td><td>" + movie.getMovie_genre() + "</td></tr>");
				System.out.println("nesto");
			}
		}
		
		return;
	}
	
	

}
