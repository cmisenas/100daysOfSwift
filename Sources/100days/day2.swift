class Day2 {
  func main() {
    createArray()
    createSet()
    createTuple()
    createDict()
    createEmptyCollection()
    createEnums()
    createEnumAssVal()
    createEnumRawVal()
  }

  func createArray() {
    // Ordered and can contain dupes
    let john = "John Lennon"
    let paul = "Paul McCartney"
    let george = "George Harrison"
    let ringo = "Ringo Starr"

    let beatles = [john, paul, george, ringo]

    print(beatles)
  }

  func createSet() {
    // Unordered and cannot contain dupes
    let colors = Set(["red", "green", "blue"])
    let colors2 = Set(["red", "green", "blue", "red", "blue"])

    print(colors, colors2)
  }

  func createTuple() {
    // Specific, fixed collection of related values
    // where each item has a precise position or name
    let name = (first: "Taylor", last: "Swift")

    print(name.0, name.first)
  }

  func createDict() {
    let cityPop = [
      "Seattle": 800_000,
      "Gotham": 2_000_000
    ]

    print(cityPop)
    // Has to be similar type
    print(cityPop["New York", default: 0])
  }

  func createEmptyCollection() {
    // Dictionary
    var foobar = [String: String]()
    // Alternatively:
    // var foobar = Dictionary<String, String>()
    foobar["bar"] = "baz"

    // Array
    var results = [Int]()
    // Alternatively:
    // var results = Array<Int>()
    results.append(0)

    // Set
    var words = Set<String>()
    words.insert("hey")

    print(foobar, results, words)
  }

  func createEnums() {
    enum Result {
      case success
      case failure
    }

    let result1 = Result.failure
    print(result1)
  }


  func createEnumAssVal() {
    enum Activity {
      case bored
      case running(destination: String)
      case talking(topic: String)
      case singing(volume: Int)
    }

    let talking = Activity.talking(topic: "football")
    print(talking)
  }

  func createEnumRawVal() {
    enum Planet: Int {
      case mercury
      case venus
      case earth
      case mars
    }

    let earth = Planet(rawValue: 2)

    print(earth, Planet.earth)
  }
}
