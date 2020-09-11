enum ImageFormat{
    case PNG
    case JPEG
    case TIFF
    
}

let acceptedFormat = ImageFormat.JPEG

var downloadedImageFormat = ImageFormat.PNG

if (downloadedImageFormat != acceptedFormat){
    print("Erreur de format")
}
 
switch downloadedImageFormat {
case .JPEG:
    print ("Image JPEG")
case .PNG:
    print ("Image PNG")
case .TIFF:
    print ("Image TIFF")
}

//enum qui permet d'ajouter des valeur associé 
enum laptopBrand{
    case Samsung(Int)
    case Apple(String)
    case HP(String)
}


var myNewLaptop : laptopBrand = .Apple("Mac")

var myNewLaptop2 = laptopBrand.Apple("macBookPro")

switch myNewLaptop2 {
case .Apple(let Nom):
    print("Nom \(Nom)")
default:
    print("Autre Marque")
}
