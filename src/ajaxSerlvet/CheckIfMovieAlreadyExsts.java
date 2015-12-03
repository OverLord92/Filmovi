package ajaxSerlvet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDAO;

/**
 * Servlet implementation class CheckIfMovieAlreadyExsts
 */
@WebServlet("/CheckIfMovieAlreadyExsts")
public class CheckIfMovieAlreadyExsts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String filmName = request.getParameter("filmName");
		
		if(MovieDAO.isFilmInDatabase(filmName)){
			response.getWriter().write("<p>Film vec postoji.</p>");
		}
			
		return;
	}

}
