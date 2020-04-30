package com.javalec.ex.frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.command.BCommand;
import com.javalec.ex.command.BContentCommand;
import com.javalec.ex.command.BDeleteCommand;
import com.javalec.ex.command.BListCommand;
import com.javalec.ex.command.BModifyCommand;
import com.javalec.ex.command.BReplyCommand;
import com.javalec.ex.command.BReplyViewCommand;
import com.javalec.ex.command.BWriteCommand;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		BCommand command = null;
		String viewPage = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String comm = uri.substring(conPath.length());
		
		switch(comm){
			case "/list.do":
				command = new BListCommand();
				command.execute(request, response);
				viewPage = "list.jsp";
				break;
			case "/write.do":
				command = new BWriteCommand();
				command.execute(request, response);
				viewPage = "list.do";
				break;
			case "/write_view.do":
				viewPage = "write_view.jsp";
				break;
			case "/content_view.do":
				command = new BContentCommand();
				command.execute(request, response);
				viewPage = "content_view.jsp";
				break;
			case "/modify.do":
				command = new BModifyCommand();
				command.execute(request, response);
				viewPage = "list.do";
				break;
			case "/delete.do":
				command = new BDeleteCommand();
				command.execute(request, response);
				viewPage = "list.do";
				break;
			case "/reply.do":
				command = new BReplyCommand();
				command.execute(request, response);
				viewPage = "list.do";
				break;
			case "/reply_view.do":
				command = new BReplyViewCommand();
				command.execute(request, response);
				viewPage = "reply_view.jsp";
				break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
