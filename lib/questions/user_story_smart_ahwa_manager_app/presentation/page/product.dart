import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_model.dart';

class Product extends StatelessWidget {
  final OrderModel orderModel;
  const Product({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: orderModel.isCompleted == true ? Colors.green[50] : Colors.red[50],

      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Icon(Icons.local_cafe, color: Colors.brown),
        title: Text(
          orderModel.customerName ?? "",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text(
              orderModel.drink ?? "",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            SizedBox(height: 2),
            Text(
              orderModel.specialinstructions ?? "",
              style: TextStyle(
                color: Colors.grey[500],
                fontStyle: FontStyle.italic,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: orderModel.isCompleted == true
                  ? Text(
                      "Order Ready ✅",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      "Order Not Ready ❌",
                      style: TextStyle(
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
