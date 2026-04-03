# Barra Hotel App

Aplicativo mobile. O projeto simula o sistema de acesso de um hotel.
---

## Estrutura de Pastas

```
lib/
├── main.dart
└── app/
    ├── models/
    │   └── usuario_model.dart
    ├── data/
    │   └── usuario_mock_store.dart
    ├── viewmodels/
    │   ├── splash_viewmodel.dart
    │   ├── login_viewmodel.dart
    │   └── signup_viewmodel.dart
    └── views/
        ├── cores.dart
        ├── splash_page.dart
        ├── login_page.dart
        ├── signup_page.dart
        └── home_page.dart
```

---

##  Arquitetura

O projeto segue a separação de responsabilidades entre três camadas:

- **Views**: responsáveis pela interface visual e interação com o usuário. Não contêm lógica de negócio.
- **ViewModels**: contêm a lógica de cada tela, como autenticação e cadastro.
- **Models**: representam os dados do sistema, como o `UsuarioModel`.

---

## Fluxo do Aplicativo

```
Splash → Login → Cadastro (opcional) → Login → Home
```

1. Ao abrir o app, a **SplashScreen** é exibida por alguns segundos.
2. O sistema navega automaticamente para a tela de **Login**.
3. Caso o usuário não tenha cadastro, pode acessar a tela de **Cadastro**.
4. Após se cadastrar, retorna para o **Login**.
5. Com as credenciais corretas, o usuário é direcionado para a **Home**.

---

## Armazenamento de Dados

Os dados dos usuários são armazenados **em memória**, sem uso de banco de dados ou API externa. A estrutura utilizada é:

```dart
List<UsuarioModel>
```

Mantida por uma classe `UsuarioMockStore`, acessível por todas as telas durante a execução do app. A tela de Cadastro adiciona usuários a essa lista, e a tela de Login consulta essa mesma lista para autenticação.

---

## Telas

### Splash
Primeira tela exibida ao abrir o app. Mostra a identidade visual do hotel (imagem de fundo e logo) e navega automaticamente para o Login após alguns segundos.

### Login
Permite que o usuário acesse o sistema informando e-mail/CPF e senha. Os dados são validados e verificados na lista mockada. Em caso de erro, uma mensagem é exibida na tela.

### Cadastro
Formulário com os campos: Nome, E-mail, Telefone, CPF, CEP, Endereço, Senha e Confirmação de Senha. Ao cadastrar, os dados são salvos em memória como um `UsuarioModel` e o usuário é redirecionado para o Login.

### Home
Tela principal acessada após login bem-sucedido. Exibe informações sobre o hotel organizadas em seções: **Sobre o Hotel**, **Por que Escolher o Barra Hotel?** e **Diferenciais**. Possui barra de navegação inferior com as abas Início, Quartos e Assistente.

---

## Como Rodar o Projeto

**Pré-requisitos:** Flutter instalado na máquina.

```bash
# Instalar dependências
flutter pub get

# Rodar o app
flutter run
```

---

## Integrantes do Grupo

- Thiago Mafra Domingues / RA 25000115
- Matheus Gabriel de Melo Tesch / RA 25001921
- Poliana Procópio Machado Vela / RA 25000022
- Vitória Martins da Silva / RA 25000099
---

## Repositório

