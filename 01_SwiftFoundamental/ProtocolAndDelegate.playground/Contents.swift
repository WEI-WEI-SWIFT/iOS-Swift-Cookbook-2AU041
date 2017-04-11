//********************************************************************
//********************************************************************
//********************** Protocol and Delegate ***********************
//********************************************************************
//********************************************************************

protocol BossDelegate{
    func makeMoneyForBoss()
}

class Employee:BossDelegate{
    func makeMoneyForBoss() {
        print("$$$$$")
    }
}

class Boss{
    var delegate:BossDelegate?
    func gonnaMakeMoney(){
        delegate?.makeMoneyForBoss()
    }
}

let aBoss = Boss()
let aEmployee = Employee()
aBoss.delegate = aEmployee
aBoss.gonnaMakeMoney()