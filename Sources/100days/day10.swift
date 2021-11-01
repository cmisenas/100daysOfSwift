class Dog {
  var name: String
  var breed: String

  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }

  func speak() {
    print("\(self.name): Bark!")
  }
}

final class Husky: Dog {
  init(name: String) {
    super.init(name: name, breed: "Husky")
  }

  override func speak() {
    print("\(self.name): Awooo!")
  }
}

class SingerClass {
  var name = "Taylor Swift"

  deinit {
    print("Nooo :(")
  }
}

struct SingerStruct {
  var name = "Taylor Swift"
}

class Day10 {
  func main() {
    createClass()
    createClass2()
    createClass3()
    createClass4()
    createClass5()
  }

  func createClass() {
    // Difference #1
    // - Classes do not come with member initializer
    let brownie = Dog(name: "Brownie", breed: "Mix")
    brownie.speak()
  }

  func createClass2() {
    // Difference #2
    // - Classes have inheritance
    let Pixel = Husky(name: "Pixel")
    Pixel.speak()
  }

  func createClass3() {
    // Difference #3
    // - How they are copied--with structs, originals and the copy are different things
    // - with classes, both the original and the copy point to the same thing
    var singerStruct = SingerStruct()
    var singerClass = SingerClass()
    print("Struct: ", singerStruct.name, " Class: ", singerClass.name)
    var singerClassCopy = singerClass
    var singerStructCopy = singerStruct
    singerClassCopy.name = "Adele"
    singerStructCopy.name = "Adele"
    print("Struct: ", singerStruct.name, " Class: ", singerClass.name)
  }

  func createClass4() {
    // Difference #4
    // - Classes can have deinitializers - code that gets run
    // when an instance of a class is destroyed
    for _ in 1...3 {
      let person = SingerClass()
      print(person.name)
    }
  }

  func createClass5() {
    // Difference #5
    // - With a constant struct with a variable property, that property can't be changed
    // - With a constant class with a variable property, that property can't be changed
    let singerStructConst = SingerStruct()
    let singerClassConst = SingerClass()
    // singerStructConst.name = "Adele" // Invalid
    singerClassConst.name = "Adele"
    print("Struct: ", singerStructConst.name, " Class: ", singerClassConst.name)
  }
}
