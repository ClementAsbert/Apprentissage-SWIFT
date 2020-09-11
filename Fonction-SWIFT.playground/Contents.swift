var speed : Int = 0

//declaration de fonction
func DisplayCurrentSpeed(){
    print("vitesse actuelle : \(speed)")
}
DisplayCurrentSpeed()

var nbSoldat : Int = 95
var puissanceSoldat : Int = 10

func PuissanceTotal(){
    print("la puissance total de mon armé est : \((nbSoldat)*(puissanceSoldat))")
}

PuissanceTotal()

//Fonction avec argument d'entré
func accelerate(newSpeed : Int){
    speed = speed + newSpeed
}

accelerate(newSpeed: 20)
DisplayCurrentSpeed()

func AjoutSoldats(newSoldat : Int){
    nbSoldat = nbSoldat + newSoldat
}

func RetirerSoldat(dropSoldat :Int){
    nbSoldat = nbSoldat - dropSoldat
}

AjoutSoldats(newSoldat: 15)
PuissanceTotal()
RetirerSoldat(dropSoldat: 50)
PuissanceTotal()

func IsFasterThan(SpeedToCompare:Int) -> Bool{
    if(speed > SpeedToCompare){
        return true
    }else {
        return false
    }
}

IsFasterThan(SpeedToCompare: 10)

func CompareForce(forceEnnemie : Int) -> String{
    if ((nbSoldat * puissanceSoldat) > forceEnnemie){
        return ("Votre force total est plus grande que l'ennemi")
    }else{
        return ("Votre force est moin forte que l'ennemi")
    }
}
print (CompareForce(forceEnnemie: 100))

func FastTestCar(Speed1 : Int , Speed2 : Int) -> Int{
    if (Speed1 > Speed2){
        return Speed1
    }else {
        return Speed2
    }
}

FastTestCar(Speed1: 21, Speed2: speed)

// Les label ce sont les 1 mot ou plusieurs mis devant l'argument
func AjoutSoldats(de newSoldat : Int){
    nbSoldat = nbSoldat + newSoldat
}
// ici mon label va etre le de
AjoutSoldats(de: 10)

//pour ne pas metre de label il faut mettre un _ devant l'argument
func AjoutSoldats(_ newSoldat : Int){
    nbSoldat = nbSoldat + newSoldat
}

AjoutSoldats(20)

