# Containers Docker - NodeJS and MySQL

Para rodar o projeto:

1. Faça o clone do projeto.
2. Execute no terminal o comando **npm i** na raíz do projeto para "baixar" as depeendências do projeto.
3. EXecute no terminal comando **docker-compose build** na raíz do projeto para fazer o build das imagens Docker.
4. Execute no terminal comando **docker-compose up** para subir os containers(O COMANDO **docker-compose up -d** levanta os containers
em background, ou seja, não trava o terminal, como o docker-compose up).
5. Para parar a execução dos containers execute no terminal o comando **docker-compose down**. Se ao parar os containers, for necessário remover os volumes de dados criados, o comando a ser executado deve ser **docker-compose down -v**.
6. Acesse no navegador a url **localhost:3000**, a porta mapeada para o NodeJS e veja os dados retornados pelo MySQL(O banco e as tabelas são criados a partir de um script SQL na pasta **/scripts** na raíz do projeto. Esse script é executado quando os containers são levantados a partir do docker compose up. Altere o script como quiser, rode novamente o docker compose up e veja 
as alterações no navegador. Se os containers já estiverem em exucução será necessário rodar um **docker compose down -v** antes).

Obs: Lembre sempre de realizar um **docker-compose down** quando não for utilizar mais os containers, pois do contrário os containers continuarão em execução consumindo recursos.
