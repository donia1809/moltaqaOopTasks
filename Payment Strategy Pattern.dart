abstract class PaymentStrategy
{
  void pay(double amount);
}
//////////////////////////////////////////////////////////
class PayPal implements PaymentStrategy
{
  String email;

  PayPal(this.email);

  @override
  void pay(double amount) {
    print("Paying \$$amount using PayPal (Email: $email)");
  }

}
//////////////////////////////////////////////////////////
class CreditCard implements PaymentStrategy
{
  String cardNumber;

  CreditCard(this.cardNumber);

  @override
  void pay(double amount) {
    print("Paying \$$amount using Credit Card (Card: $cardNumber)");
  }

}
//////////////////////////////////////////////////////////
class Cash implements PaymentStrategy
{
  @override
  void pay(double amount) {
    print("Paying \$$amount in Cash.");
  }

}
//////////////////////////////////////////////////////////
class Checkout
{
  PaymentStrategy paymentStrategy;
  Checkout(this.paymentStrategy);

  void setPaymentMethod(PaymentStrategy strategy)
  {
    paymentStrategy = strategy;
  }

  void processPayment(double amount)
  {
    paymentStrategy.pay(amount);
  }
}
//////////////////////////////////////////////////////////
void main()
{
  Checkout checkout = Checkout(PayPal("donia@email.com"));
  checkout.processPayment(150);

  checkout.setPaymentMethod(CreditCard("1234-5678-9999"));
  checkout.processPayment(300);

  checkout.setPaymentMethod(Cash());
  checkout.processPayment(100);
}