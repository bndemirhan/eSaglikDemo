import 'package:deneme/model/user_model.dart';
import 'package:deneme/service/user_service.dart';
import 'package:flutter/material.dart';

void main() => runApp(Sayfabes());

class Sayfabes extends StatefulWidget {
  @override
  State<Sayfabes> createState() => _SayfabesState();
}

class _SayfabesState extends State<Sayfabes> {
  UserService _service = UserService();
  bool? isLoading;

  List<UsersModelData?> users = [];

  @override
  void initState() {
    super.initState();
    _service.fetchUsers().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          users = value.data!;
          isLoading = true;
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kulanıcı Listesi'),
        ),
        body: isLoading == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : isLoading == true
                ? ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            "${users[index]!.firstName! + users[index]!.lastName!}"),
                        subtitle: Text(users[index]!.email!),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(users[index]!.avatar!),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text("Bir sorun oluştu.."),
                  ),
      ),
    );
  }
}
