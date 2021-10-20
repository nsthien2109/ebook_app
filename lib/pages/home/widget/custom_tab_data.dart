import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {

  final int selected;
  final Function callback;

  CustomTab({required this.selected,required this.callback});

  final tabs = ['Ebooks','AudioBooks'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5)
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              width: (MediaQuery.of(context).size.width / 2.5),
              margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
              padding: const EdgeInsets.all(13),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected == index ? Colors.white : Colors.grey[200],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(tabs[index]),
            ),
          ),
          separatorBuilder: (_,index)=> const SizedBox(width: 10,),
          itemCount: tabs.length
      ),
    );
  }
}
