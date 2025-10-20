package mytags;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.BodyTagSupport;

@SuppressWarnings("serial")
public class RepeatBodyTag extends BodyTagSupport {
	private int times;
	
	public void setTimes(int times) {
		this.times = times;
	}
	
	@Override
	public int doAfterBody() throws JspException {
		try {
			String bodyContentString = getBodyContent().getString();
			JspWriter out = getBodyContent().getEnclosingWriter();
			for(int i = 0; i < times; i++) {
				out.println(bodyContentString);
			}
		}catch(IOException e) {
			throw new JspException("Error: " + e.getMessage());
		}
		return SKIP_BODY;
	}
}