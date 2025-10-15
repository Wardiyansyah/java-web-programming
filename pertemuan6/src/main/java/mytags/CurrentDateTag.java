package mytags;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class CurrentDateTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		String CurrentDate = new SimpleDateFormat("dd-MM-yyyy").format(new Date());
		out.println("Tanggal saat ini: " + CurrentDate);
	}
}