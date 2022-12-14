import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:homework_5/src/model/index.dart' as cstm;
import 'package:redux/redux.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  static const TextStyle header1 = TextStyle(
    fontSize: 30,
  );
  static const TextStyle header2 = TextStyle(
    fontSize: 20,
  );
  static const TextStyle header3 = TextStyle(
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return StoreConnector<cstm.AppState, cstm.Image?>(
      converter: (Store<cstm.AppState> store) => store.state.selectedImage!,
      builder: (BuildContext context, cstm.Image? image) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Artist: ${image?.user.name!}'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  image!.url.regular,
                  height: MediaQuery.of(context).size.height * .5,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Date: ${image.date}',
                      style: header2,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Likes: ${image.likes}',
                      style: header2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Description: ${image.description}',
                  style: header3,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'About the user:',
                  style: header1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Username: ${image.user.username}',
                  style: header2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Instagram: ${image.user.instagramUsername}',
                  style: header2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Bio: ${image.user.bio}', style: header3),
              ],
            ),
          ),
        );
      },
    );
  }
}
