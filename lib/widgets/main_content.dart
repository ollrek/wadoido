import 'package:flutter/material.dart';
import 'package:wadoido/models/category.dart';
import 'package:wadoido/models/plan.dart';
import 'package:wadoido/widgets/plans_list.dart';

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  Category cat;
  List<Plan> list;

  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData() async {
    var data = await loadPlan();
    setState(() {
      list = data;
    });
  }

  _toggleFilter(Category filter) {
    setState(() {
      cat = cat == filter ? null : filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.center,
          height: 40,
          padding: EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: Category.values.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Container(
                    child: Text(Category.values[index].toString()),
                    width: 160.0,
                    color: Colors.red,
                  ),
                  onTap: () => {_toggleFilter(Category.values[index])},
                );
              })),
      list != null
          ? Expanded(
              child: Center(
                  child: SizedBox(
              width: 1000,
              child: cat != null
                  ? plansList(
                      list.where((element) => element.category == cat).toList())
                  : plansList(list),
            )))
          : Center(child: CircularProgressIndicator())
    ]);
  }
}
// }
// Widget mainContent() {
//   return FutureBuilder(
//       future: loadPlan(),
//       builder: (context, snapshot) {
//         Widget content;
//         content = snapshot.data != null
//             ? plansList(snapshot.data)
//             : Center(
//                 child: CircularProgressIndicator(),
//               );

//         return Column(children: <Widget>[
//           Expanded(
//               child: Center(
//                   child: SizedBox(
//             width: 1000,
//             child: content,
//           )))
//         ]);
//       });
// }
