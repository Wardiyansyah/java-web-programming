package mytags;

import java.io.IOException;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class SumTag extends SimpleTagSupport {
	private int num1, num2;
	
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	
	@Override
	public void doTag() throws JspException,IOException {
		JspWriter out = getJspContext().getOut();
		int sum = num1 + num2;
		out.println("Hasil penjumlahan: " + sum);
	}
}