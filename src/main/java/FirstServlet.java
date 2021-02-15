import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

public class FirstServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html; charset=utf-8");
//        System.out.println(request.getParameter("name"));
//        System.out.println(URLEncoder.encode(String.valueOf(request.getParameter("name")),"utf-8"));
//        Cookie cookie=new Cookie(URLEncoder.encode(request.getParameter("name").toString(),"utf-8"), URLEncoder.encode(request.getParameter("value").toString(),"utf-8"));
        Cookie cookie=new Cookie(request.getParameter("name").toString(), request.getParameter("value").toString());
        response.addCookie(cookie);
//        System.out.println(cookie.getName());
        response.sendRedirect("/main.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("delete")!=null){
            doDelete(request,response);
        }
        else
        response.sendRedirect("/main.jsp");
//        Cookie cookie=new Cookie("a","a");
//        Cookie cookies[]=request.getCookies();
//        for (Cookie value : cookies) {
//            System.out.println(value.getName()+"  "+value.getValue());
//        }
//        response.addCookie(cookie);
//        Integer count= (Integer) session.getAttribute("count");
//
////        Cookie cookie=new Cookie("da",)
//        if (count==null){
//            count=1;
//            session.setAttribute("count",count);
//            writer.println("<html><h1>"+count+"</h1></html>");
//        }
//        else {
//            count++;
//            session.setAttribute("count",count);
//            writer.println("<html><h1>"+count+"</h1></html>");
//
//        }
//        RequestDispatcher requestDispatcher=request.getRequestDispatcher();


    }


    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie cookie=new Cookie(req.getParameter("delete"),"");
        cookie.setValue("");
        cookie.setMaxAge(0);
        cookie.setPath("/");
        resp.addCookie(cookie);
        resp.sendRedirect("/");
    }
}
