package mytags;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

@SuppressWarnings("serial")
public class PrintTag extends TagSupport {
	private String text;
	private int times;
	
	public void setText(String text) {
		this.text = text;
	}
	
	public void setTimes(int times) {
		this.times = times;
	}
	
	@Override
	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			for(int i = 0; i < times; i++) {
				out.println(text + "<br>");
			}
		} catch(IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}
}