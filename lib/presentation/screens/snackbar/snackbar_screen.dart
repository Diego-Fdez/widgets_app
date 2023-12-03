import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estás seguro?'),
              content: const Text('Lorem ipsum amet tempor id oficcial'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(onPressed: () {}, child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text('Culpa occaecat consequat ut fugiat.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogos'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar Snackbar'),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
