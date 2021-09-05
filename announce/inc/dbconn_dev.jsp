<%!
  private Connection cn = null;
  private Statement st = null;
  private ResultSet rs = null;
  private String sql = "";
%>
<%
  try{
      Class.forName("oracle.jdbc.driver.OracleDriver");
      String url="jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=vw017352.nov.com)(PORT=1522))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=devcust)))";
      
     cn=DriverManager.getConnection(url,"ecis","ECIS");
    
  } catch (Exception e) {
      out.println("DB connection error:"+e.toString());
  }
%>