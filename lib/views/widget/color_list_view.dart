import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,  required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ?    CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
          child: CircleAvatar(
      backgroundColor: color,
      radius: 34,
    ),
        )
         :   CircleAvatar(
      backgroundColor: color,
      radius: 38,
    );
  }
}

class ColorListVeiw extends StatefulWidget {
  const ColorListVeiw({super.key});

  @override
  State<ColorListVeiw> createState() => _ColorListVeiwState();
}

class _ColorListVeiwState extends State<ColorListVeiw> {
  int currentIndex = 0;

  List<Color> colors = [
    const Color(0xff8ecae6),
    const Color(0xff219ebc),
    const Color(0xff023047),
    const Color(0xfffb8500),
    const Color(0xffffb703),

    
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = index;
                  setState(() {

                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,

                ),
              ),
            );
          }

      ),
    );
  }
}