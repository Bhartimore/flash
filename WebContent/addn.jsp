<%@page import="modal.*" %>
<%@page import="dao.*" %>
<% 
   String foodName=request.getParameter("button"); 
   Integer id=Integer.parseInt(request.getParameter("id"));
   //Integer id=(Integer)session.getAttribute("id");
   Integer foodQuantity=Integer.parseInt(request.getParameter("foodQuantity"));
   foodName=null;
   Integer foodPrice=0;
   Integer total=0;
   if(id==1)
   {
	   foodName="pizza";
	   foodPrice=150;
	   total=foodPrice*foodQuantity;
   }
   else if(id==2)
   {
	   foodName="burger";
	   foodPrice=90;
	   total=foodPrice*foodQuantity;
   }
   else if(id==3)
   {
	   foodName="noodles";
	   foodPrice=180;
	   total=foodPrice*foodQuantity;
   }
   else if(id==4)
   {
	   foodName="veg biryani";
	   foodPrice=180;
	   total=foodPrice*foodQuantity;
   }
   else if(id==5)
   {
	   foodName="chicken biryani";
	   foodPrice=280;
	   total=foodPrice*foodQuantity;
   }
   else if(id==6)
   {
	   foodName="momos";
	   foodPrice=80;
	   total=foodPrice*foodQuantity;
   }
   else if(id==7)
   {
	   foodName="dosa";
	   foodPrice=200;
	   total=foodPrice*foodQuantity;
   }
   else if(id==8)
   {
	   foodName="Idli";
	   foodPrice=70;
	   total=foodPrice*foodQuantity;
   }
   else if(id==9)
   {
	   foodName="upma";
	   foodPrice=70;
	   total=foodPrice*foodQuantity;
   }
   else if(id==10)
   {
	   foodName="samosa";
	   foodPrice=40;
	   total=foodPrice*foodQuantity;
   }
   Menu e=new Menu();
   e.setId(id);
   e.setFoodName(foodName);
   e.setFoodQuantity(foodQuantity);
   e.setFoodPrice(foodPrice);
   e.setTotal(total);
   MenuDao menuDao=new MenuDao();
   Integer i=menuDao.addRecord(e);
   if(i>0)
   {
	   application.setAttribute("id",e.getId());
	   application.setAttribute("foodName",e.getFoodName());
	   application.setAttribute("foodPrice",e.getFoodPrice());
	   application.setAttribute("foodQuantity",e.getFoodQuantity());
	   application.setAttribute("total",e.getTotal());
	   response.sendRedirect("msg22.jsp") ;
   }
   else
   {
	   response.sendRedirect("error2.jsp") ;  
   }
   
%>