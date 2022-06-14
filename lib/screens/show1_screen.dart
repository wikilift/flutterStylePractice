import 'package:flutter/cupertino.dart';




class Show1Screen extends StatelessWidget {
  const Show1Screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return    CupertinoApp(debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(navigationBar:
      const CupertinoNavigationBar(  middle: Text('showRoom'),
       ),
      child: SingleChildScrollView(
        child: Column(
          children:  [
             const Image(width: double.infinity,
            height: 250,
              image: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80')),
             const  _title(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children:  [
                  _ButtonsCenter(icon: CupertinoIcons.phone, text: 'Call', color: CupertinoColors.activeBlue,onTap: ()=>print('call pressed'),),
                   _ButtonsCenter(icon: CupertinoIcons.map, text: 'Route', color: CupertinoColors.activeBlue,onTap: ()=>print('route pressed'),),
                   _ButtonsCenter(icon: CupertinoIcons.share, text: 'Share', color: CupertinoColors.activeBlue,onTap: ()=>print('share pressed'),),

             ],),
              ),

              Container(margin:const  EdgeInsets.all(30),
                child:const Text('Reprehenderit labore est consequat est velit nostrud laboris fugiat consectetur pariatur laborum cillum. Elit eu esse deserunt id excepteur cillum reprehenderit dolor laboris. Cupidatat dolore ut dolor velit nisi adipisicing sit deserunt. Sit velit nostrud mollit Lorem duis sunt. Sint laboris ullamco officia commodo exercitation veniam velit est id laboris quis et.',))
              ]),
      ),
        
      ),
    
    );
  }
}



class _title extends StatelessWidget {
  const _title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: Row(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,children:const [
          
          Text('Beautiful Landscape',style: TextStyle( fontWeight: FontWeight.bold),),
          Text('Lorem Ipsum',style: TextStyle(fontSize:10,color: CupertinoColors.systemGrey2))
        ],),
         const Expanded(child: SizedBox(),),
        const Icon(CupertinoIcons.star_fill, color: CupertinoColors.systemYellow,),
        const Text('41')
      ],),
    );
  }
}
class _ButtonsCenter extends StatelessWidget {
  const _ButtonsCenter({
    Key? key, required this.icon, required this.text, required this.color, this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final Color color;
  final void Function()?  onTap;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        CupertinoButton(onPressed:  onTap, child:   Icon( icon,size: 30,)),
       const  SizedBox(height: 1,),
        Text(textAlign: TextAlign.center,text,)
    ],);
  }
}