<%@page import="modal.*" %>
<%@page import="dao.*" %>
<%
 String customer="customer";
 String userName=request.getParameter("userName");
 String userPassword=request.getParameter("userPassword");
 Integer userId=Integer.parseInt(request.getParameter("userId"));
 String userEmail=request.getParameter("userEmail");
 Integer userNumber=Integer.parseInt(request.getParameter("userNumber"));
 String userAddress=request.getParameter("userAddress");
 User user=new User();
 user.setUserId(userId);
 user.setUserEmail(userEmail);
 user.setUserNumber(userNumber);
 user.setUserAddress(userAddress);
  
 Login login=new Login();
 login.setUserName(userName);
 login.setUserPassword(userPassword);
 login.setUserRole(customer);
 
 UserDao userDao=new UserDao();
 Integer i=userDao.addS(user);
 
 LoginDao loginDao=new LoginDao();
 Integer i1=loginDao.add(login);
 if((i>0)&&(i1>0))
 {
   response.sendRedirect("msg1.jsp");
 }


%>