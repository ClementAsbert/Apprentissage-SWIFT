let userID : Int = 123456789

let realPassword : String = "Azerty"

var enteredPassword : String = "Azerty"
var numberOfAttenpts : Int = 5
var passwordIsCorrect = (realPassword == enteredPassword)

// Opérateur logique ET (&&), opérateur logique OU (||)
if (passwordIsCorrect && userID == 123456789){
    print("Admin connecté")
}else if(passwordIsCorrect){
    print("Utilisateur Connecté")
}else{
    print("Erreur de connexion")
    numberOfAttenpts -= 1
}

switch userID {
case 123456789:
    print("Admin Connecté")
case 123 :
    print ("Bonjour Clément")
default:
    print("Utilisateur inconnue")
}
