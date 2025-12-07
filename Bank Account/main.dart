import 'Bank Account.dart';

void main()
{
  BankAccount bankAccount = BankAccount(1000);
  print(bankAccount.deposit(200));
  print(bankAccount.withdraw(1500));
}