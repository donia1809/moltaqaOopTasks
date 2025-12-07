import 'dart:math';

class BankAccount
{
  double _balance;
  BankAccount(this._balance);
  //set private balance
  set balance(double balance)
  {
    this._balance = balance;
  }
  //get private balance
  double get balance
  {
    return _balance;
  }

  double deposit(double amount)
  {
    return _balance+=amount;
  }
  double withdraw(double amount)
  {
    if(_balance >= amount)
      {
        return _balance -= amount;
      }
    else
    {
      print('Insufficient balance');
      return _balance;
    }
  }
}