class person
{
  String name;
  String email;
  int age;
  person(this.name, this.age, this.email);
  void showInfo()
  {
    print(name);
    print(email);
    print(age);

  }
}
//////////////////////////////////////////////////////////
void main()
{
  person person1= person('donia', 23, 'donia@gmail');
  person1.showInfo();
}