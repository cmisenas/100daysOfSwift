class Day5 {
  func main() {
    print(square(number: 8))
    sayHello(to: "Taylor")
    sayHelloSansLabel("Becky")
    squares(numbers: 1, 2, 3, 4, 5)


    do {
      try errorThrowing("foobar")
    } catch {
      print("Invalid input")
    }

    var order = "burger"
    burgerPlace(order: &order)
  }

  func square(number: Int) -> Int {
    return number * number
  }

  func sayHello(to name: String) {
    print("Hello, \(name)!")
  }

  func sayHelloSansLabel(_ name: String) {
    print("Hello, \(name)!")
  }

  func squares(numbers: Int...) {
    for number in numbers {
      print("\(number) squared is \(number * number)")
    }
  }

  func errorThrowing(_ input: String) throws -> Bool {
    enum ValidationError: Error {
      case invalid
    }

    let isValid = input == "password"

    if isValid {
      return true
    }

    throw ValidationError.invalid
  }

  func burgerPlace(order: inout String) {
    order += " and fries"
    print("Final order: \(order)")
  }
}
