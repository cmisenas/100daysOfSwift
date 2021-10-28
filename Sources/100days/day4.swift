class Day4 {
  func main() {
    forLoop()
    whileLoop()
    repeatLoop()
    exitLoop()
    skipLoop()
  }

  func forLoop() {
    let count = 1...10
    for number in count {
      print("Number is \(number)")
    }

    for album in ["Red", "1989", "Reputation"] {
      print("\(album) is on Apple Music")
    }
  }

  func whileLoop() {
    var number = 1
    while number <= 20 {
      print(number)
      number += 1
    }

    print("End of countdown")
  }

  func repeatLoop() {
    var number = 1

    repeat {
      print(number)
      number += 1
    } while number <= 20

    print("End of countdown 2")
  }

  func exitLoop() {
    outerLoop: for i in 1...10 {
      for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 50 {
          print("yowza")
          break outerLoop
        }
      }
    }
  }

  func skipLoop() {
    for i in 1...10 {
      if i % 2 == 1 {
        continue
      }
      print("\(i) is even")
    }
  }
}
