//
//  ViewController.swift
//  Homework 5
//
//  Created by Marat Tazhetdinov on 27.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Task 1
        print("------------------------------------------")
        print("Task 1")
        print()
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        print("English alphabet - \(alphabet)")
        let character = "l"
        
        for (index, value) in alphabet.enumerated(){
            if String(value) == character{
                print ("Character - \(character), index - \(index)")
            }
        }
        print()
        
        //Task 2
        print("------------------------------------------")
        print("Task 2")
        print()
        
        let daysInMonth: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        
        print("Task 2.1")
        print()
        for value in daysInMonth{
            print(value)
        }
        print()
        
        print("Task 2.2")
        print()
        let nameOfMonth: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        for value in 0..<nameOfMonth.count{
            print("\(nameOfMonth[value]) - \(daysInMonth[value]) days")
        }
        print()
        
        print("Task 2.3")
        print()
        
        typealias MonthsOfTheYear = (month: String, days: Int)
        func createTupleFromArrays(nameOfMonth: String, daysInMonth: Int) -> (MonthsOfTheYear){
            return (month: nameOfMonth, days: daysInMonth)
            }
        
        for value in 0..<nameOfMonth.count{
            let tuple: MonthsOfTheYear = createTupleFromArrays(nameOfMonth: nameOfMonth[value], daysInMonth: daysInMonth[value])
            print("\(tuple.month) - \(tuple.days) days")
        }
        print()
        
        print("Task 2.4")
        print()
        
        for value in 0..<nameOfMonth.count{
            print("\(nameOfMonth[value]) - \(daysInMonth[nameOfMonth.count - 1 - value]) days")
        }
        print()
        
        print("Task 2.5")
        print()
        
        let day = 3
        let month = "September"
        var sum = 0
        print ("\(day)rd of \(month)")
        
        for value in 0..<nameOfMonth.count{
            if nameOfMonth[value] == month{
                sum+=day
                break
            }
            sum+=daysInMonth[value]
        }
        print ("\(sum) days passed since the beginning of the year")
        print()
        
        //Task 3
        print("------------------------------------------")
        print("Task 3")
        print()
        
        let alphabetUp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var alphabetEmpty = ""
        
        for value in alphabetUp{
            alphabetEmpty = String(value) + alphabetEmpty
        }
        
        print("Before: \(alphabetUp)")
        print ("After: \(alphabetEmpty)")
        print()
        
        //Task 4
        print("------------------------------------------")
        print("Task 4")
        print()

        let randomString = "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."

        var sumLetters = 0
        var sumDigits = 0
        var sumSymbols = 0

        for value in randomString{
            let result: Bool = true
            switch result{
            case value.isNumber:
                sumDigits += 1
            case value.isLetter:
                sumLetters += 1
            case value.isWhitespace:
                continue
            default:
                sumSymbols += 1
            }
        }

        print("Random string: \(randomString)")
        print("Sum of letters: \(sumLetters)")
        print("Sum of symbols: \(sumSymbols)")
        print("Sum of digits: \(sumDigits)")
        print()
        
        //Task 5
        print("------------------------------------------")
        print("Task 5")
        print()
        
        func createArrayFromSequence (numbers: Int...) -> [Int]{
            var array: [Int] = []

            for number in numbers{
                array.append(number)
            }

            return arrayInverse(array: array)
        }
        
        func arrayInverse (array: [Int]) -> [Int]{
            var arrayInverse = array
            
            for index in 0..<array.count{
                arrayInverse[arrayInverse.count-1-index] = array[index]
            }
            return arrayInverse
        }
        
        print("Sequence of digits: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100")
        print("Inversed array from these digits: \(createArrayFromSequence(numbers: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100))")
        print()
        
        //Task 6
        print("------------------------------------------")
        print("Task 6")
        print()
        
        print("Random string: \(randomString)")
        
        func changeString (text: String) -> String{
            var newString: String = ""
            for value in text{
                if value.isPunctuation {
                    
                    continue
                    
                }else if value.isLetter {
                    
                    switch value {
                    case "a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "Y" :
                        newString += String(value.lowercased())
                    default:
                        newString += String(value.uppercased())
                    }
                    
                }else if value.isNumber{
                    
                    switch value {
                    case "1":
                        newString += "'one'"
                    case "2":
                        newString += "'two'"
                    case "3":
                        newString += "'three'"
                    case "4":
                        newString += "'four'"
                    case "5":
                        newString += "'five'"
                    case "6":
                        newString += "'six'"
                    case "7":
                        newString += "'seven'"
                    case "8":
                        newString += "'eight'"
                    case "9":
                        newString += "'nine'"
                    default:
                        newString += "'zero'"
                    }
                    
                }else {
                    
                    newString += String(value)
                }
            }
            return newString
        }
        
        print("After changing: \(changeString(text: randomString))")
        print()
        
        //Task 7
        print("------------------------------------------")
        print("Task 7")
        print()
        
        func findMaxFromArray(array: [Int]) -> Int{
            var max = -2147483648
            for value in array{
                if value>max{
                    max=value
                }
            }
            return max
        }
        
        let array7: [Int] = [45, 87, 12, 36, 41, 58, 69, 54, 99]
        print("Array: \(array7)")
        print("Max value of this array: \(findMaxFromArray(array: array7))")
        print()
        
        //Task 8
        print("------------------------------------------")
        print("Task 8")
        print()
        
        func evenOrOdd (array: [Int]) -> [Bool]{
            var arrayBool: [Bool] = []
            
            for value in array{
                if value%2==0{
                    arrayBool.append(true)
                }else{
                    arrayBool.append(false)
                }
            }
            return arrayBool
        }
        let array8: [Int] = [44, 56, 10, 58, 69, 47, 50]
        print("Array: \(array8)")
        print("Even or odd: \(evenOrOdd(array: array8))")
    }
    
    

}

