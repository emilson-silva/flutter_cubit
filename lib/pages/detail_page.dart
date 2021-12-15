import 'package:flutter/material.dart';
import 'package:flutter_cubit/constants/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/appbuttons.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/piri.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Pirinopólis",
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppLargeText(
                            text: "R\$ 250,00", color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(width: 10),
                        AppText(
                          text: "BR, Goiânia-Go",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        AppText(text: "(4.0)", color: AppColors.textColor2),
                      ],
                    ),
                    const SizedBox(height: 25),
                    AppLargeText(text: "Pessoas", color: Colors.black.withOpacity(0.8),size: 20),
                    const SizedBox(height: 5),
                    AppText(text: "Número de pessoa por grupo", color: AppColors.mainTextColor),
                    const SizedBox(height: 10),
                    Wrap(
                     children: List.generate(5, (index) {
                       return InkWell(
                         onTap: (){
                          setState(() {
                             selectedIndex = index;
                          });
                         },
                         child: Container(
                           margin: const EdgeInsets.only(right: 10),
                           child: AppButtons(
                             size: 50,
                             color:selectedIndex == index?Colors.white : Colors.black,
                             backgroundColor: selectedIndex == index? Colors.black : AppColors.buttonBackground,
                             borderColor: selectedIndex == index? Colors.black :AppColors.buttonBackground,
                            text: (index + 1).toString(),
                           ),
                         ),
                       );
                     }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
