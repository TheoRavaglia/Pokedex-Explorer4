import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/favorites_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ChangeNotifierProvider disponibiliza o FavoritesProvider
    // para toda a árvore de widgets (gerenciamento de estado)
    return ChangeNotifierProvider(
      create: (context) => FavoritesProvider(),
      child: MaterialApp(
        title: 'Pokédex Explorer',
        // Define esquema de cores baseado em um seed vermelho
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.red,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.red[600],
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          // Estilo padrão para todos os Botões
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[600],
              foregroundColor: Colors.white,
              elevation: 2,
            ),
          ),
        ),
        // Define a tela inicial (HomeScreen).
        // → IMPORTANTE: se esse arquivo não existir, o app quebra. (ps. Experiência própria)
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
