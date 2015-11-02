
/*

iOS Development Course
1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).

2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.

4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.

5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.

6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?

007. Уровень супермен

Выполните задание шахмат из урока по энумам используя структуры либо классы
*/

//1
struct StudentStr {
    var name : String
    var surname : String
    var dayOfBorn : Int
    var averageScore: Float
}

let student3 = StudentStr(name: "Maria", surname: "Ivanova", dayOfBorn: 2, averageScore: 3)
let student1 = StudentStr(name: "Alex", surname: "Ivanova", dayOfBorn: 22, averageScore: 5)
let student2 = StudentStr(name: "Eugene", surname: "Tretiakova", dayOfBorn: 7, averageScore: 4)
let student4 = StudentStr(name: "Fedor", surname: "Fedorovich", dayOfBorn: 17, averageScore: 2)
let student5 = StudentStr(name: "Viktor", surname: "Kram", dayOfBorn: 12, averageScore: 5)
let student6 = StudentStr(name: "Ronald", surname: "Kram", dayOfBorn: 12, averageScore: 5)


let studentArray = [student1, student2, student3, student4, student5, student6]


let temp = ["a", "b"]
temp.indexOf("a")
//2

func printStudentData(allStudents: [StudentStr]) {
    
    var index = 1
    for std in allStudents {
        
        print("\(index) name: \(std.name), surname: \(std.surname), dayOfBorn: \(std.dayOfBorn), averageScore: \(std.averageScore)\n")
        index++
    }
    
}
//3
let studentArray2 =  studentArray.sort { (firstElement, secondElement) -> Bool in
    
    if firstElement.averageScore > secondElement.averageScore {
        
        return true
    } else {
        
        return false
    }
}

//printStudentData(studentArray2)

//4
let studentsArr3 = studentArray.sort { (first, second) -> Bool in
    
    if first.surname > second.surname {
        return false
    } else if first.surname == second.surname {
        
        return first.name < second.name
    } else {
        return true
    }
}

//printStudentData(studentsArr3)

//5
var studentArr4 = studentArray

studentArr4[0] = StudentStr(name: "Harry", surname: "Potter", dayOfBorn: 12, averageScore: 4)
studentArr4[1] = StudentStr(name: "Tony", surname: "Tonks", dayOfBorn: 30, averageScore: 3)
studentArr4[2] = StudentStr(name: "Hermiona", surname: "Greinger", dayOfBorn: 5, averageScore: 5)
studentArr4[3] = StudentStr(name: "Ronald", surname: "Wisley", dayOfBorn: 23, averageScore: 3)
studentArr4[4] = StudentStr(name: "Junni", surname: "Wisley", dayOfBorn: 12, averageScore: 5)

//printStudentData(studentsArr3)
//printStudentData(studentArr4)


//6

class StudentClass {
    var name : String
    var surname : String
    var dayOfBorn : Int
    var averageScore: Float
    
    init(name: String, surname: String,dayOfBorn: Int, averageScore: Float) {
        self.name = name
        self.surname = surname
        self.dayOfBorn = dayOfBorn
        self.averageScore = averageScore
    }
}

func printStudentData(allStudents: [StudentClass]) {
    
    var index = 1
    for std in allStudents {
        
        print("\(index) name: \(std.name), surname: \(std.surname), dayOfBorn: \(std.dayOfBorn), averageScore: \(std.averageScore)\n")
        index++
    }
    
}

let studentClass1 = StudentClass(name: "Harry", surname: "Potter", dayOfBorn: 12, averageScore: 4)
let studentClass2 = StudentClass(name: "Ron", surname: "Wisley", dayOfBorn: 7, averageScore: 5)
let studentClass3 = StudentClass(name: "Junny", surname: "Wisley", dayOfBorn: 10, averageScore: 3)
let studentClass4 = StudentClass(name: "Hermiona", surname: "Greinger", dayOfBorn: 3, averageScore: 2)
let studentClass5 = StudentClass(name: "Sirius", surname: "Black", dayOfBorn: 23, averageScore: 5)

let studentsClassArr = [studentClass1]
var studentsClassArr2 = studentsClassArr

//studentsClassArr2[0] = StudentClass(name: "newHarry", surname: "newPotter", dayOfBorn: 13, averageScore: 5)

studentsClassArr
studentsClassArr2.append(StudentClass(name: "newHarry", surname: "newPotter", dayOfBorn: 13, averageScore: 5))

let newStudent = studentsClassArr[0]
newStudent.name = "Jenia"

studentsClassArr.count
studentsClassArr2.count




















