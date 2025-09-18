import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_model.dart';

abstract class CoffeeEntity {
  void add(OrderModel customer);
  List<OrderModel> getAllOrders();
  List<OrderModel> getPendingOrders();
  Map<String, int> topSellingCompletedDrinks(List<OrderModel> orders);
}
