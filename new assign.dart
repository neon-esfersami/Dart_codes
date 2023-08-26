

abstract class Account{
  int? accountNumber;
  double balance;
  Account(this.accountNumber,this.balance);
 void deposit(double amount){
     balance=balance+amount;
  }
 void withdraw(double amount){

  }


}
class SavingsAccount extends Account{

  double interestRate;
  SavingsAccount(int accountNumber,double balance,this.interestRate) :super(accountNumber,balance);
  @override
  void withdraw(double amount){
    if(amount<=balance){
      balance=balance-amount;
      balance=balance+ balance*(interestRate/100);
    }
    else{
      print('Insufficient balance!!!.');
    }
  }
}

class CurrentAccount extends Account{
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance,this.overdraftLimit) :super(accountNumber,balance);
  @override
  void deposit(double amount){
    balance=balance+amount;
  }
  @override
  void withdraw(double amount){
    double ovd=balance+overdraftLimit;
    if(amount<=ovd){
      balance=balance-amount;
    }
    else{
      print('Insufficient balance!!!.');
    }
  }
}

void main(){
 var save=SavingsAccount(101, 5000, 6);
 print('Initial balance for savings account: ${save.balance}');
 save.deposit(3000);
 print('New balance after deposit for savings account: ${save.balance}');
 save.withdraw(2000);
 print('New balance after withdrawn for savings account:${save.balance}');
 var current=CurrentAccount(105, 7000, 4000);
 print('Initial balance for current account: ${current.balance}');
 current.deposit(900);
 print('New balance after deposit for current account: ${current.balance}');
 current.withdraw(10800);
 print('New balance after withdrawn for for current account: ${current.balance}');
}