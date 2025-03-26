# Desafio Clean Architecture | Pós Go Expert

## Instruções
1. Clone o repositório
2. Instale go-migrate
    - Para instalar o go-migrate siga as instruções [aqui](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate#migrate-cli)
3. Entre na pasta do repositório e execute **docker compose up -d**
4. Para criar o banco de dados execute **make migrate**
5. Para rodar a aplicação, à partir da pasta do repositório digite: 
```bash
cd cmd/ordersystem
go run .
```
- O servidor REST estará ouvindo na porta 8000
- O servidor gRPC estará ouvindo na porta 50051
- O servidor GraphSQL estará ouvindo na porta 8080
