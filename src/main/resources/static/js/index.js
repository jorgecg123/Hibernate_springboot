jQuery(document).ready(function($){
	//alert("Ready");
    
	var settings = {
		complete:function(jqXHR, textStatus){
			//alert(textStatus);
			//console.log(jqXH.responseText);			
		}
	}    
    
    $.ajax("http://localhost:8080//mostrarprincipal")
            .done( function(data, textStatus, jqXHR){
                console.log(data, textStatus, jqXHR);
                var productos = data;                
                for(var p in productos){
                    var divClone = $("#oculto").clone();
                    divClone.removeAttr("id");
                    var prod = productos[p];
                    divClone.attr('id','');
                    divClone.find("#nombre").text(prod.name);
                    divClone.find("#precio").text(prod.price);
                    divClone.find("#descripcion").text(prod.description);
                    divClone.find("#img").attr('src',''+prod.img);
                    divClone.find("#botonprod").val(prod.name);
                    divClone.show();
                    $("#productos").append(divClone);
                    //dato = null;
                }
                
            }).fail(function(){
           alert("Algo salio mal"); 
        });
    
    
    
    
    
    
    
    $("#buscador").change(function (){
        $("#productos").empty();
        var url="http://localhost:8080/ajax/buscarproductos?nombre=" + $("#buscador").val();
        $.ajax(url)
            .done( function(data, textStatus, jqXHR){
                console.log(data, textStatus, jqXHR);
                var productos = data;                
                for(var p in productos){
                    var divClone = $("#oculto").clone();
                    divClone.removeAttr("id");
                    var prod = productos[p];
                    divClone.attr('id','');
                    divClone.find("#nombre").text(prod.name);
                    divClone.find("#precio").text(prod.price);
                    divClone.find("#descripcion").text(prod.description);
                    divClone.find("#img").attr('src',''+prod.img);
                    divClone.find("#botonprod").val(prod.name);
                    divClone.show();
                    $("#productos").append(divClone);
                    //dato = null;
                }
                
            }).fail(function(){
           alert("Algo salio mal"); 
        });
        
    });
	
});

//https://www.webyempresas.com/wp-content/uploads/2018/04/producto.jpg