<H1 align="center">Flutter Firebase e Injeção de Dependência</H1>
<p align="center">🚀 Desenvolvimento de uma estrutura contendo locator e Firebase para referências futuras</p>

## Recursos Utilizados
- Flutter 3.3.5
- Get_it 7.6.0
- Firebase_core 2.24.2
- Firebase_auth 4.16.0




## Configuração de Integração com Firebase utilizando Flutter:

### Autenticação no Firebase CLI:

- Execute o comando firebase login para autenticar-se no Firebase.

### Ativação do FlutterFire CLI:

- Utilize o comando dart pub global activate flutterfire_cli para ativar o FlutterFire CLI globalmente.
  
### Configuração do FlutterFire:

- Execute o comando flutterfire configure e selecione o projeto a ser configurado.
  
### Adição do pacote firebase_core:

- Adicione o pacote firebase_core ao seu projeto Flutter com o comando flutter pub add firebase_core.

### Reconfiguração do FlutterFire:

- Após adicionar o pacote firebase_core, é necessário novamente configurar o FlutterFire. Execute flutterfire configure para isso.


### Adição do pacote firebase_auth:

- Adicione o pacote firebase_auth ao seu projeto Flutter com o comando flutter pub add firebase_auth.

### Reconfiguração Final do FlutterFire:

- Para garantir a integração correta, execute novamente o comando flutterfire configure após adicionar o pacote firebase_auth.


## Lógica de desenvolvimento :  

### Model 
- Crie o model UserModel para representar os dados do usuário.



<div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/925d8090-bc52-45e4-a00c-fb3d0d3c29b9" style="width:70%">
</div>

### Service Pattern:

- Implemente o padrão de serviço para separar a lógica de negócios da camada de visualização.
  
### Classe AuthService como Interface:

- Desenvolva a classe AuthService como uma interface para as operações de autenticação.

  <div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/c67557a5-a38b-40fe-9430-6c920efd36d4" style="width:70%">
</div>




### Implementação da Classe Abstrata AuthService:

- Implemente a classe abstrata AuthService com métodos que definem as operações de autenticação necessárias.
  <div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/38bf7940-947d-4efb-898e-f643dfb2800d" style="width:70%">
</div>

- Utilize a classe FireBaseAuthService para sobrescrever os métodos da classe abstrata e integrar as operações com os métodos de autenticação fornecidos pelo Firebase, como cadastro e login.

  <div align="center">
  <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/10fadca7-e723-4fa9-8902-f5e87e3bff21" style="width:45%">
   <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/49c700ee-594c-4dd1-9a4b-43d4ae6eff45" style="width:45%">
</div>


## Utilizando Get_it 

Get_it é conhecido como um Service Locator simples. Com ele você registra seus tipos em uma interface e fornece a implementação concreta a ela.

### Criação do locator para injeção de dependência

A implementação de injeção de dependência usando um Service Locator implica que a SignUpPage instancia o _controller ao chamar SignUpController(MockAuthService()). Propõe-se remover essa responsabilidade da SignUpPage e transferi-la para um locator.

```
locator.registerFactory<AuthService>(() => FirebaseAuthService(),);:

```

Esta linha registra a classe FirebaseAuthService como um serviço no contêiner de injeção de dependência (locator). Sempre que alguém solicitar uma instância de AuthService, o contêiner retornará uma nova instância de FirebaseAuthService.

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/2ecb041a-3af4-4866-b41a-ea12103f29d9" style="width:70%">

### Explicação da utilização
Em outras palavras, a Classe A transfere a responsabilidade para o Locator para recuperar o Serviço A. A Page A também transfere a responsabilidade para o Locator para recuperar o Controller A, que invoca o Serviço A.

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/c36f005b-6d84-46cc-9977-eb18d6141418" style="width:100%">

### Criando instância de controller
Criando instância de controller através do locator e utilizando o método de signUp
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/dc252b13-db0b-4406-83bc-546a40ae6849" style="width:100%">

### Demonstrando fluxo

Demonstrando o fluxo de SignUp utilizando um locator para injeção de dependência

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/7f378eea-f021-4253-9344-49485ea24264" style="width:100%">











  



