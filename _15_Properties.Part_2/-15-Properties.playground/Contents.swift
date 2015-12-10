
import Foundation


struct FileDescription {
    
    var path : String
    
    var name : String? {
        
        get {
            let words = path.componentsSeparatedByString("/")
            if let temp = words.last {
                return temp
            } else {
                return nil
            }
        }
    }
    var maxSize : Int {
         mutating get{
            return content.characters.count
        }
    }
    var folderPath : String? {
         get {
            var fPath = String()
            let words = path.componentsSeparatedByString("/")
           
            for word in words {
                
                if word != words.last
                {
                    fPath = fPath + word + "/"
                }
            }
            if words.count == 0
            {
                return nil
            }
            else
            {
                return fPath
            }
        }
    }
    var isHidden : Bool
    lazy var content = "File is empty"
    
}

var fileStruct = FileDescription(path: "documents/folder/data.txt", isHidden: true, content: nil)

fileStruct.name
fileStruct.path
fileStruct.folderPath
fileStruct.maxSize
fileStruct.content


//2
//3
/*
Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
- минимальный и максимальный возраст каждого объекта
- минимальную и максимальную длину имени и фамилии
- минимально возможный рост и вес
- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса*/

class Human{
    
    
    static var numberOfPeople = 0
    
    class var maxAge : Int{
        return 100
    }
    class var minAge : Int{
        return 16
    }
    
    class var minHeight : Float {
        return 150
    }
    
    class var maxHeight : Float {
        return 200
    }
    
    var firstName : String
    var lastName : String
    var weight : Float

    
    var age : Int {
        didSet
        {
            if age < Human.minAge || age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    var height: Float {
        didSet {
            if height < Human.minHeight || height > Human.maxHeight {
                height = oldValue
            }
        }
    }
    
    
    init(name: String, lastName: String, age: Int, height: Float, weight: Float)
    {
        self.firstName = name
        self.lastName  = lastName
        self.age       = age
        self.height    = height
        self.weight    = weight
        Human.numberOfPeople++
    }
    
}

let human1 = Human(name: "Vasya", lastName: "Ivanov", age: 21, height: 133, weight: 54)
Human.numberOfPeople

let human2 = Human(name: "Vasya", lastName: "Petrov", age: 29, height: 183, weight: 104)
Human.numberOfPeople









