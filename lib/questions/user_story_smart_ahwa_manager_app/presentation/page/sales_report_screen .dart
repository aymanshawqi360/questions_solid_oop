import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_manager.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_model.dart';

class SalesReportScreen extends StatelessWidget {
  final List<OrderModel> orders;
  final Map<String, int> topSellingCompletedDrinks;

  const SalesReportScreen({
    Key? key,
    required this.orders,
    required this.topSellingCompletedDrinks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final report = topSellingCompletedDrinks;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: report.isEmpty
          ? const Center(child: Text("No completed orders available"))
          : ListView.builder(
              itemCount: report.length,
              itemBuilder: (context, index) {
                final entry = report.entries.elementAt(index);
                return ListTile(
                  leading: const Icon(Icons.local_cafe),
                  title: Text(entry.key),
                  trailing: Text('Sold: ${entry.value}'),
                );
              },
            ),
    );
  }
}
