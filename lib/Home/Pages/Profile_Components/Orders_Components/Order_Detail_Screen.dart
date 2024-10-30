import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

import 'Order_Place_Details_Screen.dart';
import 'Order_Status_SCreen.dart';
import 'package:intl/intl.dart' as intl;

class OrdersDetailScreen extends StatelessWidget {
  // final dynamic data;
  const OrdersDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: purpleColor,
        title: "Order Details"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          // scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  OrderStatus(
                    color: redColor,
                    icon: Icons.done,
                    title: "Placed",
                    showdone: false,
                    //showdone: 'order_place',
                    // data['order_place']
                  ),
                  OrderStatus(
                    color: Vx.blue900,
                    icon: Icons.thumb_up,
                    title: "Confirmed",
                    showdone: false,
                    // showdone: 'order_confirm'
                    //  data['order_confirm']
                  ),
                  OrderStatus(
                    color: Colors.yellow,
                    icon: Icons.car_crash,
                    title: "Delivery",
                    showdone: true,
                    // 'order_on_delivery',
                    // data['order_on_delivery']
                  ),
                  OrderStatus(
                    color: Colors.purple,
                    icon: Icons.done_all_rounded,
                    title: "Delivered",
                    showdone: false,
                    // showdone: 'order_delivered',
                    //data['order_delivered']
                  ),
                  Divider(),
                  10.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    /////////////
                    children: [
                      orderplacedetails(
                        d1: '2335467488Xyz2233',
                        //data['order_code'],
                        d2: "Pick up from Office",
                        //data['Shipping_Method'],
                        title1: "Order Code",
                        title2: "Car Pickup Method",
                      ),
                      orderplacedetails(
                        d1: "20/10/2024",
                        // data['order_date'] != null
                        // ? intl.DateFormat.yMd().format(
                        //     (data['order_date'] as Timestamp).toDate(),
                        //   )
                        // : 'Not Available',
                        // d1: intl.DateFormat.yMd()
                        //     .format((data['order_date'] as DateTime)),
                        d2: "Cash On Delivery",
                        //data['Payment_Method'],
                        title1: "Order Date",
                        title2: "Payment Method",
                      ),
                      orderplacedetails(
                        d1: "Unpaid",
                        d2: "Order Placed",
                        title1: "Payment Status",
                        title2: "Delivery Status",
                      ),
                      ////////////////
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Car Owner Address"
                                    .text
                                    .color(whiteColor)
                                    .fontWeight(FontWeight.w600)
                                    .make(),
                                "ABX DEV".text.color(Colors.white70).make(),
                                "abxdev@gmail.com"
                                    .text
                                    .color(Colors.white70)
                                    .make(),
                                "Jakarta, Indonesia"
                                    .text
                                    .color(Colors.white70)
                                    .make(),
                                "Indonesia".text.color(Colors.white70).make(),
                                "Jakarta".text.color(Colors.white70).make(),
                                "+920000000000"
                                    .text
                                    .color(Colors.white70)
                                    .make(),
                                "00520".text.color(Colors.white70).make(),

                                //"${data['order_by_name']}".text.make(),
                                // "${data['order_by_email']}".text.make(),
                                // "${data['order_by_address']}".text.make(),
                                // "${data['order_by_state']}".text.make(),
                                // "${data['order_by_city']}".text.make(),
                                // "${data['order_by_phone']}".text.make(),
                                // "${data['order_by_postal_code']}".text.make()
                              ],
                            ),
                            /////////////////
                            SizedBox(
                              width: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Total Amount"
                                      .text
                                      .color(Colors.white)
                                      .fontWeight(FontWeight.w600)
                                      .make(),
                                  //"${data['total_amount']}"
                                  "\$100"
                                      //.numCurrencyWithLocale()
                                      .text
                                      .color(golden)
                                      .fontWeight(FontWeight.bold)
                                      .make(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: "Description"
                            .text
                            .white
                            .fontWeight(FontWeight.w600)
                            .make(),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: "This iS my Car i want to be clean this"
                            .text
                            .color(Colors.white70)
                            .make(),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: "Car Images"
                            .text
                            .white
                            .fontWeight(FontWeight.w600)
                            .make(),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                            imgFc1,
                            // "${data['desciption_img']}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ).box.outerShadowMd.roundedSM.color(purpleColor).make(),
                  ////////////////////

                  Divider(),
                  10.heightBox,
                  "Orderd Service"
                      .text
                      .size(16)
                      .fontWeight(FontWeight.w600)
                      .color(whiteColor)
                      .makeCentered(),
                  10.heightBox,
                  /////////////////////////////
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(1, (index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          orderplacedetails(
                            title1: "placed",
                            //data['orders'][index]['title'],
                            title2: "\$100",
                            //"${data['orders'][index]['totalprice']}"
                            //.numCurrencyWithLocale(),
                            d1: "Car Wash",
                            //"${data['orders'][index]['quantity']}x",
                            d2: "Refundable",
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            // child: Container(
                            //   width: 30,
                            //   height: 10,
                            //   color: Colors.amber,
                            //   // Colors(
                            //   //  // data['orders'][index]['color'],
                            //   // ),
                            // ),
                          ),
                          Divider(),
                        ],
                      );
                    }).toList(),
                  )
                      .box
                      .outerShadowMd
                      .color(purpleColor)
                      .margin(EdgeInsets.only(bottom: 4))
                      .make(),
                  20.heightBox,
                  ////////////////////
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
