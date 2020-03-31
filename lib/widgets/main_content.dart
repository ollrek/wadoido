import 'package:flutter/material.dart';
import 'package:wadoido/models/category.dart';
import 'package:wadoido/models/plan.dart';
import 'package:wadoido/widgets/category_view.dart';
import 'package:wadoido/widgets/plans_list.dart';

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  Category catFilter;
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
      catFilter = catFilter == filter ? null : filter;
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
                  child: categoryView(Category.values[index], catFilter),
                  onTap: () => {_toggleFilter(Category.values[index])},
                );
              })),
      list != null
          ? Expanded(
              child: Center(
                  child: SizedBox(
              width: 1200,
              child: catFilter != null
                  ? plansList(
                      list.where((element) => element.category == catFilter).toList())
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
