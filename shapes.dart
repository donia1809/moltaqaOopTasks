abstract class Shape
{
  double width;
  double height;
  double radius;
  Shape({ this.height,  this.width, this.radius});

  double area();
}
//////////////////////////////////////////////////////////
class Circle extends Shape
{
  Circle(double radius)
      :super(radius: radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }

}
//////////////////////////////////////////////////////////
class Rectangle extends Shape
{
  Rectangle(double width, double height)
      :super(width: width, height: height);

  @override
  double area() {
    return width * height;
  }
}
//////////////////////////////////////////////////////////
void main()
{
  Circle circle = Circle(5);
  print('The area of circle = $circle.area()');
  Rectangle rectangle = Rectangle(5, 4);
  print('the area of rectangle=$rectangle.area()');
}