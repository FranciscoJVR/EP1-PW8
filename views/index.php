<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
  </head>
  <body>
  	<main>
      <table id="lista-productos" class="table"> 
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">Descripcion</th>
            <th scope="col">Precio</th>
          </tr>
        </thead>
      </table>
      <div class="container">           
          <div class="row">
            <article class="card col-xs-12 col-sm-12 col-md-4 col-lg-3">
              <button type = "button" onclick="getProducts()">Hacer peticion</button>
            </article>

          </div>
      </div>
      <script type="text/javascript">
      
      //Función para obtener los productos de la base de datos de manera asíncrona
        function getProducts(){
          var xhr = new XMLHttpRequest();
          var url = "http://localhost/mvc-php-master/controllers/ProductsController.php";
          xhr.open('GET',url,true);
          xhr.addEventListener('error', function(e) {
          console.log('Un error ocurrió', e);
          });
          xhr.addEventListener('loadend',function(){
            //console.log('xhr.readyState:',xhr.responseText);

            //La siguiente linea nos sirve para transformar el texto en objeto de JavaScript
            data=eval(xhr.responseText);

            data.forEach(function(producto){
              row = document.createElement("tr");
              idColumna = document.createElement("td");
              nombreColumna = document.createElement("td");
              descripcionColumna = document.createElement("td");
              precioColumna = document.createElement("td");


              idColumna.innerHTML = producto.id;
              nombreColumna.innerHTML = producto.nombre;
              descripcionColumna.innerHTML = producto.descripcion;
              precioColumna.innerHTML = producto.precio;

              row.appendChild(idColumna);
              row.appendChild(nombreColumna);
              row.appendChild(descripcionColumna);
              row.appendChild(precioColumna);

              tbody = document.createElement("tbody");
              tbody.appendChild(row);
              document.querySelector("#lista-productos").appendChild(tbody); 
          });

            }); 
            
          xhr.send();
        }
        
      </script>

  	</main>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
  </body>
</html>
