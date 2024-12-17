main() {
  double totalPrice = 0;
  double priceAfterTax = 0;
  //Tax percent:
  const double tax = 10;

  //Products:
  Map<String, dynamic> rice = {
    'name': 'rice',
    'price': 35,
  };
  Map<String, dynamic> bread = {
    'name': 'bread',
    'price': 5,
  };
  Map<String, dynamic> salt = {
    'name': 'salt',
    'price': 12,
  };
  Map<String, dynamic> milk = {
    'name': 'milk',
    'price': 23,
  };

  //All the products:
  List<Map> products = [rice, bread, salt, milk];

  //Calculating total price before tax.
  products.forEach(
    (product) {
      totalPrice += product['price'];
    },
  );
  print("Total items price: $totalPrice EGP.");

  //Applying tax to the total price:
  priceAfterTax = totalPrice * (tax / 100);
  print("Price after tax $tax%: ${totalPrice + priceAfterTax} EGP.");
}
