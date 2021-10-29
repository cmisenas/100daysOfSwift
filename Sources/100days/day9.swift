struct FamilyTree{
  init() {
    print("Initializing fam")
  }
}

struct HumanBean {
  static private var population = 0

  var name: String
  lazy var familyTree = FamilyTree()

  init(name: String = "Jane Doe") {
    self.name = name
    HumanBean.population += 1
    print("New person!")
  }

  static func getPopulation() -> Int {
    return HumanBean.population
  }
}

class Day9 {
  func main() {
    print("Human Bean pop: ", HumanBean.getPopulation())
    createPeople()
    lazyProps()
    print("Human Bean pop: ", HumanBean.getPopulation())
  }

  func createPeople() {
    var johnDoe = HumanBean(name: "John Doe") // does not work anymore with init
    var janeDoe = HumanBean()
    print(johnDoe, janeDoe)
  }

  func lazyProps() {
    var janeDoe = HumanBean()
    print("Jane Doe initialized")
    janeDoe.familyTree
    print(janeDoe.familyTree)
  }
}
