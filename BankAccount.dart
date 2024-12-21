
class BankAccount {

  String accountID;
  double balance;

  // Constructor for initializing accountID and balance
  BankAccount(this.accountID, this.balance);

  // Named constructor for initializing accountID with balance set to 0
  BankAccount.withZeroBalance(this.accountID) : balance = 0.0;

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Error: Withdrawal amount must be positive.');
    } else if (amount > balance) {
      print('Error: Insufficient balance.');
    } else {
      balance -= amount;
      print('Withdrawal successful. New balance: \$${balance.toStringAsFixed(2)}');
    }
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount <= 0) {
      print('Error: Deposit amount must be positive.');
    } else {
      balance += amount;
      print('Deposit successful. New balance: \$${balance.toStringAsFixed(2)}');
    }
  }

  // Method to display account information
  void displayAccountInfo() {
    print('Account ID: $accountID');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {

  BankAccount account1 = BankAccount('123456', 100.0);
  account1.displayAccountInfo();

  // Create a BankAccount instance using the named constructor
  BankAccount account2 = BankAccount.withZeroBalance('789012');
  account2.displayAccountInfo();


  account1.deposit(50.0);
  account1.withdraw(30.0);
  account1.withdraw(150.0); // Insufficient balance scenario
  account1.deposit(-20.0);  // Invalid input scenario


  account1.displayAccountInfo();
  account2.displayAccountInfo();
}