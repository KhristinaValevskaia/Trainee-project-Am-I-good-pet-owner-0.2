//
//  main.swift
//  Project Swift 1.4.3
//
//  Created by Khristina Valevskaia on 10.05.2022.
//


import Foundation

struct QuestionsAndParams {

    let question: String
    let param1: Int
    let param2: Int
}

let myQuestionsmyParams: [QuestionsAndParams] =
                                    [.init(question: "How long do dogs live? ",                                 param1: 10, param2:  15),
                                     .init(question: "At what time in morning should take a dog for a walk? ", param1: 6, param2: 8),
                                     .init(question: "How many minutes need to walk with a dog in total per day? ", param1: 90, param2: 360),
                                     .init(question: "Up to how many months of age does the dog grow? ", param1: 30, param2: 36),
                                     .init(question: "From how old acceptable take a dog for a child? ", param1: 12, param2: 16)]


var totalScore: [Int] = []

for yourInput in myQuestionsmyParams{

    print(yourInput.question)
    guard let input = readLine(),
          let myinput = Int(input) else {

          print("Invalid input ")
          exit(1)
    }

    let wrong = "You are wrong! "
    let right = "You are right! "
    let result = "Your score + "

    if myinput < yourInput.param1 || myinput > yourInput.param2 {

         let score = 0
         print(result, score)
         print(wrong)

    } else if myinput != 0 {

         let score = 1
         print(result, score)
         print(right)
         totalScore.append(1)

    } else {

         print("Invalid input")

         exit(2)
    }
}

var finalScore = 0
for  Final in totalScore {
     finalScore += Final
}
print(finalScore)

finalScore = 0
totalScore.forEach { Final in
finalScore += Final
}
print(finalScore)

finalScore = 0
finalScore = totalScore.reduce(0, +)

print(finalScore)

switch finalScore {

    case 0...2:

    print("Your result is not too good. \(finalScore). Before you get a dog, you should learn a lot. ")

    case 3...4:

    print("Your result is pretty good. \(finalScore). A little more knowledge, and you will become a great owner for a dog! ")

    case 5:

    print("Your result is excellent! \(finalScore). You know a lot about dogs and are ready to become a responsible owner! ")

    default:

    print("Error. Take the test again")
}

let minLength = myQuestionsmyParams.min {a, b in a.question.count < b.question.count }
print("The shortest sentence is: ", minLength!.question, minLength!.question.count, "characters.")

let maxLength = myQuestionsmyParams.max {a, b in a.question.count < b.question.count }
print("The longest sentence is: ", maxLength!.question, maxLength!.question.count, " characters.")


