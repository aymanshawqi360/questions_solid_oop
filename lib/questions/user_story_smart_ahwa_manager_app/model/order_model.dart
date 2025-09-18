class OrderModel {
  final String? customerName;
  final String? drink;
  final String? specialinstructions;
  final bool? isCompleted;

  OrderModel({
    required this.isCompleted,
    required this.customerName,
    required this.drink,
    required this.specialinstructions,
  });
}
