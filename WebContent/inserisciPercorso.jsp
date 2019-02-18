<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="Stile.css" rel="stylesheet" >
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class="row" id="contatti">
<div class="container mt-5" >
 <div class="row">
      <div class="col-md-6 maps" >
         <img src="img/mappa2.jpg" />
      </div>
      <div class="col-md-6 dettagli">
        <form action="InserisciPercorso">
          <div class="row">
            <div class="col-lg-12" id='ins'>
            <div class="col-lg-6" >
              <div class="form-group"><h5>Da:</h5>
                <input type="text" class="form-control mt-2" name= partenza placeholder="Partenza" >
              </div>
            </div>
            <div class="col-lg-6" >
              <div class="form-group"><h5>A:</h5>
                <input type="text" class="form-control mt-2" name=arrivo placeholder="Arrivo" >
              </div>
            </div>
            <div class="col-lg-6" >
              <div class="form-group"><h5>In:</h5>
                <input type="text" class="form-control mt-2" name=durataTotale placeholder="Durata in minuti" >
              </div>
            </div>
            </div>
            <div class="col-lg-7" id='ins2'>
              <div class="form-group">
                <input type="text" class="form-control mt-2" name = fineTratta placeholder="Fine tratta" required >
                <input type="text" class="form-control mt-2" name=compagnia placeholder="Compagnia per questa tratta" >
                <input type="text" class="form-control mt-2" name=durataTratta placeholder="Durata tratta" >
              </div>
            </div>
           
            
            <div class="col-12">
             <div class="col-6">
              <button class="btn btn-light" type="submit" onclick="visualizza(2)" id='btn'>Precedente</button>
              <br>
              </div>
               <div class="col-6 ">
              <button class="btn btn-light" type="submit" onclick="visualizza(1)">Successivo</button>
               </div>
                <div class="col-12">
                <br>
               <button class="btn btn-light" type="submit" onclick="" id='btn2'>Conferma</button>
       			</div>
                 
            </div>
             <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> Annulla
                </button>
          </div>
        </form>
       
      </div>

    </div>
</div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary"  onclick=location.href="index.jsp">Annulla l'inserimento</button>
        <button type="button" class="btn btn-primary col-sm-offset-7" data-dismiss="modal">Continua inserimento</button>
      </div>
      
    </div>
  </div>
</div>

    <%@ include file="footer.jsp" %>
<script > 

 document.getElementById("ins2").style.display="none";
// document.getElementById("").style.display="none";
 //document.getElementById("modi").style.display="block";
 //document.getElementById("np").style.display="none";
 document.getElementById("btn").style.display="none";
 document.getElementById("btn2").style.display="none";

 function visualizza(flag){


	 switch(flag){
	       case(1):
		    document.getElementById("ins2").style.display="block";
	       document.getElementById("ins").style.display="none";
	       document.getElementById("btn").style.display="block";
	       document.getElementById("btn2").style.display="block";

	      // document.getElementById("modi").style.display="none";
	     //  document.getElementById("np").style.display="block";
		   break; 
	       case(2):
		   document.getElementById("ins").style.display="block";
	       document.getElementById("ins2").style.display="none";
	       document.getElementById("btn2").style.display="none";
	       document.getElementById("btn").style.display="none";
	    //   document.getElementById("np").style.display="block";
	       	break;
	       case(3):
			    document.getElementById("ins").style.display="none";
	       document.getElementById("modi").style.display="block";
	       document.getElementById("com").style.display="none";
	       document.getElementById("np").style.display="none";
		       	break;
	       case(4):
			    document.getElementById("modi").style.display="none";
	       document.getElementById("np").style.display="block";
	       document.getElementById("ins").style.display="none";
	       document.getElementById("com").style.display="none";   
	       break;
				
		}
 }
 </script>
</body>

</html>