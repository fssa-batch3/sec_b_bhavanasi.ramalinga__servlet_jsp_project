package in.fssa.Products.Servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.protobuf.ServiceException;
import com.mysql.cj.Session;

import in.fssa.productprice.exception.PersistenceException;
import in.fssa.productprice.exception.ValidationException;
import in.fssa.productprice.model.Product;
import in.fssa.productprice.model.User;
import in.fssa.productprice.service.ProductService;
import in.fssa.productprice.service.UserService;


/**
 * Servlet implementation class Listproducts
 */
@WebServlet("/products_list")
public class Listproducts extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        HttpSession session = request.getSession();

        Integer userIdObject = (Integer) session.getAttribute("userId");

       
            try {
                 int userId = userIdObject.intValue();
                User user = UserService.findById(userId);

                
                Set<Product> product = ProductService.findAllProductsBySellerId(userId);
                
                   request.setAttribute("productDetails", product);
                
                request.setAttribute("userDetails", user);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/products_list.jsp");
                dispatcher.forward(request, response);
            } catch (NumberFormatException | ValidationException | PersistenceException e) {
                e.printStackTrace();
              
            } catch (Exception e) {
				
				e.printStackTrace();
			}
        }
    }





//
//RequestDispatcher rd = request.getRequestDispatcher("products_list.jsp");
//rd.forward(request, response);


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}


