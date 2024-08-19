import 'package:flix_id/presentation/misc/constants.dart';
import 'package:flix_id/presentation/providers/router/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        physics: const ClampingScrollPhysics(
            //parent: AlwaysScrollableScrollPhysics(),
            ),
      ),
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
              seedColor: saffron,
              // ignore: deprecated_member_use
              background: backgroundPage,
              brightness: Brightness.dark),
          useMaterial3: true,
          textTheme: TextTheme(
              bodyMedium: GoogleFonts.poppins(
                  color: ghostWhite), //text untuk yang default
              bodyLarge: GoogleFonts.poppins(
                  color: ghostWhite), //untuk di body dan label
              labelLarge: GoogleFonts.poppins(
                  color: ghostWhite))), //untuk button di font
      debugShowCheckedModeBanner: false,
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
    );
  }
}
