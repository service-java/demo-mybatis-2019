<%
java.util.Enumeration enema=application.getInitParameterNames();

while(enema.hasMoreElements()){
	String name=(String)enema.nextElement();
	String value=application.getInitParameter(name);
	out.println(name+",");
	out.println(value);
	out.print("<br>");
}
%>
