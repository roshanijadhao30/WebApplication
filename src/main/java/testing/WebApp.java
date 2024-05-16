package testing;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.AbstractDocument.Content;

/**
 * Servlet implementation class WebApp
 */
@WebServlet("/WebApp")
public class WebApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WebApp() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter p = response.getWriter();
		String name1 = request.getParameter("search");
		
		String apiKey = "05a47b76947959a1d68de0580414404c";
		String city = name1;
		String apiUrl = "http://api.openweathermap.org/data/2.5/weather?q=" + city  + "&appid=" + apiKey + "&units=metric";
	                                                              
		
		
		 
			URL url = new URL(apiUrl);
	        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	        connection.setRequestMethod("GET");

	        BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
	        String inputLine;
	        StringBuilder response1 = new StringBuilder();
	        while ((inputLine = in.readLine()) != null) {
	            response1.append(inputLine);
	        }
	       
	        in.close();

	     
	        String jsonResponse = response1.toString();
	        double temperature = Double.parseDouble(jsonResponse.split("\"temp\":")[1].split(",")[0]);
            double speed = Double.parseDouble(jsonResponse.split("\"speed\":")[1].split(",")[0]);
            long pressure = Long.parseLong(jsonResponse.split("\"pressure\":")[1].split(",")[0]);
	        long sunrise = Long.parseLong(jsonResponse.split("\"sunrise\":")[1].split(",")[0]);
	        long sunset = Long.parseLong(jsonResponse.split("\"sunset\":")[1].split("},")[0]);
	   
	        long timestamp = sunrise;
		    Instant instant = Instant.ofEpochSecond(timestamp);
		    LocalDateTime dateTime = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		    int hour = dateTime.getHour();
	        int minute = dateTime.getMinute();
	        int second = dateTime.getSecond();
	        
	        long time = sunset; 
	        Instant instant1 = Instant.ofEpochSecond(time);
	        LocalDateTime dateTime1 = LocalDateTime.ofInstant(instant1, ZoneId.systemDefault());
	        int hh = dateTime1.getHour();
	        int mm = dateTime1.getMinute();
	        int ss = dateTime1.getSecond();

	        
	        ServletContext context = getServletContext();
		    context.setAttribute("temp1", temperature);
		    context.setAttribute("wind", speed);
		    context.setAttribute("Pressure", pressure);
		    context.setAttribute("temp2", hour);
		    context.setAttribute("temp3", minute);
		    context.setAttribute("temp4", second);
		    context.setAttribute("h", hh);
		    context.setAttribute("m", mm);
		    context.setAttribute("s", ss);
		    context.setAttribute("City", city);
		    
		    System.out.println(temperature +"°C");
		    p.print("<a href='servlet2'>link</a>");
		     RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
			  rd.forward(request, response);
        

	        connection.disconnect();
		
	
    
	}
      
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
