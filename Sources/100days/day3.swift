class Day3 {
  func main() {
    runArithmetic()
    operatorOverload()
    conditions()
    combinations()
    ternary()
    switchStatements()
  }

  func runArithmetic() {
    let firstScore = 12
    let secondScore = 4

    let sum = firstScore + secondScore
    let diff = firstScore - secondScore
    let product = firstScore * secondScore
    let dividend = firstScore / secondScore
    let mod = firstScore % secondScore

    print(sum, diff, product, dividend, mod)
  }

  func operatorOverload() {
    let meaningOfLife = 42
    let doubleMeaning = 42 + 42

    let fakers = "Fakers gonna"
    let action = fakers + "fake"

    let firstHalf = ["John", "Paul"]
    let secondHalf = ["George", "Ringo"]
    let beatles = firstHalf + secondHalf

    print(doubleMeaning, action, beatles)
  }

  func conditions() {
    let firstCard = 11
    let secondCard = 10

    print(1 == 5)
    print(2 != 4)

    if firstCard + secondCard == 21 {
      print("Blackjack")
    } else {
      print("You lose!")
    }
  }

  func combinations() {
    let score1 = 90
    let score2 = 95

    if score1 > 75 && score2 > 75 {
      print("Pass")
    } else {
      print("Fail")
    }
  }

  func ternary() {
    let val1 = 1
    let val2 = 23498
    print(val1 == val2 ? "Same" : "Different")
  }

  func switchStatements() {
    let score = 85

    switch score {
    case 0..<50:
      print("Utter failure")
    case 50...85:
      print("Not bad")
      fallthrough
    default:
      print("Okay!")
    }
  }
}
