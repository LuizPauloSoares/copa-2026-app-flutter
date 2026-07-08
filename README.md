# 🏆 Copa 2026 App

Aplicativo Flutter simples desenvolvido para demonstrar o carregamento de imagens da internet utilizando o widget `Image.network`, com tratamento de estados de carregamento e erro.

## 📱 Sobre o projeto

O app exibe uma tela única com uma imagem relacionada à Copa do Mundo 2026, carregada diretamente de uma URL externa. O projeto foi criado com fins didáticos, explorando conceitos fundamentais do Flutter como:

- Carregamento de imagens externas (`Image.network`)
- Feedback visual durante o carregamento (`loadingBuilder`)
- Tratamento de erros ao carregar imagem (`errorBuilder`)
- Uso de `Card`, `Column`, `Padding` e outros widgets de layout
- `SnackBar` para exibir mensagens temporárias ao usuário

## 🚀 Tecnologias utilizadas

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)

## 📸 Funcionalidades

- Exibição de imagem carregada via internet
- Indicador de progresso enquanto a imagem carrega
- Tela de erro amigável caso a imagem não carregue
- Botão interativo que exibe um SnackBar informativo

## 🛠️ Como executar o projeto

### Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado
- Um emulador Android/iOS configurado ou dispositivo físico conectado
- Android Studio ou VS Code (com extensões Flutter/Dart)

### Passo a passo

Clone o repositório:

```bash
git clone https://github.com/LuizPauloSoares/copa-2026-app-flutter.git
cd copa-2026-app-flutter
```

Instale as dependências:

```bash
flutter pub get
```

Execute o aplicativo:

```bash
flutter run
```

## 📂 Estrutura do projeto

```
lib/
 └── main.dart      # Contém toda a lógica e interface do app
```

## 🎯 Próximos passos (ideias de melhoria)

- [ ] Adicionar múltiplas telas/navegação
- [ ] Buscar imagens dinamicamente via API
- [ ] Adicionar testes automatizados
- [ ] Melhorar responsividade para tablets

## 👤 Autor

**Luiz Paulo Soares**

- GitHub: [@LuizPauloSoares](https://github.com/LuizPauloSoares)
- LinkedIn: [linkedin.com/in/luiz-paulo-soares](https://linkedin.com/in/luiz-paulo-soares/)

## 📄 Licença

Este projeto está sob a licença MIT. Sinta-se livre para usar, estudar e modificar.
