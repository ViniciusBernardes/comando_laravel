

## Sobre o Teste

Foi realizada as tres partes do teste conforme solicitado

## Parte 1

- Foi criado uma rota no api para acesso de acordo com o parametro "str" que recebe a string e gera um hash.
- Assim que q requisição é feita, gravamos os dados obtidos no banco de dados
- Foi criado uma migration para criaçao da tabela 
- Os teste foram feitos utilizando o software Postman
- Para limitaçao de requisiçao, utilizamos o middleware e foi criado no RouteServiceProvider um RateLimiter com limite de 10 requisições por IP
- Caso ultrapasse as 10 requisiçoes será enviado o status 429 - Too Many Attempts

## Parte 2

- Criamos o comando para acesso a rota que está localizado em app\Console\Commands\webdev
- Para chamado a funçao utilize esse comando: php artisan webdev:test "string" --request=10  
- O webdev:test é o nome do comando, a string é a palavra que iremos passar e o --request é o numero de requisições que será realizada
- O retorno dessa funçao é o hash gerado e a chave que foi utilizada para geraçao do hash

## Parte 3

- Utilizamos o route web para acessar a funçao conulta
- Na consulta buscamos todos as string geradas na parte um e mostramos em paginaçao conforme solicitado
- Utilizamos um select para filtrar a quantidade de requisições
- Criamos uma view blade chamada resultado para mostrar o retorno do banco de dados
- Na pasta bd da raiz está o banco de dados
