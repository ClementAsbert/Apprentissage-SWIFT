var weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday","Sunday"]

for day in weekDays {
    print(day)
}

// deux possibilités soit 0...6 donc on prend en compte le 6 soit 0..<6 et ici le 6 est nom compris donc la variable iras de 0 à 5
for index in 0..<weekDays.count {
    print(weekDays[index])
}

var randnumber = 0

//Int.randome(in : la range) pour faire apparaitre un nombre aléatoire
while (randnumber != 6) {
    randnumber = Int.random(in: 0..<10)
    print ("Testing\(randnumber)")
}

let keys = ["h345tre", "56fgty45", "45g5er6t"]

var selectedKey : String

// ici avec le repeat on rentre dans la condition au moin une fois avant de verifier la condition au contraire du bloc while seul ou on verifie la condition avant de rentré dans la boucle
repeat{
    let randomIndex = Int.random(in: 0 ..< keys.count)
    selectedKey = keys[randomIndex]
    print("Testing key \(selectedKey)")
}while (selectedKey != "h345tre")

let users = ["Clément", "Erine", "Thomas", "Julien", "Joe", "Colin"]

var index = 0

var testName = "Joe"

while (index < users.count) && (users[index] != testName) {
    print(index)
    index += 1
}

if (index == users.count){
    print("Element non existant")
}else{
    print("Element trouvé à l'indice \(index)")
}


