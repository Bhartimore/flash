<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About page</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<style type="text/css">
 html, body{
  height: 100%;
  padding: 0px;
  margin: 0px;
  background: white;
  font family: 'lora', serif;
 }
 .about-section {
  padding: 50px;
  text-align: center;
  background-color: orange;
  color: white;
}
 
 
 .page-wrapper{
   min-height: 100%;
 }

 /* footer */
 .footer{
    background: black;
    color: white;
    height: 400px;
    position: relative;
 }
 
 .footer .footer-content{
 height: 350px;
 display: flex;
 }
 
 .footer .footer-content .footer-section{
  flex: 1;
  padding: 25px;

 }
 
  .footer .footer-content h1, .footer .footer-content h2{
      color: white;
  }
.footer .footer-content .about h1 span{
   color: orange;
}  

.footer .footer-content .about .contact span{
   display: block
   font-size: 1.1em;
   margin-bottom: 8px;
}  

.footer .footer-content .about .socials a{
  border: 1px solid gray;
  width: 45px;
  height: 41px;
  padding-top: 5px;
  margin-right: 5px;
  text-align: center;
  display: inline-block;
  font-size: 1.3em;
  border-radius: 5px;
  color: white; 
  transition: all .3s;
}
.footer .footer-content .about .socials a:hover{
   border: 1px solid white;
   color: white;
   transition: all .3s;
}

 .footer .footer-content .links ul a{
   display: block;
   margin-bottom: 10px;
   font-size: 1.2em;
   color: white;
   text-decoration: none;
 }
  
  .footer .footer-content .links ul a:hover{
   color: white;
   margin-left: 15px;
   transition: all .3s;
  }
  .footer .footer-content .contact-form .contact-input{
  background: #272727;
  color: white;
  margin-bottom: 10px;
  line-height: 1.5rem;
  padding: .7rem 1.2rem;
  border: none;  
  }  
  
    .footer .footer-content .contact-form .contact-form .contact-btn{
      color: #05f7ff;
      float: right;
    }
  
 .footer .footer-bottom{
 background: black;
 color: grey;
 height: 50px;
 width: 100%;
 text-align: center;
 position: absolute;
 bottom: 0px;
 left: 0px;
 padding-top: 20px;
 }
 
</style>
</head>
<body>

  <div class="about-section">
  <h2>About Us Page</h2>
  <h1>Hi, we're FoodPanel</h1>
  <p>We have local teams dedicated to serving best food in front of you. Weather that's Biryani, Pizza or Salad-<br> so you can get the delicious and super yummy and healthy food right to you. </p>
  <h3>We are healthy sometimes.</h3>
  <p>We have in house nutritionists behind menu like healthy enough, Vega, Vegetarian, and more.<br>So when you want to find food that fits your diet, or to eat a little healthier, we can help.</p>
   <h3>We care about your time.</h3>
   <p>Some nights you just need to clean the living room or feel lazy or don't feel like to cook food.<br>We're here to help you with food-stuff, so you can do other stuff.</p>
</div>




   <!-- Creating Footer Layout in HTML -->
   
<div class="footer">
   <div class="footer-content">
       <div class="footer-section about">
        <h1 class="logo-text"><span>Food</span>Panel</h1>
        <p>We love what we do and we do what our clients love to eat.</p>
        <div class="contact">
         <span><i class="fa fa-phone" aria-hidden="true"></i> &nbsp; 123-456-789</span><br><br>
          <span><i class="fa fa-envelope" aria-hidden="true"></i> &nbsp; info@foodpanel.com</span><br><br>
            <span><i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp; 13, FoodPanel Restaurant<br></span>
        </div>
        <br>
       
        <div class="socials">
          <a href="#">
         <i class="fa fa-facebook-official" aria-hidden="true"></i>
          </a>
          <a href="#">
         <i class="fa fa-instagram" aria-hidden="true"></i>
          </a>
          <a href="#">
          <i class="fa fa-twitter" aria-hidden="true"></i>
          </a>
          <a href="#">
         <i class="fa fa-youtube-play" aria-hidden="true"></i>
          </a>
        </div>   
       </div>
         
       <div class="footer-section links">
         <h2>Quick Links</h2>
         <br>
         <ul>
             <a href="#">
                  <li>Events</li>
             </a>
              <a href="#">
                  <li>Gallaries</li>
              </a>
              <a href="#">
                  <li>Team</li>
              </a>
               <a href="#">
                  <li>Terms & conditions</li>
              </a>
         </ul>
       </div>
       
       <div class="footer-section contact-form">
           <h2>Contact us</h2>
           <br>
           <form action="" method="post">
               <input type="email" name="email" class="text-input contact-input" placeholder="Your email address...">
               <textarea name="message"  class="text-input contact-input" placeholder="Your message..."  rows="4" cols="50"></textarea>
               <button type="submit" class="btn btn-big contact-btn">
               <i class="fa fa-envelope" aria-hidden="true"></i>
                 Send
               </button>
           </form>
       </div>
   
   <div class="footer-bottom">
     &copy; 2020, FoodPanel.com, Allrights reserved
   </div>
</div>
    
</body>
</html>