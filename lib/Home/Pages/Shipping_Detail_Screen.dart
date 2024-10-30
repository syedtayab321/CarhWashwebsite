import 'package:fusionxcar/Home/Pages/Payment_Method.dart';
import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippinfDetails extends StatelessWidget {
  const ShippinfDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // var Controller = Get.put(CartController());

    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        leading: IconButton(
            onPressed: () {
              // Controller.restvaluesoforderdetails();
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: whiteColor,
            )),
        automaticallyImplyLeading: false,
        title: "Order Info"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: SizedBox(
            width: 180,
            height: 45,
            child: ElevatedButton(
              onPressed: () async {
                // if (Controller.addresscontroller.text.length > 10 ||
                //     Controller.citycontroller.text.length > 3 ||
                //     Controller.phonecontroller.text.length > 10) {
                Get.to(() => PaymentMethod());
                // } else {
                //   VxToast.show(context, msg: "Please Fill The Form");
                // }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                backgroundColor: whiteColor,
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: purpleColor,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
///////////////////////image displaing Section
              // Image display section
              // Inside your ShippinfDetails widget
              // Obx(
              //   () => Controller.Descriptionimagepath.value.isEmpty
              //       ? const SizedBox() // Empty container if no image is selected
              //       :

              Image.asset(
                imgFc1,
                // File(Controller.Descriptionimagepath.value),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              )
                  .box
                  .roundedSM
                  .clip(
                    Clip.antiAlias,
                  )
                  .make(),
              // ),

              // if (Controller.Descriptionimagelink.isNotEmpty)
              //   Image.network(
              //     Controller.Descriptionimagelink,
              //     width: double.infinity,
              //     height: 200, // Adjust the height as needed
              //     fit: BoxFit.cover,
              //   ),
              // Image uploading section
              5.heightBox,
              SizedBox(
                height: 40,
                width: 180,
                // Adjust height as needed
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      )),
                  onPressed: () async {
                    // Controller.changeDescriptionimage(context);
                  },
                  child: const Text(
                    'Upload Car Image',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              //////////////////
              10.heightBox,

              //////////////////////////////////textfields///////////
              const SizedBox(
                height: 56,
                child: TextField(
                  //controller: Controller.addresscontroller,
                  //controller: usernamecontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              ////////////
              10.heightBox,
              /////////////////////////////////////////////////////
              const SizedBox(
                height: 56,
                child: TextField(
                  // controller: Controller.citycontroller,
                  //controller: usernamecontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'City',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              ////////////
              10.heightBox,
              /////////////////////////////////////
              const SizedBox(
                height: 56,
                child: TextField(
                  //controller: Controller.statecontroller,
                  // controller: usernamecontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'State',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              ////////////
              10.heightBox,
              ///////////////////////////////
              const SizedBox(
                height: 56,
                child: TextField(
                  // controller: Controller.postalcodecontroller,
                  //controller: usernamecontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Postal Code',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              ///////////
              10.heightBox,
              ////////////////////////////////////
              const SizedBox(
                height: 56,
                child: TextField(
                  //controller: Controller.phonecontroller,
                  //controller: usernamecontroller,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),

              /////////////////////////////textfield ends///////////////

              // Material checkbox
              // Obx(
              //   () =>

              Row(
                children: [
                  Checkbox(
                    side: BorderSide(color: Colors.white),
                    activeColor: whiteColor,
                    checkColor: Colors.purple,
                    value: false,
                    //Controller.isMaterialChecked.value,
                    onChanged: (value) {
                      //Controller.isMaterialChecked.value = value!;
                    },
                  ),
                  const Text(
                    'With Material',
                    style: TextStyle(color: whiteColor),
                  ), // Text next to checkbox
                ],
              ),
              //),

              // Description text field
              const SizedBox(
                height: 100, // Adjust height as needed
                child: TextField(
                  maxLines: 4, // Allowing multiple lines for description
                  // controller: Controller.descriptionController,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),

              ///////////////////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
