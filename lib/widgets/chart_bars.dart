import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartBars extends StatelessWidget {
  final List<ChartData> data = [
    ChartData('01', 30),
    ChartData('02', 40),
    ChartData('03', 50),
    ChartData('04', 20),
    ChartData('05', 30),
    ChartData('06', 35),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250.h,
        color: Colors.white,
        child: BarChartWidget(data),
      ),
    );
  }
}

class ChartData {
  final String label;
  final int value;

  ChartData(this.label, this.value);
}

class BarChartWidget extends StatelessWidget {
  final List<ChartData> chartData;

  BarChartWidget(this.chartData);

  @override
  Widget build(BuildContext context) {
    int maxBarValue =
        chartData.map((data) => data.value).reduce((a, b) => a > b ? a : b);

    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      series: <ColumnSeries<ChartData, String>>[
        ColumnSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.label,
          yValueMapper: (ChartData data, _) => data.value,
          color: const Color(0xFFDFE8F6),
          pointColorMapper: (ChartData data, _) {
            if (data.value == maxBarValue) {
              return const Color(0xFF56CCF2);
            } else {
              return const Color(0xFFDFE8F6);
            }
          },
        ),
      ],
    );
  }
}
