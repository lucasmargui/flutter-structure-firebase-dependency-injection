<H1 align="center">Flutter Firebase and Dependency Injection</H1>
<p align="center">🚀 Development of a framework containing locator and Firebase for future references</p>

## Resources Used
- Flutter 3.3.5
- Get_it 7.6.0
- Firebase_core 2.24.2
- Firebase_auth 4.16.0




## Configuring Integration with Firebase using Flutter:

### Firebase CLI Installation:

```
npm install -g firebase-tools
```

### Firebase CLI authentication:

```
firebase login
```

- Run the firebase login command to authenticate to Firebase.


### FlutterFire CLI activation:

```
dart pub global activate flutterfire_cli
```

- Use the dart pub global activate flutterfire_cli command to activate the FlutterFire CLI globally.

### FlutterFire Configuration:

```
flutterfire configure
```

- Run the flutterfire configure command and select the project to be configured.




## Development logic:

### Model
- Create the UserModel model to represent user data.



<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/925d8090-bc52-45e4-a00c-fb3d0d3c29b9" style="width:70%">
</div>

### Service Pattern:

- Implement the service pattern to separate business logic from the view layer.

### AuthService Class as Interface:

- Develop the AuthService class as an interface for authentication operations.

 <div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/c67557a5-a38b-40fe-9430-6c920efd36d4" style="width:70%">
</div>




### Implementation of the AuthService Abstract Class:

- Implement the AuthService abstract class with methods that define the required authentication operations.
 <div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/38bf7940-947d-4efb-898e-f643dfb2800d" style="width:70%">
</div>

- Use the FireBaseAuthService class to override the abstract class's methods and integrate operations with the authentication methods provided by Firebase, such as registration and login.

 <div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/10fadca7-e723-4fa9-8902-f5e87e3bff21" style="width:45%">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/49c700ee-594c-4dd1-9a4b-43d4ae6eff45" style="width:45%">
</div>


## Using Get_it

Get_it is known as a simple Service Locator. With it you register your types in an interface and provide the concrete implementation for it.

### Creation of locator for dependency injection

Implementing dependency injection using a Service Locator implies that SignUpPage instantiates the _controller when calling SignUpController(MockAuthService()). It is proposed to remove this responsibility from SignUpPage and transfer it to a locator.

```
locator.registerFactory<AuthService>(() => FirebaseAuthService(),);:

```

This line registers the FirebaseAuthService class as a service in the dependency injection container (locator). Whenever someone requests an AuthService instance, the container returns a new FirebaseAuthService instance.

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/2ecb041a-3af4-4866-b41a-ea12103f29d9" style="width:70%">

### Explanation of use
In other words, Class A transfers responsibility to Locator to retrieve Service A. Page A also transfers responsibility to Locator to retrieve Controller A, which invokes Service A.

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/c36f005b-6d84-46cc-9977-eb18d6141418" style="width:100%">

### Creating controller instance
Creating a controller instance through the locator and using the signUp method
<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/dc252b13-db0b-4406-83bc-546a40ae6849" style="width:100%">

### Demonstrating flow

Demonstrating the SignUp flow using a locator for dependency injection

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Firebase/assets/157809964/7f378eea-f021-4253-9344-49485ea24264" style="width:100%">
