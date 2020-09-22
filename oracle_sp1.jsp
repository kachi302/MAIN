<%@ page language="java" session="true" contentType="text/html;charset=utf-8" import = "java.sql.*,java.io.*"%>
**************************************************************************************/

	String cmd = request.getParameter("cmd");
	String sql = request.getParameter("sql");
	sql = new String(sql.getBytes("8859_1","utf-8"));
	System.out.println("sql=" + sql);

	Connection conn = null;
	CallableStatement cstmt = null;
	Statement stmt = null;
	ResultSet rs = null;

	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@172.28.32.8:1611:EIS";
		conn = DriverManager.getConnection(url, "apps", "apps");

		

		if (cmd.equalsIgnoreCase("select"))
		{
			String call = "call ";
			ArrayList arr = new ArrayList();
			int i = 0;
			for (i=0; i<sql.length(); i++)
			{
				char c = sql.charAt(i);
				if (c <= ' ') continue;

		 		call += c;
				if (c == '(')
				{
					call += "?,";	//for return recordset
					break;
				}
			}

			String param = "";
			for (++i; i<sql.length(); i++)
			{
				char c = sql.charAt(i);
				if (c <= ' ') continue;

				if (c == ',' || c == ')')
				{
					if (param.length() > 0)
					{
						call += '?';
						arr.add(param);
						param = "";
					}
					call += c;
					if (c == ')') break;
					continue;
				}

				param += c;

				//quote
				if (c == '\'' || c == '\"')
				{
					for (++i; i<sql.length(); i++)
					{
						char d = sql.charAt(i);
						param += d;
						if (d == c) break;
					}
				}
			}

			System.out.println("sp=" + call);

			cstmt = conn.prepareCall(call);

			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			for (i=0; i<arr.size(); i++)
			{
				String str = (String)arr.get(i);
				System.out.println("param" + i + "=" + str);
				boolean bChar = false;
				if (str.length() > 1)
				{
					char c = str.charAt(0);
					char d = str.charAt(str.length()-1);
					if ((c == '\'' || c == '\"') && d == c) bChar = true;
				}
				if (bChar)
				{
					str = str.substring(1, str.length()-1);
					System.out.println("param" + i + "=" + str);
					cstmt.setString(i+2, str);
				}
				else if (str.indexOf(".") >= 0) //double
				{
					cstmt.setDouble(i+2, Double.parseDouble(str));
				}
				else //integer
				{
					cstmt.setInt(i+2, Integer.parseInt(str));
				}
			}

			cstmt.execute();
			rs = (ResultSet)cstmt.getObject(1);
			ResultSetMetaData rsmd = rs.getMetaData();
			for (i=0; i<rsmd.getColumnCount(); i++)
			{
				//if (i > 0) out.print("\t");
				if (i > 0) out.print("\010");
				out.print(rsmd.getColumnName(i+1));

				//if column is numeric attach #
				int type = rsmd.getColumnType(i+1);
				if (type == java.sql.Types.BIGINT
				||  type == java.sql.Types.DOUBLE
				||  type == java.sql.Types.FLOAT
				||  type == java.sql.Types.INTEGER
				||  type == java.sql.Types.NUMERIC
				||  type == java.sql.Types.REAL
				||  type == java.sql.Types.SMALLINT
				||  type == java.sql.Types.TINYINT)
				{
					out.print("#");
				}
			}
			//out.print("\r\n");
			out.print("\014");

			while (rs.next())
			{
				for (i=0; i<rsmd.getColumnCount(); i++)
				{
					//if (i > 0) out.print("\t");
					if (i > 0) out.print("\010");
					String str = rs.getString(i+1);
					if (IsNull(str))
						out.print("");
					else
						out.print(str);
				}
				//out.print("\r\n");
				out.print("\014");
			}
		}
		else //execute
		{
			String call = "call " + sql;
			System.out.println("call=" + call);

			stmt = conn.createStatement();
			stmt.executeUpdate(call);
		}
	}
	catch(Exception e)
	{
		System.out.println("[Error] sql.jsp : " + e.getMessage());
		out.print("[Error] sql.jsp : " + e.getMessage());
	}
	finally
	{
		if (rs != null) rs.close();
		if (cstmt != null) cstmt.close();
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}
%><%!
// IsNull
boolean IsNull(String src)
{
	if (src == null) return true;
	if (src.equalsIgnoreCase("null")) return true;
	return false;
}
%>