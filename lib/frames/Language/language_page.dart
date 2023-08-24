import 'package:flutter/material.dart';

class Language {
  final String name;
  final String flag;
  final String code;

  Language({
    required this.name,
    required this.flag,
    required this.code,
  });
}

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<Language> languages = [
    Language(name: "English", flag: "assets/flags/us.png", code: "en"),
    Language(name: "Spanish", flag: "assets/flags/es.png", code: "es"),
    // Add more languages and flags here
  ];

  Language? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Language Selection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<Language>(
                value: selectedLanguage,
                onChanged: (Language? newValue) {
                  setState(() {
                    selectedLanguage = newValue;
                  });
                },
                items: languages.map<DropdownMenuItem<Language>>(
                  (Language lang) {
                    return DropdownMenuItem<Language>(
                      value: lang,
                      child: Row(
                        children: [
                          Image.asset(
                            lang.flag,
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 8),
                          Text(lang.name),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
              SizedBox(height: 20),
              Text(
                selectedLanguage != null
                    ? "Selected Language: ${selectedLanguage!.name}"
                    : "Select a Language",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageScreen(),
    );
  }
}


// class Language extends StatefulWidget {
//   const Language({super.key});

//   @override
//   State<Language> createState() => _LanguageState();
  
//   static languageList() {}
// }

// class _LanguageState extends State<Language> {
//    _changeLanguage(Language language) {
//     print(language.languageCode);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Language"),
//         actions: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: DropdownButton(
//               onChanged: (Language language) {
//                 _changeLanguage(language);
//               },
//               underline: SizedBox(),
//               icon: Icon(Icons.language),
//               items: Language.languageList()
//                   .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
//                         value: lang,
//                         child: Row(
//                           children: <Widget>[
//                             Text("lang.flag"), 
//                             Text("lang.name")
//                           ],
//                         ),
//                       ))
//                   .toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }










// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// // Initial Selected Value
//   String dropdownvalue = 'English';

// // List of items in our dropdown menu
//   var items = [
//     'English',
//     'Hindhi',
//     'Francais',
//     'German',
//     "Turkish",
//     'Indonesia',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Geeksforgeeks"),
//       ),
//       backgroundColor: Colors.pink,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton(
//               // Initial Value
//               value: dropdownvalue,

//               // Down Arrow Icon
//               icon: const Icon(Icons.keyboard_arrow_down),

//               // Array list of items
//               items: items.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items),
//                 );
//               }).toList(),
//               // After selecting the desired option,it will
//               // change button value to selected value
//               onChanged: (String? newValue) {
//                 setState(() {
//                   dropdownvalue = newValue!;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



