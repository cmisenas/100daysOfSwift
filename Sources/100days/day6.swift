class Day6 {
  func main() {
    closure()
    closureWithParam()
    travel(action: { print("sailing") })
    // Or alternatively since the last param is a closure
    travel {
      print("poop")
    }
  }

  func closure() {
    let driving = {
      print("I'm driving in my car")
    }

    driving()
  }

  func closureWithParam() {
    let driving = { (place: String) in
      print("I'm driving in my car to \(place)")
    }

    // Closures don't require parameter labels
    driving("Yakima")
  }

  func travel(action: () -> Void) {
    print("I'm leaving.")
    action()
    print("I'm here!")
  }
}
