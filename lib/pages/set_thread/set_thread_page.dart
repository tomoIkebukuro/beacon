import 'package:beacon_sns/pages/set_profile/set_profile_notifier.dart';
import 'package:beacon_sns/pages/set_thread/set_thread_notifier.dart';
import 'package:beacon_sns/pages/set_thread/set_thread_state.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:beacon_sns/widgets/custom_textform_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class SetThreadPage extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SetThreadNotifier, SetThreadState>(
          create: (context) => SetThreadNotifier(serverRepository: serverRepository),
        ),
      ],
      child: SetThreadPage(),
    );
  }

  @override
  _SetThreadPageState createState() => _SetThreadPageState();
}

class _SetThreadPageState extends State<SetThreadPage> {
  final _formKey = GlobalKey<FormState>();
  String title;
  @override
  Widget build(BuildContext context) {
    final state = context.watch<SetThreadState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ビーコンを設置',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: CustomTextFormField(
                hintText: 'スレッド名',
                maxLength: 144,
                maxLines: 10,
                onChanged: (value) {
                  context.read<SetThreadNotifier>().onNameChanged(value);
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: const Text(
                '設置',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: state.isSetButtonAvailable
                  ? () {
                      context
                          .read<SetThreadNotifier>()
                          .onSetButtonPressed(context);
                    }
                  : null,
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
