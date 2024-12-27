
class BankAccount {

  final String accountId; // Use final for account ID as it shouldn't change
  double balance = 0.0;

  BankAccount(this.accountId);

  // Named constructor
  BankAccount.zeroBalance(this.accountId) : balance = 0.0;


  void withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount. Please enter a positive value.");
      return;
    }

    if (amount > balance) {
      print("Insufficient funds. Current balance: \$$balance");
    } else {
      balance -= amount;
      print("\$$amount withdrawn successfully. New balance: \$$balance");
    }
  }

  void deposit(double amount) {
    if (amount <= 0) {
      print("Invalid deposit amount. Please enter a positive value.");
      return;
    }
    balance += amount;
    print("\$$amount deposited successfully. New balance: \$$balance");
  }

  // Display account information
  void displayAccountInfo() {
    print("Account ID: $accountId");
    print("Current Balance: \$$balance");
  }
}

void main() {

  print('Creating account with balance:');
  var account1 = BankAccount('A1');
  account1.displayAccountInfo();


  print('Creating account with zero balance:');
  var account2 = BankAccount.zeroBalance('A2');
  account2.displayAccountInfo();


  print('\nTesting Account A1 :');
  account1.deposit(500);
  account1.displayAccountInfo();

  account1.withdraw(200);
  account1.displayAccountInfo();

  account1.withdraw(-121);
  account1.withdraw(6000);
  account1.deposit(-58);



  print('\nTesting Account A2 :');
  account2.deposit(7000);
  account2.displayAccountInfo();

  account2.withdraw(6000);
  account2.displayAccountInfo();
}