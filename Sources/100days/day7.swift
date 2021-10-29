class Day7 {
  func main() {
    travelWithParam {
      "Going to \($0) for \($1) days"
    }

    let times2 = times(2)
    print(10 == times2(5))
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
