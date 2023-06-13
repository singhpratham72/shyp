class Order {
  String? id;
  String? status;
  String? pickupLocation;
  String? pickupDate;
  String? dropLocation;
  String? dropDate;
  String? preferredVehicle;
  String? quantity;
  String? materialType;
  String? price;
  String? consigner;
  String? consignee;

  Order(
      {this.id,
      this.status,
      this.pickupLocation,
      this.pickupDate,
      this.dropLocation,
      this.dropDate,
      this.preferredVehicle,
      this.quantity,
      this.materialType,
      this.price,
      this.consigner,
      this.consignee});
}
