import 'package:chat/models/message_model.dart';
import 'package:chat/provider/home_provider.dart';
import 'package:chat/screens/chats_screen.dart';
import 'package:chat/widget/photo_see.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);
  static var homeControler = Get.put(HomeProvider());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(-30),
          bottomRight: Radius.circular(-30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Favorite Contacts",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  icon: Obx(() => Icon(homeControler.seeFavorit.value != false
                      ? Icons.more_horiz
                      : Icons.arrow_drop_down)),
                  onPressed: () => homeControler.seeingFavorit(),
                ),
              ],
            ),
          ),
          Obx(
            () => homeControler.seeFavorit.value != false
                ? Container(
                    height: 120.0,
                    color: const Color(0xFFEFEBE9),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: favorites.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ChatsScreen(user: favorites[index]),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => PhotoSee(
                                          title: favorites[index].name,
                                          urlImage: favorites[index].imageUrl),
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage:
                                        AssetImage(favorites[index].imageUrl),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  favorites[index].name,
                                  style: const TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
