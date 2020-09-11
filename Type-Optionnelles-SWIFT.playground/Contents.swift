var pointDeVie : Int = 3

//Variable optionnele donc ne contient rien mais peut contenir quelque chose
var armure : String?
armure = "Armure légendaire"

print(pointDeVie)

// ?? sert à dire que si armre ne contient rien on lui assigne la valeur "Aucune armure" par default sinon il affiche ce que contient armure donc ici "Armure légendaire"
print(armure ?? "Aucune armure")

//ici avec le ! on force xCode à aller chercher la valeur de armure, si il ne contient pas de valeur entraine une error
print (armure!)

//pour etre de sur de ne pas faire d'error il faut faire un test
if(armure != nil){
    print(armure!)
}else {
    print("Aucune armure")
}

