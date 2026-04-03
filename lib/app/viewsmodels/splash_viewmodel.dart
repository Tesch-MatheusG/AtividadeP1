import 'dart:async';

// Responsável pela lógica da SplashScreen
class SplashViewModel {

  // Método que executa o delay e chama navegação
  Future<void> iniciar(Function navegar) async {

    // Aguarda 3 segundos
    await Future.delayed(Duration(seconds: 3));

    // Executa a função de navegação passada como parâmetro
    navegar();
  }
}
