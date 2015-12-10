//1

import Foundation
import Darwin

struct DateOfBirth {
    var day : Int
    var month : Int
    var year : Int
}

let currentDate = DateOfBirth(day: 27, month: 10, year: 2015)

struct Student {
    var firstName : String {
        
        willSet {
            print("will set " + newValue + "instead of" + firstName)
        }
        
        didSet {
            print("did set " + firstName + "instead of" + oldValue)
            firstName = firstName.capitalizedString
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalizedString
        }
    }
    var fullName : String {
        
        get {
            return firstName + " " + lastName
        }
        
        set(newValue) {
            
            var values = newValue.componentsSeparatedByString(" ")
            
            if values.count > 0 {
                firstName = values[0]
            }
            if values.count > 1 {
                lastName = values[1]
            }
        }
    }
    
    var schoolAges : UInt {
        get {
            if age > 6 && age < 12
            {
                if let temp = age {
                    return temp - 6
                }
            } else if age > 12 {
                return 11
            }
            return 0
        }
        
    }
    
    var age : UInt? {
        get {
            
            if birthday.year < currentDate.year {
                
                var age = currentDate.year - birthday.year
                
                if birthday.month > currentDate.year {
                    
                    age--
                    
                }
                return UInt(age)
            }
            return nil
        }
    }
    
    var birthday : DateOfBirth {
        
        didSet {
            if birthday.day > 31 || birthday.day < 1 {
                
                if oldValue.day > 31 || oldValue.day < 1 {
                    birthday.day = 1
                } else {
                    birthday.day = oldValue.day
                }
            }
            if birthday.month > 12 || birthday.month < 1 {
                
                if oldValue.month > 31 || oldValue.month < 1 {
                    birthday.month = 1
                } else {
                    birthday.month = oldValue.month
                }
            }
            if birthday.year < 1  && oldValue.year < 1{
                birthday.year = 1
            } else if birthday.year < 1 {
                birthday.year = oldValue.year
            }
        }
    }

}


var birthday = DateOfBirth(day: 7, month: 8, year: 1988)
birthday.day = 0
birthday.day


var student = Student(firstName: "Eugeniya", lastName: "Tretiakova", birthday: DateOfBirth(day: 7, month: 8, year: 1988))

student.birthday.day   = 0
student.birthday.month = 0
student.birthday.year  = 0

student.birthday   = DateOfBirth(day: 0, month: 0, year: 0)

student.age
student.schoolAges



//3
struct CustomPoint {
    var x = 0.0
    var y = 0.0
}
struct Line {
    var A : CustomPoint
    var B : CustomPoint
    
    var center : CustomPoint {
        get {
            return CustomPoint(x: (A.x + B.x)/2, y: (A.y + B.y)/2)
        }
        set {
            
            let difA = CustomPoint(x: A.x - center.x, y: A.y - center.y)
            let difB = CustomPoint(x: center.x - B.x, y: center.y - B.y)
            
            A = CustomPoint(x: newValue.x + difA.x, y: newValue.y + difA.y)
            B = CustomPoint(x: newValue.x - difB.x, y: newValue.y - difB.y)
        }
    }
    var long : Double {
        get {
            let vectorPoint = CustomPoint(x: B.x - A.x, y: B.y - A.y)
            return sqrt(Double(vectorPoint.x * vectorPoint.x +  vectorPoint.y * vectorPoint.y))
        }
        set {
            
            if long > 0 {
                
                let sinA = (B.y - A.y)/long
                let cosA = (B.x - A.x)/long
                
                let newY = newValue * sinA
                let newX =  newValue * cosA
                
                A = CustomPoint(x: B.x - newX, y: B.y - newY)
            }
        }
    }
}

var lineAB = Line(A: CustomPoint(x: -19, y: 20), B: CustomPoint(x: 10, y: 10))
/*lineAB.long

lineAB.center.x
lineAB.center.y

lineAB.center = CustomPoint(x: 40, y: 20)

lineAB.A.x
lineAB.A.y

lineAB.center = CustomPoint(x: -10, y: 10)

lineAB.A.x
lineAB.A.y

lineAB.B.x
lineAB.B.y
*/

lineAB.center = CustomPoint(x: 10, y: 30)
lineAB.long

lineAB.long = 30.6757233003559
lineAB.A.x
lineAB.A.y

lineAB.B.x
lineAB.B.y







