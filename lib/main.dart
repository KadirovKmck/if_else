import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController();
  String? chek = 'srfgxc';
  final List<String> tiller = [
    'hello',
  ];
  final List<String> russki = [
    'привет',
  ];
  final List<String> kitauskiu = [
    '你好',
  ];
  final List<String> arbskiu = [
    'مرحبًا',
  ];
  String til(String till) {
    if (till == tiller[0]) {
      return russki[0];
    } else if (till == tiller[0]) {
      return kitauskiu[0];
    } else if (till == tiller[0]) {
      return arbskiu[0];
    }

    return 'Bul til tushunbiman';
  }

  String obrozojanieBaza(
    int okish,
  ) {
    if (okish == 9) {
      return 'Sen kolejga kiresin';
    } else if (okish == 11) {
      return 'Sen universitetke kiresin';
    }
    return ' Sen rassiaga ishtegeni ketesin';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Tiller',
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // AutocompleteBasicExample(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintMaxLines: null,
                    hintText: '',
                    focusColor: Colors.amber,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
            ),
            Text(
              'til',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {});
                      FocusScope.of(context).unfocus();
                      chek = (controller.text.toString());

                      controller.clear();
                    },
                    child: Text(
                      'chek:',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Text(
                    til(
                      chek!,
                    ),
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            // Text(
            //   '${til(tiller[1])}',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
          ],
        ),
      ),
    );
  }
}

// class AutocompleteBasicExample extends StatelessWidget {
//   const AutocompleteBasicExample({super.key});

//   static const List<String> _kOptions = <String>[
//     'hello',
//     'privet',
//     'asssolomu alekum'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Autocomplete<String>(
//       optionsBuilder: (TextEditingValue textEditingValue) {
//         if (textEditingValue.text == '') {
//           return const Iterable<String>.empty();
//         }
//         return _kOptions.where((String option) {
//           return option.contains(textEditingValue.text.toLowerCase());
//         });
//       },
//       onSelected: (String selection) {
//         debugPrint('You just selected $selection');
//       },
//     );
//   }
// }
