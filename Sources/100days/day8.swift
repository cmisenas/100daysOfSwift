struct Sport {
  var name: String
  var isOlympic: Bool

  var olympicStatus: String {
    if isOlympic {
      return "Olympic"
    } else {
      return "Not Olympic"
    }
  }
}

struct Progress {
  var task: String
  var amount: Int {
    willSet {
      print("\(task) ...")
    }

    didSet {
      print("\(task) is now \(amount)% complete")
    }
  }
}

struct City {
  var population: Int

  func collectTaxes() -> Int {
    return population * 1000
  }
}

struct User {
  var name: String

  mutating func anonymize() {
    name = "Unknown"
  }
}

class Day8 {
  func main() {
    createSport(name: "Tennis")
    runProgress()
    collectCityTaxes()
    stringProps()
    arrayProps()
  }

  func createSport(name: String) -> Sport {
    return Sport(name: name, isOlympic: true)
  }

  func runProgress() {
    var progress = Progress(task: "Loading data", amount: 0)
    progress.amount = 30
    progress.amount = 80
    progress.amount = 100
  }

  func collectCityTaxes() {
    let london = City(population: 9_000_000)
    london.collectTaxes()
  }

  func createUser() {
    var user = User(name: "Ed")
    user.anonymize()
  }

  func stringProps() {
    let string = "The quick brown fox"
    print(string,
          string.count,
          string.hasPrefix("The"),
          string.uppercased(),
          string.sorted())
  }

  func arrayProps() {
    var temp = [110.3, 23, 82, 99]
    print(temp.count,
          temp.append(100.4),
          temp.firstIndex(of: 23),
          temp.sorted())
    temp.remove(at: temp.firstIndex(of: 23)!)
    print(temp.sorted())
  }
}
