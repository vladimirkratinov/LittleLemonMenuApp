import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foodItems: [MenuItem] = []
    @Published var drinkItems: [MenuItem] = []
    @Published var dessertItems: [MenuItem] = []
    
    @Published var showOptionsView = false
    @Published var isShowFood = true
    @Published var isShowDrinks = true
    @Published var isShowDesserts = true
    @Published var sortBy = SortBy.fromAtoZ
    
    init() {
        // Load menu items from a data source or perform any necessary setup
        loadMenuItems()
    }
    
    func loadMenuItems() {
        // Simulated data retrieval or any other business logic
        // Example: Load menu items from a static array
        let foodItems = [
            MenuItem(price: 615, title: "Food1", picture: "food1", menuCategory: .food, ordersCount: 34, ingredients: [.broccoli, .carrot, .pasta]),
            MenuItem(price: 845, title: "Food2", picture: "food2", menuCategory: .food, ordersCount: 12, ingredients: [.pasta, .carrot]),
            MenuItem(price: 799, title: "Food3", picture: "food3", menuCategory: .food, ordersCount: 22, ingredients: [.broccoli, .pasta]),
            MenuItem(price: 645, title: "Food4", picture: "food4", menuCategory: .food, ordersCount: 46, ingredients: [.broccoli, .spinach, .tomatoSauce]),
            MenuItem(price: 975, title: "Food5", picture: "food5", menuCategory: .food, ordersCount: 78, ingredients: [.broccoli, .pasta]),
            MenuItem(price: 970, title: "Food6", picture: "food6", menuCategory: .food, ordersCount: 51, ingredients: [.broccoli, .carrot]),
            MenuItem(price: 215, title: "Food7", picture: "food7", menuCategory: .food, ordersCount: 88, ingredients: [.carrot, .pasta]),
            MenuItem(price: 480, title: "Food8", picture: "food8", menuCategory: .food, ordersCount: 53, ingredients: [.pasta, .carrot]),
            MenuItem(price: 520, title: "Food9", picture: "food9", menuCategory: .food, ordersCount: 12, ingredients: [.pasta, .spinach]),
            MenuItem(price: 699, title: "Food10", picture: "food10", menuCategory: .food, ordersCount: 55, ingredients: [.pasta, .water]),
            MenuItem(price: 499, title: "Food11", picture: "food11", menuCategory: .food, ordersCount: 45, ingredients: [.pasta, .tomatoSauce]),
            MenuItem(price: 599, title: "Food12", picture: "food12", menuCategory: .food, ordersCount: 32, ingredients: [.pasta, .broccoli])
        ]
        
        let drinkItems = [
            MenuItem(price: 415, title: "Drink1", picture: "drink1", menuCategory: .drink, ordersCount: 15, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 215, title: "Drink2", picture: "drink2", menuCategory: .drink, ordersCount: 25, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 915, title: "Drink3", picture: "drink3", menuCategory: .drink, ordersCount: 35, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 815, title: "Drink4", picture: "drink4", menuCategory: .drink, ordersCount: 45, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 715, title: "Drink5", picture: "drink5", menuCategory: .drink, ordersCount: 55, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 615, title: "Drink6", picture: "drink6", menuCategory: .drink, ordersCount: 65, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 515, title: "Drink7", picture: "drink7", menuCategory: .drink, ordersCount: 75, ingredients: [.water, .orangeJuice]),
            MenuItem(price: 115, title: "Drink8", picture: "drink8", menuCategory: .drink, ordersCount: 85, ingredients: [.water, .orangeJuice])
        ]
        
        let dessertItems = [
            MenuItem(price: 215, title: "Dessert1", picture: "dessert1", menuCategory: .dessert, ordersCount: 55, ingredients: [.sugar, .chocolate]),
            MenuItem(price: 315, title: "Dessert2", picture: "dessert2", menuCategory: .dessert, ordersCount: 15, ingredients: [.sugar, .chocolate]),
            MenuItem(price: 125, title: "Dessert3", picture: "dessert3", menuCategory: .dessert, ordersCount: 25, ingredients: [.sugar, .chocolate]),
            MenuItem(price: 915, title: "Dessert4", picture: "dessert4", menuCategory: .dessert, ordersCount: 65, ingredients: [.sugar, .chocolate]),
        ]
        
        self.foodItems = foodItems
        self.drinkItems = drinkItems
        self.dessertItems = dessertItems
    }
    
    func updateMenuItems() {
        switch sortBy {
        case .mostPopular:
            foodItems.sort { $0.ordersCount > $1.ordersCount }
            drinkItems.sort { $0.ordersCount > $1.ordersCount }
            dessertItems.sort { $0.ordersCount > $1.ordersCount }
        case .fromLowPrice:
            foodItems.sort { $0.price < $1.price }
            drinkItems.sort { $0.price < $1.price }
            dessertItems.sort { $0.price < $1.price }
        case .fromAtoZ:
            foodItems.sort { sortByTitle(first: $0, second: $1) }
            drinkItems.sort { sortByTitle(first: $0, second: $1) }
            dessertItems.sort { sortByTitle(first: $0, second: $1) }
        }
    }
    
    func sortByTitle(first: MenuItem, second: MenuItem) -> Bool {
        let firstTitle = first.title.split(separator: " ")
        let secondTitle = second.title.split(separator: " ")
        let firstNumber = Int(firstTitle[secondTitle.count - 1]) ?? 0
        let secondNumber = Int(firstTitle[secondTitle.count - 1]) ?? 0
        if firstNumber != secondNumber {
            return firstNumber < secondNumber
        } else {
            return first.title < second.title
        }
    }
}


