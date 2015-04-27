package ajaxdemo;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActionServlet
 */

public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public ActionServlet() {
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
            URL url = new URL("http://localhost:8088/MockCurrencyConversion?WSDL");
              URLConnection connection = url.openConnection();
              connection.setReadTimeout(3000);
              HttpURLConnection httpConn = (HttpURLConnection) connection;
              httpConn.setReadTimeout(3000);
              ByteArrayOutputStream bout = new ByteArrayOutputStream();
              httpConn.setRequestProperty("Content-Type",
                           "text/xml; charset=utf-8");
              String SOAPAction = "http://localhost:8088/MockCurrencyConversion";
              httpConn.setRequestProperty("SOAPAction", SOAPAction);
              httpConn.setRequestMethod("POST");
              httpConn.setDoInput(true);
              httpConn.setDoOutput(true);
 
            //  String xmlInput;
             String regFile = "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://www.webserviceX.NET/\">\n" +
"   <soapenv:Header/>\n" +
"   <soapenv:Body>\n" +
"      <web:ConversionRate>\n" +
"         <web:FromCurrency>GBP</web:FromCurrency>\n" +
"         <web:ToCurrency>INR</web:ToCurrency>\n" +
"      </web:ConversionRate>\n" +
"   </soapenv:Body>\n" +
"</soapenv:Envelope>";
                    // xmlInput = new String(Files.readAllBytes(Paths.get(regFile)));
             
              //System.out.println(xmlInput);
              byte[] buffer = new byte[regFile.length()];
              buffer = regFile.getBytes();
              bout.write(buffer);
              byte[] b = bout.toByteArray();
              // Set the appropriate HTTP parameters.
              httpConn.setRequestProperty("Content-Length",
                           String.valueOf(b.length));
              OutputStream out = httpConn.getOutputStream();
              // Write the content of the request to the outputstream of the HTTP
              // Connection.
              out.write(b);
              out.close();
              // Ready with sending the request.
 
              // Read the response.
              InputStreamReader isr = new InputStreamReader(
                           httpConn.getInputStream());
              BufferedReader in = new BufferedReader(isr);
        String responseString;
        String outputString = "";
 
              // Write the SOAP message response to a String.
              while ((responseString = in.readLine()) != null) {
                outputString = outputString + responseString;
                    
              }
              System.out.println(outputString);
              outputString = outputString.split("ConversionRateResult")[1].substring(1,8);
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		response.setContentType("text/plain");  
		response.setCharacterEncoding("UTF-8"); 
		response.getWriter().write(outputString); 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
