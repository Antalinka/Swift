
import Foundation

struct Student {
    
    var firstName : String {
        
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
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
            
            let words = newValue.componentsSeparatedByString(" ")
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
            
            print("Full name wants to bw set to " + newValue)
        }
    }
    
}

var student = Student(firstName: "Alex", lastName: "Skutarenko")

student.firstName
student.lastName
student.fullName

student.firstName = "Bob"

student.firstName
student.lastName
student.fullName

student.fullName = "IVAN Ivanov"

student.firstName
student.lastName
student.fullName

