import 'package:flutter/material.dart';

class AnimatesHeart extends StatefulWidget {
  const AnimatesHeart({super.key});

  @override
  State<AnimatesHeart> createState() => _AnimatesHeartState();
}

class _AnimatesHeartState extends State<AnimatesHeart> {
  double scale=1 ;
  Duration duration = Duration(milliseconds: 1000);
  bool moveLeft = true;
  Color color = Colors.pink;

  void _toggleScale() {
    setState(() {
      color = color == Colors.pink ? Colors.blue : Colors.pink;
      moveLeft = !moveLeft;
      scale = scale == 1 ? 1.5 :scale == 1.5 ? 2: 1; // switch values
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleScale,
        child: Icon(Icons.play_arrow),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("Hello Flutter"),
              Text("Animated Heart example"),
              SizedBox(height: 20,),
              AnimatedScale(
                scale: scale,
                duration: duration,
                curve: Curves.easeInOut


                ,child: Icon(Icons.favorite,size: 50,color: Colors.red,),),
              SizedBox(height: 20,),
              Text("Animated Container example"),
              AnimatedContainer(duration: duration,
                  curve: Curves.easeInOutCirc,
                  margin: EdgeInsets.only(
                    left: moveLeft ? 0 : 200,
                    right: moveLeft ? 200 : 0,
                  ),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10)
                  )


              )
            ]
        ),
      ),
    );
  }
}
