import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/button.dart';
import '../../components/text_field.dart';
import '../../manage/manage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameCtr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();
  @override
  void initState() {
    context.read<AuthManage>().start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Text(
                    "Trang đăng nhập",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                ],
              ),
              Column(
                children: [
                  CustomTextField(
                    controller: usernameCtr,
                    label: 'Tên đăng nhập',
                  ),
                  CustomTextField(
                    controller: passwordCtr,
                    label: 'Mật khẩu',
                    obscureText: true,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    width: double.infinity,
                    child: PillButton(
                      onPressed: () {
                        if (context
                            .read<AuthManage>()
                            .signIn(usernameCtr.text, passwordCtr.text)) {
                          Navigator.pushReplacementNamed(context, '/menu');
                        }
                      },
                      title: 'Đăng nhập',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
