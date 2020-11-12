package action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.BoardWriteProService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardWriteProAction!");
		
		ActionForward forward = null;
		ServletContext context = request.getServletContext();
		String saveFolder = "/boardUpload";
		String realFolder = context.getRealPath(saveFolder);
		System.out.println("실제 업로드 폴더 :" + realFolder);
		int fileSize = 1024 * 1024 * 10;
		
		MultipartRequest multi = new MultipartRequest(
				request,  
				realFolder, 
				fileSize,  
				"UTF-8",
				new DefaultFileRenamePolicy() 
				);
		
		String board_name = multi.getParameter("board_name");
		String board_pass = multi.getParameter("board_pass");
		String board_subject = multi.getParameter("board_subject");
		String board_content =multi.getParameter("board_content");
		
		String board_file = multi.getOriginalFileName("board_file");
		
		BoardBean boardBean = new BoardBean();
		boardBean.setBoard_name(multi.getParameter("board_name"));
		boardBean.setBoard_pass(multi.getParameter("board_pass"));
		boardBean.setBoard_subject(multi.getParameter("board_subject"));
		boardBean.setBoard_content(multi.getParameter("board_content"));
		boardBean.setBoard_file(multi.getOriginalFileName("board_file"));
		

		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
		
		

		if(!isWriteSuccess)	{
			
			response.setContentType("text/html; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
		
			out.println("<script>"); 
			out.println("alert('글 등록 실패')"); 
			out.println("history.back()");
			out.println("</script>"); 
		}else {
			forward = new ActionForward();
			forward.setPath("BoardList.bo");
			forward.setRedirect(true);
		}
		return forward;
	}

}
