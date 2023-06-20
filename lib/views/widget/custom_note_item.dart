import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCC80),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Tips',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,

              ),),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 16,bottom: 16),
              child: Text('Build your career baraa alian',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),),
            ),
            trailing: IconButton(
              onPressed:(){},
              icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text('May21, 2023',style: TextStyle(color: Colors.black,fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}