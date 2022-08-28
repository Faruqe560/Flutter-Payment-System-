import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/component/colors.dart';
import 'package:payment_app/widgets/button.dart';
import 'package:payment_app/widgets/large_button.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/paymentbackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/success.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Success !",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor),
            ),
            Text(
              "Payment is Completed for 2 bills",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.idColor),
            ),
            SizedBox(
              height: h * 0.025,
            ),
            Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 12, left: 12),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.green),
                                  child: Icon(
                                    Icons.done,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Kengen Power",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.mainColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "ID: 43546573453",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.mainColor),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "\$ 1234.00",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      );
                    })),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "Total Amount",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ 1234.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                  icon: Icons.share_sharp,
                  onTap: () {},
                  text: "share",
                  backgroundColor: Colors.black,
                  IconColor: Colors.white,
                ),
                AppButton(
                  icon: Icons.heart_broken_sharp,
                  onTap: () {},
                  text: "Love",
                  backgroundColor: Colors.black,
                  IconColor: Colors.white,
                ),
                AppButton(
                  icon: Icons.print_sharp,
                  onTap: () {},
                  text: "Print",
                  backgroundColor: Colors.black,
                  IconColor: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            AppLargeButton(
              text: "Done",
              textColor: Colors.white,
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
