
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../add_note_cubit/add_notes_cubit.dart';
import '../../constants.dart';
import 'color_list_view.dart';

class ColorListVeiw extends StatefulWidget {
  const ColorListVeiw({super.key});

  @override
  State<ColorListVeiw> createState() => _ColorListVeiwState();
}

class _ColorListVeiwState extends State<ColorListVeiw> {
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: KColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
            return  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 6),
              child:  GestureDetector(
                onTap: (){
                  currentIndex = index;
                  BlocProvider.of<AddNotesCubit>(context).color = KColors[index];
                  setState(() {

                  });
                },
                child: ColorItem(
                  color: KColors[index],
                  isActive: currentIndex == index,

                ),
              ),
            );
          }

      ),
    );
  }
}