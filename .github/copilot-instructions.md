# Copilot Instructions — testenovo

## Visão geral da arquitetura
- Camadas principais em lib/: UI (screen) → Bloc/Cubit → Use case → Repository → DataSource → Api/HttpImpl → Dio.
- Rotas e navegação via auto_route em lib/screen/route/app_route.dart com código gerado em lib/screen/route/app_route.gr.dart.
- DI via get_it em lib/di/app_injection.dart, inicializada em lib/main.dart (baseUrl dummyjson.com).

## Fluxos e padrões importantes
- Telas com @RoutePage e AutoRouteWrapper para injetar Bloc/Cubit (ex.: lib/screen/list_users/users_list_view.dart, lib/screen/product/product_list_view.dart).
- Users usa Cubit com estados simples (lib/screen/list_users/bloc/list_users_bloc.dart).
- Products usa Bloc + Freezed unions (lib/screen/product/bloc/product_state.dart e product_state.freezed.dart).
- Resultados remotos encapsulados em DataResult e tratados com pattern matching (lib/utils/data_result.dart).
- APIs remotas estendem Api<R, T> e definem HttpMethod + parseResponse (ex.: lib/data_source/remote/api/user/api_user_list.dart).
- Modelos de entrada em lib/data_source/entry/** usam json_serializable com *.g.dart (não editar arquivos gerados).

## Fluxo de dados (exemplo)
- Users: UI → ListUsersBloc → UserActions → UserRepository → UserDataSource → ApiUserList → HttpImpl/Dio.
- Repositórios convertem Entry para Model de domínio (ex.: lib/data_source/user_repository.dart).

## Codegen e build
- build_runner gera auto_route, json_serializable e freezed: app_route.gr.dart, *.g.dart, product_state.freezed.dart.
- Task padrão: Dart Build Runner = dart run build_runner build --delete-conflicting-outputs.

## Integrações
- HTTP centralizado em lib/data_source/remote/http_impl.dart (Dio + LogInterceptor). Não instanciar Dio fora de HttpImpl.
- Novas rotas devem ser adicionadas em AppRoute e gerar novamente o app_route.gr.dart.