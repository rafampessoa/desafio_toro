# Toro

## Motivação

Processo seletivo para Toro Investimentos

## Setup

1. `git clone git@github.com:rafampessoa/desafio_toro.git`
2. Instale as dependências `flutter pub get`
3. `flutter pub run build_runner build --delete-conflicting-outputs`
4. execute o código no emulador

## Features

Splash Screen

Onboarding

Login

Home


## Recursos

Injeção de dependência com get_it

Gerenciamento de rotas com auto_route

Utilização de objetos imutáveis com freezed

Gerenciamento de Estado com BLOC

CI/CD com github actions

Teste Unitários

Teste de Widget

Teste do Bloc

## Arquitetura

### Clean architecture (SOLID) pattern (modular)

Cada módulo deve ser independente menos o **Common** que possui recursos compartilhados entre todos os módulos

- #### Layers
  - Data - Acesso aos dados
    - data*sources - Fonte de dados do app, pode ser remote (fonte externa) ou local (fonte interna). Pattern \_FEATURE_remote_data_source.dart*
    - repository - Acesso ao data*source, responsabilidade da lógica de acesso aos dados e cache. Pattern \_FEATURE_repository.dart*
  - Domain - Lógica de negócio
    - errors - mapear todos possíveis tipos de erros e falhas. Pattern _FEATURE_failures.dart_ ,_FEATURE_erros.dart_ .
    - entities - modelo do dado. Pattern _FEATURE.dart_
    - repository - Implementação do contrato (interface) que será implementado no repository. Pattern _FEATURE_repository.dart_
    - usecases - casos de uso do usuário (lógica de negócio) acesso ao repository. Implementação do contrato e do caso de uso. Pattern _USECASE_use_case.dart_, _USECASE_use_case.dart_
    - utils - class utilitárias como, converters, validators, enums... . Pattern _FEATURE_validator.dart_
  - Presentation - User Interface
    - page - Pattern _FEATURE_page.dart_
    - widgets - componentização
    - utils - mixin e extensions. Pattern _FEATURE_mixin.dart_ e _FEATURE_extension.dart_
    - bloc - acesso a usecases. Pattern _FEATURE_bloc.dart_
    - app.dart - configuração base das UI. Ex: Temas, rotas e título.
    - routes.dart - declaração das rotas.

## Constantes

app_themes.dart - Declação do temas e estilo padrão do app.

assests.dart - Referência ao path dos icones/imagem

constants.dart - Declação das cores, tamanhos de fontes, utilizadas em todo o app.

strings.dart - Declação de todos os textos, frases e palavras no app.
