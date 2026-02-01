# testenovo

Teste em Flutter para novo sdk

## Arquitetura do aplicativo

O projeto segue uma separação por camadas para manter o código organizado e
facilitar a evolução do app.

### Camadas e responsabilidades

- **UI (screens)**: componentes de interface e navegação.
	- Pasta: `lib/screen/`
	- Exemplos: `albuns/`, `home/`, `list_users/`, `list_sections/`, `route/`

- **Injeção de dependências (DI)**: composição dos serviços e repositórios.
	- Arquivo: `lib/di/app_injection.dart`

- **Domínio/Core**: modelos e contratos da aplicação.
	- Pasta: `lib/core/`
	- Subpastas: `models/`, `repository/`

- **Dados (data)**: implementação de acesso a dados e fontes.
	- Pasta: `lib/data/`
	- Subpastas: `entry/`, `remote/`, `source/`

- **Utilitários**: helpers e classes de suporte.
	- Pasta: `lib/utils/`
	- Exemplo: `data_result.dart` para padronizar respostas.

### Fluxo de dados (alto nível)

1. A **UI** dispara ações (ex.: carregar usuários).
2. A **DI** fornece a implementação correta de **repositórios**.
3. O **repositório** consulta a camada de **dados** (remoto/local).
4. O resultado é convertido em **modelos** e devolvido para a **UI**.

### Diagrama (simplificado)

UI (screens)
→ DI
→ Repository (core)
→ Data (remote/source/entry)
→ Model

### Tecnologias e pacotes
- Flutter
- flutter_bloc
- auto_route
- dio
