// Protocols - a way of describing what properties and methods
// something must have
protocol Identifiable {
  var id: String { get set }
  func identify()
}

extension Identifiable {
  func identify() {
    print("ID is \(id).")
  }
}

protocol Payable {
  func calculateWages() -> Int
}

// Extensions - allows you to add methods to existing types
extension Int {
  func squared() -> Int {
    return self * self
  }

  var isEven: Bool {
    return self % 2 == 0
  }
}

// Protocol extensions - like regular extensions, except rather than
// extending a specific type, you extend a whole protocol so that all
// conforming types get the changes

// Collection is an Extension
extension Collection {
  func summarize() {
    print("There are \(count) of us:")

    for name in self {
      print(name)
    }
  }
}

struct Employee: Identifiable, Payable {
  var id: String

  func calculateWages() -> Int {
    return 1_000
  }
}

class Day11 {
  func main() {
    let number = 8
    print("\(number) squared is \(number.squared())")
    print("\(number) is even \(number.isEven)")


    let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    let seasons = Set(["Winter", "Spring", "Summer", "Fall"])
    days.summarize()
    seasons.summarize()
  }

  func displayId(thing: Identifiable) {
    print("My ID is \(thing.id)")
  }
}
