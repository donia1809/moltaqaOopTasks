abstract class Vehicle
{
  String model;
  int year;
  /// بحاول اعملهم required بيجبلي ايرور
  Vehicle({this.model, this.year});

  void startEngine();
}
//////////////////////////////////////////////////////////
class Car extends Vehicle
{
  Car( String model, int year)
      :super(model: model, year: year);

  @override
  void startEngine() {
    print('Car Engine Model is= $model \n year is= $year');
  }
}
//////////////////////////////////////////////////////////
class Motorcycle extends Vehicle
{
  Motorcycle(String model, int year)
      :super(model: model, year: year);

  @override
  void startEngine() {
    print('Motor Engine Model is= $model \n year is= $year');
  }
}
//////////////////////////////////////////////////////////
void main() 
{
  Car car = Car('CarEngine', 2019);
  car.startEngine();

  Motorcycle motorCycle = Motorcycle('MotorEngine', 2019);
  motorCycle.startEngine();
}
