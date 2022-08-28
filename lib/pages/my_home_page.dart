import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/pages/payment_page.dart';
import 'package:payment_app/widgets/button.dart';
import 'package:payment_app/widgets/large_button.dart';
import 'package:payment_app/widgets/text_size.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _ListBilles(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 250,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _butttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }

  _butttonContainer() {
    return Positioned(
        bottom: 13,
        right: 42,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext bc) {
                  return Container(
                      height: MediaQuery.of(context).size.height - 180,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              color: Color(0xFFeef1f4).withOpacity(0.7),
                              height: MediaQuery.of(context).size.height - 239,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Positioned(
                            top: 13,
                            right: 37,
                            child: Container(
                              //margin: const EdgeInsets.only(top: 6),
                              height: 220,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: AppColor.mainColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppButton(
                                      icon: Icons.cancel,
                                      IconColor: AppColor.mainColor,
                                      textColor: Colors.white,
                                      backgroundColor: Colors.white,
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      text: "Close",
                                    ),
                                    AppButton(
                                      icon: Icons.add,
                                      IconColor: AppColor.mainColor,
                                      textColor: Colors.white,
                                      backgroundColor: Colors.white,
                                      onTap: () {},
                                      text: "Add Bill",
                                    ),
                                    AppButton(
                                      icon: Icons.history,
                                      IconColor: AppColor.mainColor,
                                      textColor: Colors.white,
                                      backgroundColor: Colors.white,
                                      onTap: () {},
                                      text: "History",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                });
          },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/lines.png")),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 1),
                      color: Color(0xFF11324d).withOpacity(0.2))
                ]),
          ),
        ));
  }

  _mainBackground() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 240,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _curveImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/curve.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _ListBilles() {
    return Positioned(
      top: 260,
      left: 0,
      right: 0,
      bottom: 0,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (_, index) {
              return Container(
                margin: const EdgeInsets.only(top: 28, right: 20),
                height: 100,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 138, 120, 87),
                        offset: Offset(1, 1),
                        blurRadius: 10.0,
                        spreadRadius: 5)
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                // height: MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 3, color: Colors.grey),
                                  image: DecorationImage(
                                    image: AssetImage("images/brand1.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.mainColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "ID: 845489933",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColor.idColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizeText(
                              text: "Auto Pay on 24th may 18",
                              color: AppColor.green),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColor.selectBackground),
                                child: Center(
                                  child: Text(
                                    "Select",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColor.selectColor),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                "\$1248.00",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Due in 3 daye",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColor.idColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          Container(
                            width: 5,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                color: AppColor.halfOval),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  _payButton() {
    return Positioned(
        bottom: 10,
        child: AppLargeButton(
          text: "pay all bills",
          textColor: Colors.white,
          onTap: () {
            Get.to(() => PaymentPage());
          },
        ));
  }

  _textContainer() {
    return Stack(
      children: [
        Positioned(
          left: 10,
          top: 95,
          child: Text(
            "My Bills",
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 47, 65, 94)),
          ),
        ),
        Positioned(
          left: 30,
          top: 70,
          child: Text(
            "My Bills",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
