contract SimpleBank {
    uint256 public balance;
    constructor() {
        balance = 0;
    }
    function deposit(uint256 amount) public {
        balance += amount;
    }
    function withdraw(uint256 amount) public {
        if (balance >= amount) {
            balance -= amount;
        }
    }
    function viewBalance() public view returns (uint256) {
        return balance;
    }
}
