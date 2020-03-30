import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wadoido/models/plan.dart';
import 'package:wadoido/widgets/plan_view.dart';

Widget plansList(List<Plan> plans) {
  return LayoutBuilder(builder: (context, constraints) {
    // if (constraints.crossAxisExtent > 500) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: (constraints.maxWidth / 300).floor() + 1,
      itemCount: plans.length,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      itemBuilder: (BuildContext context, int index) =>
          planView(plans[index], index),
      staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
    );
    // } else {
    //   return SliverToBoxAdapter();
    // }
  });
}
