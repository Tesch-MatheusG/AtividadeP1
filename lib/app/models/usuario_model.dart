// Model representa a estrutura de dados do usuário
class UsuarioModel {
  // Atributos do usuário
  final String nome;
  final String email;
  final String senha;

  // Construtor obrigatório para criar um usuário
  UsuarioModel({
    required this.nome,
    required this.email,
    required this.senha,
  });
}
