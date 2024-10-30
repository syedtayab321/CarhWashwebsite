import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: "My favourites"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      body:

          // StreamBuilder(
          //     stream: Firestoreservices.getWishlists(),
          //     builder:
          //         (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          //       if (!snapshot.hasData) {
          //         return Center(
          //           child: loadingIndicator(),
          //         );
          //       } else if (snapshot.data!.docs.isEmpty) {
          //         return "No Items Yet!".text.color(darkFontGrey).makeCentered();
          //       } else {
          //         var data = snapshot.data!.docs;
          //         return

          Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              //data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    imgFc1,
                    //"${data[index]['P_imgs'][0]}",
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  title: "Product Name"
                      //"${data[index]['p_name']} )"
                      .text
                      .white
                      .fontWeight(FontWeight.bold)
                      .size(16)
                      .make(),
                  subtitle: "\$100"
                      // "${data[index]['P_price']}"
                      //.numCurrencyWithLocale()
                      .text
                      .fontWeight(FontWeight.bold)
                      .color(golden)
                      .make(),
                  trailing: Icon(
                    Icons.favorite,
                    color: redColor,
                  ).onTap(() async {
                    // await firestore
                    //     .collection(productscollection)
                    //     .doc(data[index].id)
                    //     .set({
                    //   'P_Wishlist':
                    //       FieldValue.arrayRemove([currentuser!.uid])
                    // }, SetOptions(merge: true));
                  }),
                );
              },
            ),
          ),
        ],
      ),

      //   }
      // }),
    );
  }
}
