package mytags;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

@SuppressWarnings("serial")
public class LoopTag extends TagSupport {
    private int count;

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public int doStartTag() throws JspException {
        try{
            JspWriter out = pageContext.getOut();
            pageContext.setAttribute("loopCount", count);
            out.println("<ul>");
        } catch(IOException e){
            throw new JspException("Error: " + e.getMessage());
        }
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doAfterBody() throws JspException {
        if (count-- > 1) {
            pageContext.setAttribute("loopCount", count);
            return EVAL_BODY_AGAIN;
        } else {
            return SKIP_BODY;
        }
    }

    @Override
    public int doEndTag() throws JspException {
        try{
            JspWriter out = pageContext.getOut();
            out.println("</ul>");
        } catch(IOException e){
            throw new JspException("Error: " + e.getMessage());
        }
        return EVAL_PAGE;
    }
}