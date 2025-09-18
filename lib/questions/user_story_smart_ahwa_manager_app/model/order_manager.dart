import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/entity/coffee_entity.dart';
import 'package:question_solid_oop/questions/user_story_smart_ahwa_manager_app/model/order_model.dart';

class OrderManager extends CoffeeEntity {
  final List<OrderModel> _orders = [];

  @override
  void add(OrderModel customer) {
    _orders.add(customer);
  }

  @override
  List<OrderModel> getAllOrders() {
    return List.unmodifiable(
      _orders.where((order) => order.isCompleted == true).toList(),
    );
    // List.unmodifiable(_orders);
  }

  @override
  List<OrderModel> getPendingOrders() {
    return List.unmodifiable(
      _orders.where((order) => order.isCompleted == false).toList(),
    );
  }

  @override
  Map<String, int> topSellingCompletedDrinks(List<OrderModel> orders) {
    final Map<String, int> drinkCount = {};

    for (var order in orders) {
      if (order.isCompleted == true && order.drink != null) {
        drinkCount.update(
          order.drink!,
          (count) => count + 1,
          ifAbsent: () => 1,
        );
      }
    }

    return drinkCount;
  }
}
