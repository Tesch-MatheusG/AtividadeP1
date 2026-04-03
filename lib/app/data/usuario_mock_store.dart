import '../models/usuario_model.dart';

 // Simula um banco de dados em memória enquanto o app está rodando
class UsuarioMockStore {

  // Lista estática que armazena os usuários enquanto o app está rodando

static List<UsuarioModel> _usuarios = [];

  // Método para adicionar um novo usuário na lista
  static adicionarUsuario(UsuarioModel usuario) {
    _usuarios.add(usuario);
  }

  // Método para autenticar usuário
  static UsuarioModel? autenticar(String email, String senha) {
    try {
      // Procura um usuário com email e senha iguais
      return _usuarios.firstWhere(
        (user) => user.email == email && user.senha == senha,
      );
    } catch (e) {
      // Caso não encontre, retorna null
      return null;
    }
  }
}
