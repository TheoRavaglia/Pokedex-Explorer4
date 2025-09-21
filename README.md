# Pokédex Explorer

Um aplicativo Flutter interativo que consome a PokéAPI para criar um catálogo completo de Pokémon com funcionalidades de favoritos e busca.

Membros: Guilherme Furquim, Ítalo de Andrade, Otávio Murilo Ribas, Theo Ravaglia

## 🚀 Funcionalidades

### ✅ Implementadas (Requisitos Funcionais)

- **RF01 - Tela Principal (Pokédex)**
  - Lista inicial de Pokémon carregada da PokéAPI
  - Layout em grade (GridView) com imagens e nomes
  - Botão "Carregar Mais" para paginação
  - Indicadores de carregamento e tratamento de erros

- **RF02 - Navegação para Detalhes**
  - Navegação fluida entre telas usando Navigator
  - Toque nos Pokémon para ver detalhes

- **RF03 - Tela de Detalhes do Pokémon**
  - Informações completas: imagem, nome, número, tipos, habilidades
  - Estatísticas: altura, peso, experiência base
  - Cores específicas para cada tipo de Pokémon

- **RF04 - Gerenciamento de Estado com Provider**
  - Sistema de favoritos gerenciado globalmente
  - Botão de favoritar/desfavoritar na tela de detalhes
  - Ícones dinâmicos (estrela vazia/cheia)

- **RF05 - Tela de Favoritos**
  - Lista de Pokémon favoritados
  - Atualização em tempo real
  - Opção para limpar todos os favoritos

- **RF06 - Funcionalidade de Busca (Opcional)**
  - Campo de busca por nome
  - Navegação direta para detalhes do Pokémon encontrado
  - Tratamento de erros para Pokémon não encontrados

- **RF07 - Feedback de UI**
  - Indicadores de carregamento (CircularProgressIndicator)
  - Mensagens de erro amigáveis
  - Estados de loading, sucesso e erro

## 📱 Telas do Aplicativo

### 1. Tela Principal (Home)
- Grid de Pokémon com paginação
- Barra de busca
- Botão para acessar favoritos
- Botão "Carregar Mais"

### 2. Tela de Detalhes
- Imagem em tamanho grande
- Informações completas do Pokémon
- Botão de favoritar
- Cores específicas por tipo

### 3. Tela de Favoritos
- Lista de Pokémon favoritados
- Contador de favoritos
- Opção para limpar todos
- Navegação para detalhes

## 🔧 Configuração e Instalação

### Pré-requisitos
- Flutter SDK 3.9.0 ou superior
- Dart SDK
- Android Studio / VS Code
- Emulador Android ou dispositivo físico

### Passos para execução

1. **Clone o repositório**
   ```bash
   git clone <url-do-repositorio>
   cd pokedex_explorer
   ```

2. **Instale as dependências**
   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo**
   ```bash
   flutter run
   ```

### Dependências do pubspec.yaml
```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
  provider: ^6.1.1
  cupertino_icons: ^1.0.8
```
## 🌐 API Utilizada

- **PokéAPI**: https://pokeapi.co/
- **Documentação**: https://pokeapi.co/docs/v2
- **Endpoint principal**: `/api/v2/pokemon`
- **Sem necessidade de chave de API**
