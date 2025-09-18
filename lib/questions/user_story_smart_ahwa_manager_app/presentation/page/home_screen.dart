import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/entity/coffee_entity.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_manager.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_model.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/page/product_view_page.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/page/sales_report_screen%20.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/page/view_pending_orders.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/presentation/widget/app_text_form_filde.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController nameController;
  late TextEditingController drinkController;
  late TextEditingController instructionsController;
  final formKey = GlobalKey<FormState>();

  CoffeeEntity orderManager = OrderManager();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    drinkController = TextEditingController();
    instructionsController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    drinkController.dispose();
    instructionsController.dispose();
    super.dispose();
  }

  void addOrderKey() {
    final name = nameController.text.trim();
    final drink = drinkController.text.trim();
    final instructions = instructionsController.text.trim();

    if (name.isEmpty && drink.isEmpty && instructions.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please fill at least one field')));
      return;
    }

    final isComplete =
        (name.isNotEmpty && drink.isNotEmpty && instructions.isNotEmpty);
    log(isComplete.toString());
    if (isComplete) {
      orderManager.add(
        OrderModel(
          customerName: name,
          drink: drink,
          specialinstructions: instructions,
          isCompleted: true,
        ),
      );
    } else {
      orderManager.add(
        OrderModel(
          customerName: name,
          drink: drink,
          specialinstructions: instructions,
          isCompleted: false,
        ),
      );
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isComplete ? 'Order added successfully' : 'Pending order added',
        ),
      ),
    );

    // nameController.clear();
    // drinkController.clear();
    // instructionsController.clear();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smart Ahwa Manager")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              AppTextFormField(
                controller: nameController,
                hintText: "Customer Name",
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 10),
              AppTextFormField(
                controller: drinkController,
                hintText: "Drink Type",
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 10),
              AppTextFormField(
                controller: instructionsController,
                hintText: "Special Instructions",
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: addOrderKey,
                  child: Text("Add Order"),
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductViewPage(
                          getAllOrders: orderManager.getAllOrders(),
                        ),
                      ),
                    );
                  },
                  child: Text("View All Orders"),
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ViewPendingOrders(
                          getPendingOrders: orderManager.getPendingOrders(),
                        ),
                      ),
                    );
                  },
                  child: Text("View Pending Orders"),
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                child: Text('View Sales Report'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SalesReportScreen(
                        orders: orderManager.getAllOrders(),
                        topSellingCompletedDrinks: orderManager
                            .topSellingCompletedDrinks(
                              orderManager.getAllOrders(),
                            ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
