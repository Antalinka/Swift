/*
let student1 = (name: "Alex", age: 20)
let student2 = (name: "Bob", age:  22)


student1.name
student2.name

let student3 = (nam: "Sam", ag: 23)

student3.nam
*/

class StudentClass {
    var name : String
    var age : Int
    
    init() {
        name = "No name"
        age = 20
    }
    
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
}

let stClass = StudentClass(name: "Bob", age: 18)
stClass.name
stClass.age

stClass.name = "Alex"
stClass.age = 21

struct StudentStruct {
    var name: String
    var age: Int
}

// у структуры есть автоматический конструктор
// в классе типа let можно изменить проперти, в структуре нет, только если структура var
// структуры копируются, т е при присвоение одна структура становится независимой копией, в методах идет копирование

func addOneYear( student: StudentClass) {
    student.age++
    
}
func addOneYear(inout student: StudentStruct) {
    student.age++
    student.age
    
}


var stStruct1 = StudentStruct(name: "Sam", age: 24)

//stStruct1.name = "Sam2"
//stStruct1.age = 21

stStruct1


var stStruct2 = stStruct1
stStruct2

stStruct2.name = "Samuel"
stStruct2.age = 25

stStruct2.name
stStruct1.name

var stClass2 = stClass

stClass2.age = 20
stClass2.name = "AAA"

stClass.name
stClass.age

stClass2.name
stClass2.age

stStruct1.age
addOneYear(&stStruct1)
stStruct1.age


stClass.age
addOneYear(stClass)
stClass.age

var arrayStructs = [stStruct1]

arrayStructs[0].age = 50

stStruct1.age
arrayStructs[0].age

var arrayClass = [stClass]

arrayClass[0].age = 50

stClass.age
arrayClass[0].age



















