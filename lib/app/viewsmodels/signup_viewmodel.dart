import '../data/usuario_mock_store.dart';
import '../models/usuario_model.dart';

// Responsável pela lógica da tela de cadastro
class SignupViewModel {

  // Método para cadastrar usuário
  void cadastrar(String nome, String email, String senha) {

    // Cria um novo objeto UsuarioModel
    final usuario = UsuarioModel(
      nome: nome,
      email: email,
      senha: senha,
    );

    // Adiciona o usuário na lista mockada
    UsuarioMockStore.adicionarUsuario(usuario);
  }
}
