import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Exemplo de como usar TreeSliver para exibir uma estrutura de árvore com nós expansíveis.
/// Este exemplo é inspirado em um típico gerenciador de arquivos, onde pastas podem ser expandidas para mostrar seu conteúdo.
/// A estrutura de árvore é representada por uma lista de [TreeSliverNode], onde cada nó pode conter filhos, formando uma hierarquia.
@RoutePage(name: "TreeSectionWidgetRoute")
class TreeSectionWidget extends StatefulWidget {
  const TreeSectionWidget({super.key});

  @override
  State<TreeSectionWidget> createState() => _TreeSectionWidgetState();
}

class _TreeSectionWidgetState extends State<TreeSectionWidget> {
  TreeSliverNode<String>? _selectedNode;
  final List<TreeSliverNode<String>> tree = <TreeSliverNode<String>>[
    TreeSliverNode<String>('README.md'),
    TreeSliverNode<String>('analysis_options.yaml'),
    TreeSliverNode<String>(
      'lib',
      children: <TreeSliverNode<String>>[
        TreeSliverNode<String>(
          'src',
          children: <TreeSliverNode<String>>[
            TreeSliverNode<String>(
              'widgets',
              children: <TreeSliverNode<String>>[
                TreeSliverNode<String>('about.dart.dart'),
                TreeSliverNode<String>('app.dart'),
                TreeSliverNode<String>('basic.dart'),
                TreeSliverNode<String>('constants.dart'),
              ],
            ),
          ],
        ),
        TreeSliverNode<String>('widgets.dart'),
      ],
    ),
    TreeSliverNode<String>('pubspec.lock'),
    TreeSliverNode<String>('pubspec.yaml'),
    TreeSliverNode<String>(
      'test',
      children: <TreeSliverNode<String>>[
        TreeSliverNode<String>(
          'widgets',
          children: <TreeSliverNode<String>>[
            TreeSliverNode<String>('about_test.dart'),
            TreeSliverNode<String>('app_test.dart'),
            TreeSliverNode<String>('basic_test.dart'),
            TreeSliverNode<String>('constants_test.dart'),
          ],
        ),
      ],
    ),
  ];

  TreeSliverController controller = TreeSliverController();

  @override
  Widget build(BuildContext context) {
    // A tela é dividida em duas partes: a árvore de navegação à esquerda e a visualização de detalhes à direita. A árvore ocupa metade da largura da tela, enquanto a visualização de detalhes ocupa a outra metade. Quando um nó é selecionado na árvore, suas informações são exibidas na visualização de detalhes.
    final Size screenSize = MediaQuery.sizeOf(context);
    final List<Widget> selectedChildren = <Widget>[];
    if (_selectedNode != null) {
      selectedChildren.addAll(<Widget>[
        const Spacer(),
        Icon(_selectedNode!.children.isEmpty ? Icons.file_open_outlined : Icons.folder_outlined),
        const SizedBox(height: 16.0),
        Text(_selectedNode!.content),
        const Spacer(),
      ]);
    }
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            // A árvore ocupa metade da largura da tela, e a visualização de detalhes ocupa a outra metade.
            width: screenSize.width / 2,
            height: double.infinity,
            child: CustomScrollView(slivers: <Widget>[_getTree()]),
          ),
          DecoratedBox(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: SizedBox(
              // A visualização de detalhes ocupa a outra metade da largura da tela, e exibe informações sobre o nó selecionado.
              width: screenSize.width / 2,
              height: double.infinity,
              child: Center(child: Column(children: selectedChildren)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTree() {
    return DecoratedSliver(
      decoration: BoxDecoration(border: Border.all(color: Colors.purple[300]!)),
      position: DecorationPosition.background,
      sliver: TreeSliver<String>(
        controller: controller,
        tree: tree,
        onNodeToggle: (TreeSliverNode<Object?> node) {
          setState(() {
            _selectedNode = node as TreeSliverNode<String>;
          });
        },
        treeNodeBuilder: _treeNodeBuilder,

        treeRowExtentBuilder: (TreeSliverNode<Object?> node, SliverLayoutDimensions layoutDimensions) {
          // Nós pais têm uma altura maior para acomodar o ícone de expansão, enquanto os nós folha têm uma altura menor.
          return node.children.isNotEmpty ? 60.0 : 50.0;
        },
      ),
    );
  }

  /// O construtor de nós personalizado é responsável por construir a aparência de cada nó na árvore, incluindo a indentação, os ícones de expansão e o conteúdo do nó. Ele utiliza a profundidade do nó para calcular a indentação, e verifica se o nó é um nó pai (com filhos) para decidir se deve exibir um ícone de expansão. O conteúdo do nó é exibido como texto ao lado do ícone.
  Widget _treeNodeBuilder(
    BuildContext context,
    TreeSliverNode<Object?> node,
    AnimationStyle toggleAnimationStyle,
  ) {
    final bool isParentNode = node.children.isNotEmpty;
    final BorderSide border = BorderSide(width: 2, color: Colors.purple[300]!);
    return TreeSliver.wrapChildToToggleNode(
      node: node,
      child: Row(
        children: <Widget>[
          // Indentação personalizada
          SizedBox(width: 10.0 * node.depth! + 8.0),
          DecoratedBox(
            decoration: BoxDecoration(
              border: node.parent != null ? Border(left: border, bottom: border) : null,
            ),
            child: const SizedBox(height: 50.0, width: 20.0),
          ),
          // Ícone principal para nós pais
          if (isParentNode)
            DecoratedBox(
              decoration: BoxDecoration(border: Border.all(color: Colors.purple[100]!)),
              child: SizedBox.square(
                dimension: 20.0,
                child: Icon(node.isExpanded ? Icons.remove : Icons.add, size: 14),
              ),
            ),

          // Conteúdo do nó
          Text(node.content.toString()),
        ],
      ),
    );
  }
}
