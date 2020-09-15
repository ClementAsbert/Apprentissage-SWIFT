import Foundation

class Player {
    let name : String = "Clément"
    var hp : Int = 3
    var power : Float = 14.5
    
    func heal(){
        if hp < 3 {
            hp += 1
        }
    }
    
    func attack(otherPlayer : Player){
        print("attaque de puissance \(power)")
        otherPlayer.hp = otherPlayer.hp - 1
    }
    
}

var player1 = Player()
var player2 = Player()

player1.attack(otherPlayer: player2)
player2.hp

class AppUser {
    let id : Int
    var name : String
    var lastConnection : Date
    
    init(id : Int, name : String) {
        self.id = id
        self.name = name
        lastConnection = Date.init()
    }
    
}

let user1 = AppUser(id: 1111, name: "Clément")
user1.id


