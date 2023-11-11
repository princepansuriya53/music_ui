// import 'dart:async';
// import 'package:equalizer/equalizer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_xlider/flutter_xlider.dart';

// class SoundEq extends StatefulWidget {
//   @override
//   _SoundEqState createState() => _SoundEqState();
// }

// class _SoundEqState extends State<SoundEq> {
//   bool enableCustomEQ = false;

//   @override
//   void initState() {
//     super.initState();
//     Equalizer.init(1);
//   }

//   @override
//   void dispose() {
//     Equalizer.release();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Equalizer example'),
//         ),
//         body: ListView(
//           children: [
//             const SizedBox(height: 10.0),
//             Center(
//               child: Builder(
//                 builder: (context) {
//                   return FlatButton.icon(
//                     icon: const Icon(Icons.equalizer),
//                     label: const Text('Open device equalizer'),
//                     color: Colors.blue,
//                     textColor: Colors.white,
//                     onPressed: () async {
//                       try {
//                         await Equalizer.open(0);
//                       } on PlatformException catch (e) {
//                         final snackBar = SnackBar(
//                           behavior: SnackBarBehavior.floating,
//                           content: Text('${e.message}\n${e.details}'),
//                         );
//                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                       }
//                     },
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 10.0),
//             Container(
//               color: Colors.grey.withOpacity(0.1),
//               child: SwitchListTile(
//                 title: Text('Custom Equalizer'),
//                 value: enableCustomEQ,
//                 onChanged: (value) {
//                   Equalizer.setEnabled(value);
//                   setState(() {
//                     enableCustomEQ = value;
//                   });
//                 },
//               ),
//             ),
//             FutureBuilder<List<int>>(
//               future: Equalizer.getBandLevelRange(),
//               builder: (context, snapshot) {
//                 return snapshot.connectionState == ConnectionState.done
//                     ? CustomEQ(enableCustomEQ, snapshot.data!)
//                     : CircularProgressIndicator();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomEQ extends StatefulWidget {
//   CustomEQ(this.enabled, this.bandLevelRange);

//   bool enabled;
//   List<int> bandLevelRange;

//   @override
//   _CustomEQState createState() => _CustomEQState();
// }

// class _CustomEQState extends State<CustomEQ> {
//   late double min, max;
//   String? _selectedValue;
//   late Future<List<String>> fetchPresets;

//   @override
//   void initState() {
//     super.initState();
//     min = widget.bandLevelRange[0].toDouble();
//     max = widget.bandLevelRange[1].toDouble();
//     fetchPresets = Equalizer.getPresetNames();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int bandId = 0;

//     return FutureBuilder<List<int>>(
//       future: Equalizer.getCenterBandFreqs(),
//       builder: (context, snapshot) {
//         return snapshot.connectionState == ConnectionState.done
//             ? Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: snapshot.data!
//                         .map((freq) => _buildSliderBand(freq, bandId++))
//                         .toList(),
//                   ),
//                   Divider(),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: _buildPresets(),
//                   ),
//                 ],
//               )
//             : const CircularProgressIndicator();
//       },
//     );
//   }

//   Widget _buildSliderBand(int freq, int bandId) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 250.0,
//           child: FutureBuilder<int>(
//             future: Equalizer.getBandLevel(bandId),
//             builder: (context, snapshot) {
//               return FlutterSlider(
//                 disabled: !widget.enabled,
//                 axis: Axis.vertical,
//                 rtl: true,
//                 min: min,
//                 max: max,
//                 values: [snapshot.hasData ? snapshot.data!.toDouble() : 0],
//                 onDragCompleted: (handlerIndex, lowerValue, upperValue) {
//                   Equalizer.setBandLevel(bandId, lowerValue.toInt());
//                 },
//               );
//             },
//           ),
//         ),
//         Text('${freq ~/ 1000} Hz'),
//       ],
//     );
//   }

//   Widget _buildPresets() {
//     return FutureBuilder<List<String>>(
//       future: fetchPresets,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final presets = snapshot.data;
//           if (presets!.isEmpty) return const Text('No presets available!');
//           return DropdownButtonFormField(
//             decoration: const InputDecoration(
//                 labelText: 'Available Presets', border: OutlineInputBorder()),
//             value: _selectedValue,
//             onChanged: widget.enabled
//                 ? (String? value) {
//                     Equalizer.setPreset(value);
//                     setState(() {
//                       _selectedValue = value!;
//                     });
//                   }
//                 : null,
//             items: presets.map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           );
//         } else if (snapshot.hasError) {
//           return const Text("error");
//         } else {
//           return const CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }
