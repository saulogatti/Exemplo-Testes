# Copilot Instructions — testenovo

## Visão geral da arquitetura
- Camadas principais em lib/: UI (screen) → Bloc → Repository → DataSource → Api/HttpImpl → Dio.
- Rotas e navegação usam auto_route com configuração em lib/screen/route/app_route.dart e código gerado em lib/screen/route/app_route.gr.dart.
- DI é feita via get_it no arquivo lib/di/app_injection.dart e inicializada em lib/main.dart.

## Fluxos e padrões importantes
- UI com auto_route: telas anotadas com @RoutePage e uso de AutoTabsScaffold (ex.: lib/screen/home/home_screen.dart).
- Bloc/Cubit: telas embrulhadas com BlocProvider via AutoRouteWrapper (ex.: lib/screen/list_users/list_users_screen.dart).
- Repositórios em lib/core/repository/ (ex.: UserRepository) convertem DataResult em modelos de domínio.
- Fonte de dados em lib/data/source/ usa Api + HttpImpl e retorna DataResult (ex.: UserDataSource).
- Modelos de entrada em lib/data/entry/** usam json_serializable com arquivos *.g.dart gerados (ex.: user_entry.dart, list_users.dart).

## Codegen e build
- Este projeto usa build_runner para gerar código do auto_route e json_serializable.
- Comando padrão: dart run build_runner build --delete-conflicting-outputs (há task “Dart Build Runner”).

## Convenções específicas
- Resultados de chamadas remotas são encapsulados em DataResult (lib/utils/data_result.dart) e tratados com pattern matching.
- Evite instanciar Dio diretamente fora de HttpImpl; centralize chamadas HTTP em lib/data/remote/.
- Novas rotas devem ser adicionadas em AppRoute e gerar novamente o app_route.gr.dart.

## Pontos de integração
- HTTP via Dio em lib/data/remote/http_impl.dart.
- APIs são definidas com classes que estendem Api<R, T> (lib/data/remote/api/api.dart).

## Referências rápidas
- Entrada do app: lib/main.dart
- DI: lib/di/app_injection.dart
- Rotas: lib/screen/route/app_route.dart
- Exemplo de fluxo completo: list_users (UI + Bloc + Repository + DataSource)