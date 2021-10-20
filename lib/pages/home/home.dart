import 'package:ebook_app/contants/colors.dart';
import 'package:ebook_app/pages/home/widget/book_gridview.dart';
import 'package:ebook_app/pages/home/widget/custom_tab_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  var bottomBar = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottombar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTab(
              selected: tabIndex,
              callback: (int index){
                setState(() {
                  tabIndex = index;
                });
                if(pageController.hasClients){
                  pageController.jumpToPage(index);
                }else{
                  print("Loi");
                }

              },
            ),
            Expanded(
                child: BookGridView(
                  selected: tabIndex,
                  pageController: pageController,
                  callback: (int index){
                    setState(() {
                      tabIndex = index;
                    });
                  },
                )
            )
          ],
        ),
      )
    );
  }
  
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("All books",style: TextStyle(color: kFont),),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: kFont,)),
      actions:  [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: kFont,)),
      ],
    );
  }
  Widget _buildBottombar(){
    final bottom = [
      Icons.home_outlined,
      Icons.bar_chart_outlined,
      Icons.mic_none_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline_rounded
    ];
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) => GestureDetector(
            onTap: (){
              setState(() {
                bottomBar = index;
              });
            },
            child: Container(
              width: (MediaQuery.of(context).size.width - 40 ) / 5,
              decoration: bottomBar == index ? const BoxDecoration(
               border :Border(
                bottom: BorderSide(
                  color: Colors.deepOrange,
                  width: 3
                )
              )) : null,
              child: Icon(bottom[index] ,size: 30,color: bottomBar == index ? kFont : Colors.grey,),

            ),
          ),
          separatorBuilder: (_,index)=> const SizedBox(width: 10,),
          itemCount: bottom.length
      ),
    );
  }
}
