import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/provider/users.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  //QUANDO CLICAR EM SALVAR SE TIVER TUDO VÁLIDO ELE ENTRA NO SAVE E CHAMA O PROVIDER PRA SALVAR O USUÁRIO
  final Map<String, dynamic> _formData = {};

  void _loadFormData(User user) {
    _formData['id'] = user.id;
    _formData['name'] = user.name;
    _formData['email'] = user.email;
    _formData['avatarURL'] = user.avatarUrl;
  }

  UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context)?.settings.arguments as User;

    _loadFormData(user);

    return Scaffold(
      appBar: AppBar(title: Text("Formulário de usuário"), actions: <Widget>[
        IconButton(
          onPressed: () {
            final isValid = _form.currentState!.validate();
            //vai chamar no formulario o método save no caso os field

            if (isValid) {
              _form.currentState?.save();
              Provider.of<Users>(context).put(User(
                id: _formData['id'],
                name: _formData['name'],
                email: _formData['email'],
                avatarUrl: _formData['avatarURL'],
              ));
              Navigator.of(context).pop();
            }
          },
          icon: Icon(Icons.save),
        )
      ]),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['name'],
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome inválido';
                    }
                    if (value.trim().length < 3) {
                      return 'No mínimo três letras';
                    }
                  },
                  onSaved: (value) => _formData['name'] = value,
                ),
                TextFormField(
                  initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'E-mail'),
                  onSaved: (value) => _formData['email'] = value,
                ),
                TextFormField(
                  initialValue: _formData['avatarURL'],
                  decoration: InputDecoration(labelText: 'URL do Avatar'),
                  onSaved: (value) => _formData['avatarURL'] = value,
                )
              ],
            )),
      ),
    );
  }
}
