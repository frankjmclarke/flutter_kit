import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/area_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/bar_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/bubble_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/column_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/combination_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/doughnut_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/funnel_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/line_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/pie_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/pyramid_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/radial_bar_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/scatter_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/spline_area_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/spline_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/step_area_chart.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/step_line_chart.dart';
import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flutter/material.dart';

class SyncfusionListPage extends StatefulWidget {
  @override
  _SyncfusionListPageState createState() => _SyncfusionListPageState();
}

class _SyncfusionListPageState extends State<SyncfusionListPage> {
  // initialize global widget
  final _globalWidget = GlobalWidget();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _globalWidget.globalAppBar(),
        body: ListView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
          children: [
            Container(
              child: Text('Syncfusion Flutter Chart List', style: TextStyle(
                  fontSize: 18, color: BLACK21, fontWeight: FontWeight.w500
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Row(
                children: [
                  Flexible(
                      flex:5,
                      child: Container(
                        child: Text('Syncfusion chart', style: TextStyle(
                            fontSize: 15, color: BLACK77,letterSpacing: 0.5
                        )),
                      )
                  ),
                  Flexible(
                      flex: 2,
                      child: Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.bar_chart, size: 50, color: SOFT_BLUE))
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 48),
              child: Text('List', style: TextStyle(
                  fontSize: 18, color: BLACK21, fontWeight: FontWeight.w500
              )),
            ),
            SizedBox(height: 18),
            _globalWidget.screenDetailList(context: context, title: 'Line Chart', page: LineChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Bar Chart', page: BarChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Column Chart', page: ColumnChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Area Chart', page: AreaChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Scatter Chart', page: ScatterChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Bubble Chart', page: BubbleChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Combination Chart', page: CombinationChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Pie Chart', page: PieChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Doughnut Chart', page: DoughnutChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Radial Bar Chart', page: RadialBarChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Pyramid Chart', page: PyramidChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Funnel Chart', page: FunnelChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Spline Chart', page: SplineChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Spline Area Chart', page: SplineAreaChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Step Line Chart', page: StepLineChartPage()),
            _globalWidget.screenDetailList(context: context, title: 'Step Area Chart', page: StepAreaChartPage()),
          ],
        )
    );
  }
}
