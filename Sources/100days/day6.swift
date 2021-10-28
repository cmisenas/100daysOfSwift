class Day6 {
  func main() {
    closure()
    closureWithParam()
    travel(action: { print("sailing") })
    // Or alternatively since the last param is a closure
    travel {
      print("poop")
    }
    travelWithParam {
      "Going to \($0) for \($1) days"
    }

    let times2 = times(2)
    print(10 == times2(5))
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

  func travelWithParam(action: (String, Int) -> String) {
    print("I'm leaving.")
    print(action("Bremerton", 5))
    print("I'm here!")
  }

  func times(_ n: Int) -> (Int) -> Int {
    return {
      n * $0
    }
  }
}
