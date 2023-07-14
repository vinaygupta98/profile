import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SampleApp(),
  ));
}

class SampleApp extends StatefulWidget {
  const SampleApp({super.key});

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  int position = 0;
  @override
  Widget build(BuildContext context) {
    List<String> imageUrl = [
      'https://images.pexels.com/photos/10448146/pexels-photo-10448146.jpeg',
      'https://images.pexels.com/photos/15272226/pexels-photo-15272226.jpeg',
      'https://images.pexels.com/photos/14448266/pexels-photo-14448266.jpeg'
    ];

    void increase() {
      int newPosition =
          imageUrl.length - 1 == position ? position : position + 1;
      print(newPosition);
      setState(() {
        position = newPosition;
      });
    }

    void decrease() {
      int newPosition = position <= 0 ? 0 : position - 1;
      print(newPosition);
      setState(() {
        position = newPosition;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Header of Card',
        ),
      ),
      body: Column(children: <Widget>[
        Center(
      child: Image.network(
        imageUrl[position],
        width: 200.0,
        height: 200.0,
      ),
        ),
        Row(
      children: [
        TextButton(
            onPressed: decrease,
            child: const Text(
              'Swift Left',
            )),
        TextButton(onPressed: increase, child: const Text('Swift Right'))
      ],
        ),
      ]),
    );
  }
}

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Header of Card',
//         ),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Center(
//               child: Image.network(
//                 'https://images.pexels.com/photos/10448146/pexels-photo-10448146.jpeg',
//                 width: 200.0,
//                 height: 200.0,
//               ),
//             ),
//             TextButton(onPressed:(){}, child: const Text('Swift Left',style: TextStyle(fontSize: 92.0,fontWeight: FontWeight.bold ),)),
//                 TextButton(onPressed:(){}, child: const Text('Swift Right'))
//           ],
//         ),
//       ),
//     );
//   }
// }
