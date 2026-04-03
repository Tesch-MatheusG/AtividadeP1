import '../data/usuario_mock_store.dart';
import '../models/usuario_model.dart';

// Responsável pela lógica da tela de login
class LoginViewModel {

  // Método que tenta realizar o login
  UsuarioModel? login(String email, String senha) {

    // Chama o mock store para autenticar
    return UsuarioMockStore.autenticar(email, senha);
  }
}
