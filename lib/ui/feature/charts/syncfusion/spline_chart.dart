import 'package:devkitflutter/model/feature/chart_data_model.dart';
import 'package:devkitflutter/model/feature/sales_model.dart';
import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SplineChartPage extends StatefulWidget {
  @override
  _SplineChartPageState createState() => _SplineChartPageState();
}

class _SplineChartPageState extends State<SplineChartPage> {
  // initialize global widget
  final _globalWidget = GlobalWidget();

  final List<Sales> _data = [
    Sales("2014", 50),
    Sales("2015", 120),
    Sales("2016", 140),
    Sales("2017", 170),
    Sales("2018", 80),
    Sales("2019", 110),
    Sales("2020", 260),
  ];

  final List<ChartData> _data2 = <ChartData>[
    ChartData('2014', 50, 30, 80),
    ChartData('2015', 120, 150, 170),
    ChartData('2016', 140, 180, 160),
    ChartData('2017', 170, 270, 220),
    ChartData('2018', 80, 180, 120),
    ChartData('2019', 110, 90, 150),
    ChartData('2020', 260, 370, 310),
  ];

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
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _globalWidget.createDetailWidget(
                  title: 'Spline Chart',
                  desc: 'This is the example of spline chart'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(),
                        labelPlacement: LabelPlacement.onTicks),
                    series: <ChartSeries>[
                      SplineSeries<Sales, String>(
                          dataSource: _data,
                          xValueMapper: (Sales sales, _) => sales.year,
                          yValueMapper: (Sales sales, _) => sales.sale,
                          dataLabelSettings: DataLabelSettings(
                            isVisible: true,
                          ))
                    ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(),
                        labelPlacement: LabelPlacement.onTicks),
                    series: <ChartSeries>[
                      SplineSeries<Sales, String>(
                          dataSource: _data,
                          dashArray: <double>[5, 5],
                          xValueMapper: (Sales sales, _) => sales.year,
                          yValueMapper: (Sales sales, _) => sales.sale,
                          color: Colors.pinkAccent,
                          dataLabelSettings: DataLabelSettings(
                            isVisible: true,
                          ))
                    ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(),
                        labelPlacement: LabelPlacement.onTicks),
                    series: <ChartSeries>[
                      SplineSeries<Sales, String>(
                          dataSource: _data,
                          xValueMapper: (Sales sales, _) => sales.year,
                          yValueMapper: (Sales sales, _) => sales.sale,
                          markerSettings: MarkerSettings(isVisible: true),
                          dataLabelSettings: DataLabelSettings(isVisible: true))
                    ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(),
                        labelPlacement: LabelPlacement.onTicks),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <ChartSeries>[
                      SplineSeries<Sales, String>(
                          dataSource: _data,
                          xValueMapper: (Sales sales, _) => sales.year,
                          yValueMapper: (Sales sales, _) => sales.sale,
                          name: 'Sale',
                          markerSettings: MarkerSettings(
                              isVisible: true, shape: DataMarkerType.diamond))
                    ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(
                        majorGridLines: const MajorGridLines(),
                        labelPlacement: LabelPlacement.onTicks),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    legend: Legend(isVisible: true),
                    series: <CartesianSeries>[
                      SplineSeries<ChartData, String>(
                        name: 'SmartPhone',
                        dataSource: _data2,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        markerSettings: MarkerSettings(isVisible: true),
                      ),
                      SplineSeries<ChartData, String>(
                        name: 'Refrigerator',
                        dataSource: _data2,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y1,
                        markerSettings: MarkerSettings(isVisible: true),
                      ),
                      SplineSeries<ChartData, String>(
                        name: 'TV',
                        dataSource: _data2,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y2,
                        markerSettings: MarkerSettings(isVisible: true),
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
