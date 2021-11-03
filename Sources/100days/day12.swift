enum PasswordError: Error {
  case obvious
}

// Failable initializer -- an initializer that might work or might not
struct Person {
  var id: String

  init?(_ id: String) {
    if id.count == 9 {
      self.id = id
    } else {
      return nil
    }
  }
}

class Animal {}
class Snake: Animal {}
class Cat: Animal {
  func meow() {
    print("Meow")
  }
}

class Day12 {
  func main() {
    runOpIfLet(nil)
    runOpGuard(5)
    unwrapStrToInt("5")
    // Causes a fatal error
    // unwrapStrToInt("poop")
    implicitlyUnwrapped()

    let user = username(for: 15) ?? "Anonymous"
    print(user)

    let names = ["taylor", "beyonce", "adele", "lizzo"]
    print(names.first?.uppercased())

    tryCatch()
    alternativeToTry1()
    alternativeToTry2()

    failableInit()

    typecast()
  }

  func runOpIfLet(_ age: Int?) {
    if let unwrapped = age {
      print("Known age: \(unwrapped)")
    } else {
      print("Unknown age")
    }
  }

  func runOpGuard(_ age: Int?) {
    guard let unwrapped = age else {
      print("Unknown age")
      return
    }

    print("Known age: \(unwrapped)")
  }

  func unwrapStrToInt(_ str: String) -> Int {
    return Int(str)!
  }

  func implicitlyUnwrapped() {
    // Implicitly unwrapped optionals might contain a value or they might be nil
    // However, they don't need to unwrap them in order to use them
    // If however you use them and they have no value/are nil, your code crashes
    let age: Int! = nil
    print(age)
  }

  func username(for id: Int) -> String? {
    if id == 1 {
      return "Taylor Swift"
    } else {
      return nil
    }
  }

  func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
      throw PasswordError.obvious
    }
    return true
  }

  func tryCatch() {
    do {
      try checkPassword("password")
      print("That password is good!")
    } catch {
      print("That password is no good!")
    }
  }

  func alternativeToTry1() {
    // Changes throwing functions into functions that return an optional
    // If the function throws an error, nil is the result
    // Otherwise, the return value is wrapped as an optional
    if let result = try? checkPassword("password") {
      print("That password '\(result)' is good!")
    } else {
      print("That password is no good for the 2nd time!")
    }
  }

  func alternativeToTry2() {
    // Can be used if you know for sure that the function will not fail
    // If the function does throw an error, your code will crash
    try! checkPassword("secret")
    print("That password is good!")
  }

  func failableInit() {
    var validPerson = Person("123456789")
    var invalidPerson = Person("12345678")
    print(validPerson)
    print(invalidPerson)
  }

  func typecast() {
    let pets = [Snake(), Cat(), Snake(), Cat()]
    for pet in pets {
      if let cat = pet as? Cat {
        cat.meow()
      } else {
        print("That's not a cat!")
      }
    }
  }
}
