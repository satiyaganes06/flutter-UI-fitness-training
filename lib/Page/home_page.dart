import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List data = [
    {'image': 'assets/human_figures/finger.jpg', 'name': 'Finger'},
    {'image': 'assets/human_figures/abs.jpg', 'name': 'Abs'},
    {'image': 'assets/human_figures/Face.png', 'name': 'Face'},
    {'image': 'assets/human_figures/bot.jpg', 'name': 'Bottom'},
    {'image': 'assets/human_figures/hand.jpg', 'name': 'Arm'},
    {'image': 'assets/human_figures/leg.jpg', 'name': 'Leg'},
    {'image': 'assets/human_figures/shoulder.jpg', 'name': 'Shoulder'},
    {'image': 'assets/human_figures/waist.jpg', 'name': 'Waist'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Training', style: GoogleFonts.varelaRound(
                    color: color.AppColor.homePageTitle,
                    fontSize: 27,
                    fontWeight: FontWeight.w600
                  )),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: (){}, 
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(Icons.arrow_back_ios_new, color: color.AppColor.homePageIcons,
                            size: 18,
                          ),
                        ),
                      ),

                      const SizedBox(width:5),

                      InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: (){}, 
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(Icons.check_box_outline_blank_rounded, color: color.AppColor.homePageIcons,
                            size: 18,
                          ),
                        ),
                      ),

                      const SizedBox(width:5),

                      InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: (){}, 
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(Icons.arrow_forward_ios_rounded, 
                            color: color.AppColor.homePageIcons,
                            size: 18,
                          ),
                        ),
                      ),

                    ],
                  )

                ]
              ),

              const SizedBox(height:30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your program', style: GoogleFonts.varelaRound(
                    color: color.AppColor.homePageSubtitle,
                    fontSize: 16,
                    fontWeight: FontWeight.w800
                  )),

                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: (){},
                    child: Row(
                      children: [
                        Text('Details', style: GoogleFonts.varelaRound(
                          color: color.AppColor.homePageDetail,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        )),
                        const SizedBox(width: 5),

                        const Icon(Icons.arrow_forward, size:18)
                      ]
                    ),
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100), 
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.7),
                      color.AppColor.gradientSecond.withOpacity(0.9)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: color.AppColor.gradientSecond.withOpacity(0.8),
                      offset: const Offset(2, 2),
                      spreadRadius: 1.0,
                      blurRadius: 20.0
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Next workout', style: GoogleFonts.varelaRound(
                          color: color.AppColor.homePageContainerTextSmall,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        )),

                        const SizedBox(height:5),

                        Text('Legs Toning', style: GoogleFonts.varelaRound(
                          color: color.AppColor.homePageContainerTextBig,
                          fontSize: 26,
                          fontWeight: FontWeight.w500
                        )),

                        const SizedBox(height:5),
                        
                        Text('and Glutes Workout', style: GoogleFonts.varelaRound(
                          color: color.AppColor.homePageContainerTextBig,
                          fontSize: 26,
                          fontWeight: FontWeight.w500
                        )),
                      ]
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        
                        Icon(Icons.timer_rounded, 
                          color: color.AppColor.homePageContainerTextSmall
                        ),

                        const SizedBox(width: 10),

                        Text('60 min', style: GoogleFonts.varelaRound(
                          color: color.AppColor.homePageContainerTextBig,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        )),

                        Expanded(child: Container()),
                          
                        GestureDetector(
                          onTap: (){
                            
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: color.AppColor.gradientFirst,
                                  offset: const Offset(3, 5),
                                  blurRadius: 8,
                                )
                              ]
                            ),
                            child: Icon(Icons.play_circle_fill_rounded, size: 55,
                              color: color.AppColor.homePageContainerTextSmall
                            ),
                          ),
                        ),

                      ],
                    )
                  
                  ]
                )
              ),

              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    
                    Container(
                      margin: const EdgeInsets.only(top:30),
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                        color: color.AppColor.homePageContainerTextBig,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: color.AppColor.gradientSecond.withOpacity(0.5),
                            blurRadius: 10.0,
                          )
                        ],
                        image: const DecorationImage(
                          image: AssetImage('assets/bg_bottom.png'),
                          fit: BoxFit.fill
                        )
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 10, 190, 0),
                      height:150,
                      width:350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/figure_1.png'),
                          fit: BoxFit.fill
                        )
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(165, 15, 0, 0),
                      padding: const EdgeInsets.fromLTRB(15, 45, 15, 0),
                      height:150,
                      width:180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You are doing great', style: GoogleFonts.varelaRound(
                            color: color.AppColor.homePageDetail,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )),

                          const SizedBox(height:10),

                          Text('Keey it up', style: GoogleFonts.varelaRound(
                            color: color.AppColor.homePagePlanColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          )),

                          Text('stick to your plan', style: GoogleFonts.varelaRound(
                            color: color.AppColor.homePagePlanColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          )),
                        ],
                      )
                    )
                  

                  ]
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text('Area of focus', style: GoogleFonts.varelaRound(
                  color: color.AppColor.homePageTitle,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )),
              ),

              Container(
                margin: const EdgeInsets.only(top:10),
                height: 350,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing:10,
                    mainAxisSpacing:10,
                  ), 
                  itemCount: data.length,
                  itemBuilder: (bCtx, i){
                    return Container(
                      padding: const EdgeInsets.only(top:30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red.withOpacity(0.5),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor.withOpacity(0.6)
                          ]
                        )
                      ),
                      child: Column(
                        children: [
                         InkWell(
                           onTap: (){
                             print(data[0]['image'].toString());
                           },
                           child: CircleAvatar(
                             maxRadius: 40.0,
                             backgroundImage: AssetImage(data[i]['image'].toString()), 
                           )
                         ),

                          const SizedBox(height: 10),

                          Text('Finger', style: GoogleFonts.varelaRound(
                            color: color.AppColor.homePageContainerTextBig,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          )),

                        ]
                      )
                    );
                  }
                ),
              )
            
            ]
          )
        ),
      ),
    );
  }
}