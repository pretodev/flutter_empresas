![N|Solid](logo_ioasys.png)

# Desafio Pessoa Desenvolvedora Flutter

Este repositório possui o projeto do teste técnico da IOAsys para o cargo de pessoa desenvolvedora Flutter. 

O objetivo foi criar uma aplicação Flutter que faça buscas de empresas em uma API e mostre detalhes dessas empresas. Foi necessário que o usuário se autenticasse por um meio de um serviço OAuth 2.


## 📱Escopo de projeto
Deve ser criado um aplicativo em Flutter com as seguintes especificações:

* Login e acesso de Usuário já registrado
    * Para o login usamos padrões OAuth 2.0. Na resposta de sucesso do login a api retornará 3 custom headers (access-token, client, uid);
    * Para ter acesso as demais APIS precisamos enviar esses 3 custom headers para a API autorizar a requisição;


* Busca de Empresas e Listagem de Empresas

* Detalhamento de Empresas


## 📦 Packages utilizados

- Bloc
- Freezed
- FPDart
- Dio
- Flutter Sucere storage
- Google Fonts
- Flutter SVG
- String Validator
- Cached Network Image

## 🚨 Materiais de apoio
* Layout e recortes disponíveis no Figma (https://bit.ly/3qWDQk8)
* Integração disponível a partir de uma collection para Postman (https://www.getpostman.com/apps) disponível neste repositório.

## Dados para Teste
* Servidor: https://empresas.ioasys.com.br/api
* Versão da API: v1
* Usuário de Teste: testeapple@ioasys.com.br
* Senha de Teste : 12341234