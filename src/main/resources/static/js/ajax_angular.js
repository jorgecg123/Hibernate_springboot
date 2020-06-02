angular.module('Tienda', []).controller('TiendaCtrl', function($http){
    var ctrl = this;
    ctrl.newProducto = {};
    ctrl.newCategoria = {};
    
    ctrl.listProductos = function (){
        var req = {
            method : 'GET',
            url : '/categories',
            headers : {
                'Content-Type' : 'application/json'
            },
        }
        $http(req).then(function(result){
            ctrl.productos = resul.data
        }, function(){
            
        });
    };
    
    ctrl.addProducto = function(producto){
        var req = {
            method : 'POST',
            url : '/categories',
            headers : {
                'Content-Type' : 'application/json'
            },
            data : producto
        }
        $http(req).then(function(){
            ctrl.listProductos();
            ctrl.newProducto = {};
        }, function(){
            
        });
    };
    
    ctrl.listCat = function(){
        var req = {
            method : 'GET',
            url : '/categoria',
            headers : {
                'Content-Type' : 'application/json'
            },
        }
        $http(req).then(function(result){
            ctrl.categorias = result.data
        }, function(){
            
        });
    };
    
    ctrl.addCat = function(categoria) {
        var req = {
            method : 'POST',
            url : '/team',
            headers : {
                'Content-Type' : 'application/json'
            },
            data : categoria
        }
        $http(req).then(function(){
            ctrl.listCat();
            ctrl.newCategoria = {};
        }, function(){
            
        });
    };
    
    
});