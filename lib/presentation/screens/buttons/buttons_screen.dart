import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/normalize.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: const Icon(Icons.arrow_back_ios_new_rounded)),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    var screenUtil = ScreenUtil(context);
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: scaleWidth(10, screenUtil),
            vertical: scaleHeight(20, screenUtil)),
        child: Wrap(
            spacing: scaleWidth(10, screenUtil),
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Elevated Button')),
              const ElevatedButton(
                  onPressed: null, child: Text('Elevated Disabled')),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon'),
              ),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('Filled Icon')),
              OutlinedButton(onPressed: () {}, child: const Text('Outline')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_sharp),
                  label: const Text('Outline Icon')),
              TextButton(onPressed: () {}, child: const Text('Text Button')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_chart_outlined),
                  label: const Text('Text Button Icon')),
              const CustomButton(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box),
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    iconColor: MaterialStatePropertyAll(colors.primary)),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: MaterialStatePropertyAll(colors.onSecondary)),
              )
            ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    var screenUtil = ScreenUtil(context);
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: scaleSp(20, screenUtil),
                  vertical: scaleSp(10, screenUtil)),
              child: const Text(
                'Hi',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
