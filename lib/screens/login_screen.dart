import 'package:flutter/material.dart';
import 'package:ps_app_ong/components/app_bar.dart';
import 'package:ps_app_ong/components/drawer_login_app.dart';
import 'package:ps_app_ong/components/footer_app.dart';
import 'package:ps_app_ong/model/user_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    UserModel userModel =
        UserModel(nomeUsuario: 'marcos_junior', senha: '1234');
    late String nomeUsuario;
    late String senha;
    return Scaffold(
      appBar: appBarComponent(),
      drawer: drawerComponentLogin(),
      body: Container(
        padding:
            const EdgeInsets.only(bottom: 70, top: 20, left: 20, right: 20),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 235, 235, 1),
                Color.fromRGBO(77, 114, 152, 1),
              ],
            ),
          ),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  'assets/images/icon_user_cinza.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Form(
                key: formKey,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.white,
                            // background: Colors.red,
                          ),
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            hintText: 'Digite o nome do usuário',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            labelText: 'Usuário',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(83, 72, 72, 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(240, 202, 132, 1),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            focusColor: Colors.black,
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Digite o nome do usuario';
                            } else if (value != userModel.nomeUsuario) {
                              return 'Nome do usuário inválido';
                            }
                            return null; //Indica que tá tudo certo
                          },
                          onSaved: (newValue) {
                            nomeUsuario = newValue as String;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.white,
                            // background: Colors.red,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            hintText: 'Digite a senha do usuário',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            labelText: 'Senha',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(83, 72, 72, 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(240, 202, 132, 1),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            focusColor: Colors.black,
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Digite a senha do usuario';
                            } else if (value != userModel.senha) {
                              return 'Senha do usuário inválido';
                            }
                            return null; //Indica que tá tudo certo
                          },
                          onSaved: (newValue) {
                            senha = newValue as String;
                          },
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(245, 245, 245, 1),
                          onPrimary: const Color.fromRGBO(83, 72, 72, 1),
                          side: const BorderSide(
                            color: Color.fromRGBO(240, 202, 132, 1),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 12,
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();

                            Navigator.pushNamed(
                              context,
                              '/report-type',
                            );
                          }
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const FooterApp(),
    );
  }
}
