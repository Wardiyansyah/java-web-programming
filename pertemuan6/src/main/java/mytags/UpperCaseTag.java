package mytags;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.BodyTagSupport;

@SuppressWarnings("serial")
public class UpperCaseTag extends BodyTagSupport {
	@Override
	public int doEndTag() throws JspException {
		try {
			String bodyContentString = getBodyContent().getString();
			String upperCaseContent = bodyContentString.toUpperCase();
			JspWriter out = pageContext.getOut();
			out.println(upperCaseContent);
		} catch (IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return EVAL_PAGE;
	}
}