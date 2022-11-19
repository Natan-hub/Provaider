import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/data/dummy_users.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:provider/provider.dart';
import '../components/user_tile.dart';
import '../provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        //para mostrar todos os elementos
        itemCount: users.count,
        itemBuilder: (context, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
