import UIKit


class Account {
        
    let name: String

    init(name : String) {
        self.name = name
    }

    deinit {
        print("\(name) account has being deallocated")
    }
}

class Manager {
    
    let name: String
    var account: Account?
    
    init(name : String, account: Account?) {
        self.name = name
        self.account = account
    }
    
    deinit {
        print("\(name) has being deallocated")
    }
}

var manager: Manager? = Manager(name: "John", account: nil)
var accountManager: Account? = Account(name: "John")
manager?.account = accountManager

accountManager = nil

if let name = manager?.account?.name {
    print(name)
}


// Weak reference type

class Employee {
    var name: String
    weak var account: Account?
    
    init(name : String, account: Account?) {
        self.name = name
        self.account = account
    }

    deinit {
        print("\(name) has being deallocated")
    }
}

var employee: Employee? = Employee(name: "Patrick", account: nil)
var employeeAccount: Account? = Account(name: "Patrick")
employee?.account = employeeAccount

employeeAccount = nil

// Whe setting to nil the employee object,
// the class will be deallocated because it
// has a weak reference to account object
if let name = employee?.account?.name {
    print(name)
}
