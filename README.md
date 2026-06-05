# testenovo

Projeto em Flutter para estudo de arquitetura limpa, com injeção de dependências e separação por camadas. O foco é manter o app simples, modular e fácil de evoluir.

## Arquitetura do aplicativo

O projeto segue uma separação por camadas para manter o código organizado e facilitar a evolução do app.

### Camadas e responsabilidades

- **UI (screens)**: componentes de interface e navegação.
  - Pasta: [lib/screen/](lib/screen/)
  - Exemplos: [lib/screen/home/](lib/screen/home/), [lib/screen/list_users/](lib/screen/list_users/), [lib/screen/list_sections/](lib/screen/list_sections/), [lib/screen/route/](lib/screen/route/)

- **Injeção de dependências (DI)**: composição dos serviços e repositórios.
  - Arquivo: [lib/di/app_injection.dart](lib/di/app_injection.dart)

- **Domínio/Core**: modelos e contratos da aplicação.
  - Pasta: [lib/domain/](lib/domain/)
  - Subpastas: [lib/domain/models/](lib/domain/models/), [lib/domain/repository/](lib/domain/repository/), [lib/domain/use_case/](lib/domain/use_case/)

- **Dados (dataSources)**: implementação de acesso a dados e fontes.
  - Pasta: [lib/data_source/](lib/data_source/)
  - Subpastas: [lib/data_source/entry/](lib/data_source/entry/), [lib/data_source/remote/](lib/data_source/remote/), [lib/data_source/source/](lib/data_source/source/)

- **Utilitários**: helpers e classes de suporte.
  - Pasta: [lib/utils/](lib/utils/)
  - Exemplo: [lib/utils/data_result.dart](lib/utils/data_result.dart) para padronizar respostas.

### Fluxo de dados (alto nível)

1. A **UI** dispara ações (ex.: carregar usuários).
2. A **DI** fornece a implementação correta de **repositórios**.
3. O **repositório** consulta a camada de **dados** (remote/source/entry).
4. O resultado é convertido em **modelos** e devolvido para a **UI**.

### Diagrama (simplificado)

UI (screens)
→ DI
→ Repository (core)
→ Data (remote/source/entry)
→ Model

## Como executar

1. Instale as dependências:

```bash
flutter pub get
```

2. Rode o app:

```bash
flutter run
```

## Geração de código

Este projeto usa build_runner para gerar código do auto_route e json_serializable.

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Tecnologias e pacotes

- Flutter
- flutter_bloc
- auto_route
- dio


Os dados são obtidos de https://dummyjson.com/ para simular uma API real.
Para mais detalhes, consulte o repositório oficial: https://github.com/Ovi/DummyJSON.
