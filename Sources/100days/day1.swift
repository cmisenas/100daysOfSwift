// Day 1

class Day1 {
  func main() {
    createVar()
    createMultiLineString()
    createConst()
    createDouble()
    createBool()
    interpolateString()
    typeAnnotate()
  }

  func createVar() {
    var favoriteShow = "Frasier"
    favoriteShow = "The Office"
    favoriteShow = "Brooklyn 99"

    var age = 38
    age = 5
    var population = 8_000
    population = 1_000_023

    print(favoriteShow)
    print(age, population)
  }

  func createMultiLineString() {
    var poem = """
    The quick brown fox
    jumps over the lazy dog
    """

    print(poem)

    poem = """
    The quick brown fox \
    jumps over the lazy dog
    """

    print(poem)
  }

  func createConst() {
    let sport = "basketball"
    // sport = "chess" <- won't compile
    print(sport)
  }

  func createDouble() {
    let pi = 3.141
    print(pi)
  }

  func createBool() {
    let awesome = true
    print(awesome)
  }

  func interpolateString() {
    let score = 85
    let scoreStr = "Your score was \(score)"
    print(scoreStr)
  }

  func typeAnnotate() {
    let album: String = "Reputation"
    let year: Int = 1989
    let height: Double = 1.78
    let taylorRocks: Bool = true

    print(album, year, height, taylorRocks)
  }
}
