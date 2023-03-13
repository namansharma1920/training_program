import UIKit

protocol Number {
    var floatValue: Float { get }  //here i am creating a computed property
}

extension Float: Number {  //you can extend any predefined class
    var floatValue: Float { //since we are inheriting the Number protocol so we have to override this method.
        return self   //self means i am returning th float value.
    }
}

extension Double: Number {
    var floatValue: Float {
        return Float(self)  //covert double to float
    }
}

extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension UInt: Number {
    var floatValue: Float {
        return Float(self)
    }
}

func +(valueA: Number, valueB: Number) -> Float {  //since we are inheriting Number protocol (base protocol), so Int, Double can be of type number
    return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue - valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue / valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue * valueB.floatValue
}


let x: Double = 1.2347
let y: Int = 5
let q = x / y  //taking a refernce of number protocol (Base) and passing the Int, Double type value (derived)



class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType: String {
    case trueFalse = "The sky is blue."
    case multipleChoice = "Who is the ugliest Beatle: John, Paul, George, or Ringo?"
    case shortAnswer = "What is the capital of Oregon?"
    case essay = "In 50 words, explain molceular fusion."
    
    static let types: [QuestionType] = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True."
    case multipleChoice = "Sgt. Pepper."
    case shortAnswer = "Salem"
    case essay = "Molecular fusion happens when a daddy molecule and a mommy molecule love each other veryyyyyy much."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Answer {}

protocol AnswerGenerator: QuestionGenerator {
    func generateRandomAnswer() -> Answer
}

class Jeopardy: AnswerGenerator {
    func generateRandomAnswer() -> Answer {
        //
    }
    func generateRandomQuestion() -> Question {
        //
    }
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue  //rawValue give corresponding case value.
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

let quiz = Quiz()

let question = quiz.generateRandomQuestion()

print("QUESTION TYPE: \(question.type) \n QUERY: \(question.query) \n ANSWER: \(question.answer)")











