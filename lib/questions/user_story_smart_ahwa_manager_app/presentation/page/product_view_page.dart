import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/entity/coffee_entity.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_model.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/page/product.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/page/view_pending_orders.dart';

class ProductViewPage extends StatelessWidget {
  final List<OrderModel> getAllOrders;

  ProductViewPage({required this.getAllOrders});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: getAllOrders.length,
        itemBuilder: (context, index) {
          // final order = orderReady[index];

          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.green[50],

            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: Icon(Icons.local_cafe, color: Colors.brown),
              title: Text(
                getAllOrders[index].customerName ?? "",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text(
                    getAllOrders[index].drink ?? "",
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  SizedBox(height: 2),
                  Text(
                    getAllOrders[index].specialinstructions ?? "",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      "طلب جاهز ✅",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
