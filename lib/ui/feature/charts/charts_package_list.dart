import 'package:devkitflutter/config/constant.dart';
import 'package:devkitflutter/ui/feature/charts/charts_flutter/charts_flutter_list.dart';
import 'package:devkitflutter/ui/feature/charts/syncfusion/syncfusion_list.dart';
import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flutter/material.dart';

class ChartsPackageListPage extends StatefulWidget {
  @override
  _ChartsPackageListPageState createState() => _ChartsPackageListPageState();
}

class _ChartsPackageListPageState extends State<ChartsPackageListPage> {
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
              child: Text('Charts Package', style: TextStyle(
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
                        child: Text('Choose between packages.', style: TextStyle(
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
            _globalWidget.screenDetailList(context: context, title: 'Charts Flutter', page: ChartsFlutterListPage()),
            _globalWidget.screenDetailList(context: context, title: 'Syncfusion Flutter Charts', page: SyncfusionListPage()),
          ],
        )
    );
  }
}
