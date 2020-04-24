<%@ page language="java" contentType="text/html"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
int a1=0,a2=0,a3=0,a4=0,a5=0;

Connection conn=null; ResultSet rs=null; Statement stmt=null;
Class.forName("com.mysql.jdbc.Driver"); 
String url="jdbc:mysql://localhost:3306/exam"; 
conn=DriverManager.getConnection(url,"akash","963258741"); 

String myquery;
out.write("Connected with Database....");

String seatno=request.getParameter("seatno"); 
String name=request.getParameter("name"); 
String ans1=request.getParameter("q1"); 
if(request.getParameter("q1")!=null)
{ if(ans1.equals("maxlength"))
a1=1;
else a1=0;
}
 
String ans2=request.getParameter("q2"); if(request.getParameter("q2")!=null){ if(ans2.equals("id"))
a2=1;

else a2=0;
}

String ans3=request.getParameter("q3"); if(request.getParameter("q3")!=null){ if(ans3.equals("Markup Language"))
a3=1;

else a3=0;
}

String ans4=request.getParameter("q4"); if(request.getParameter("q4")!=null){ if(ans4.equals("img"))
a4=1;

else a4=0;
}

String ans5=request.getParameter("q5"); if(request.getParameter("q5")!=null){ if(ans5.equals("REL"))
a5=1;
 
else a5=0;
}

int tot=a1+a2+a3+a4+a5; if(seatno!=""){ stmt=conn.createStatement();
myquery="INSERT INTO EXAM VALUES('"+seatno+"','"+name+"',"+tot+")";

stmt.executeUpdate(myquery); stmt.close();
}

stmt=conn.createStatement(); myquery="select * from EXAM"; rs=stmt.executeQuery(myquery);
%>

<html>

<head>

<title>Online Examination</title>

</head>

<body style="background-image: url('https://wallpapercave.com/wp/wp5502479.jpg'); background-size:cover; height:100%;"> <br/><br/>

<center>

<h1>Student Database</h1> <br/>

<table border="1" cellspacing="0" cellpadding="5">

<tr>

<td><b>Seat No</b></td>

<td><b>Name</b></td>
 
<td><b>Marks</b></td>

</tr>

<%

while(rs.next())

{

out.println("<tr>"); out.println("<td>"+rs.getString(1)+"</td>"); out.println("<td>"+rs.getString(2)+"</td>"); out.println("<td>"+rs.getString(3)+"</td>"); out.println("</tr>");
}

rs.close();

stmt.close();

conn.close();

%>

</table>

<br/><br/>

<h1>Thanks!....</h1>

</center>

</body>

</html>
