var teste = angular.module('teste', []);

teste.controller('objeto', function($scope){
    $scope.TESTE = {
        nome: ''
    }
})

teste.controller('testou', function($scope, $http){
    $scope.vai = function(){
        console.log('testou');
        console.log('teste: '+JSON.stringify($scope.TESTE));
        $http.post('/testar', $scope.TESTE)
                .success(function(data){
                    console.log('retornou');
        });        
    }    
})


