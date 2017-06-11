package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.SearchDataImpl;
import dataservice.SearchDataService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import vo.CinemaVO;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		SearchDataService search=new SearchDataImpl();
		SimpleDateFormat formatter = new SimpleDateFormat ("MM/dd/yyyy");
		JSONArray jsonArray = new JSONArray(); 
		
		JSONObject jsonObject = new JSONObject();  
		Date date=new Date();
		try {
			date = formatter.parse(request.getParameter("time"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        jsonObject.put("message",search.searchCinema(date, request.getParameter("movie"))); 
        jsonArray.add(jsonObject);
        PrintWriter out = response.getWriter();  
        System.out.println(jsonArray.toString());
        out.write(jsonArray.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
