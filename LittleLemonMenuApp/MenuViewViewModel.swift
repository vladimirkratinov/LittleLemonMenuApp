import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foodItems: [MenuItem] = []
    @Published var drinkItems: [MenuItem] = []
    @Published var dessertItems: [MenuItem] = []
    
    init() {
        // Load menu items from a data source or perform any necessary setup
        loadMenuItems()
    }
    
    func loadMenuItems() {
        // Simulated data retrieval or any other business logic
        // Example: Load menu items from a static array
        let foodItems = [
            MenuItem(type: MenuCategory.Food, name: "Food1", picture: "food1", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food2", picture: "food2", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food3", picture: "food3", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food4", picture: "food4", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food5", picture: "food5", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food6", picture: "food6", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food7", picture: "food7", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food8", picture: "food8", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food9", picture: "food9", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food10", picture: "food10", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food11", picture: "food11", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
            MenuItem(type: MenuCategory.Food, name: "Food12", picture: "food12", orderAmount: 1, price: 25, ingredients: [Ingredient.Carrot, Ingredient.Pasta]),
        ]
        
        let drinkItems = [
            MenuItem(type: MenuCategory.Drink, name: "Drink1", picture: "drink1", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink2", picture: "drink2", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink3", picture: "drink3", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink4", picture: "drink4", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink5", picture: "drink5", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink6", picture: "drink6", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink7", picture: "drink7", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
            MenuItem(type: MenuCategory.Drink, name: "Drink8", picture: "drink8", orderAmount: 1, price: 25, ingredients: [Ingredient.Water, Ingredient.OrangeJuice]),
        ]
        
        let dessertItems = [
            MenuItem(type: MenuCategory.Dessert, name: "Dessert1", picture: "dessert1", orderAmount: 1, price: 25, ingredients: [Ingredient.Chocolate, Ingredient.Sugar]),
            MenuItem(type: MenuCategory.Dessert, name: "Dessert2", picture: "dessert2", orderAmount: 1, price: 25, ingredients: [Ingredient.Chocolate, Ingredient.Sugar]),
            MenuItem(type: MenuCategory.Dessert, name: "Dessert3", picture: "dessert3", orderAmount: 1, price: 25, ingredients: [Ingredient.Chocolate, Ingredient.Sugar]),
            MenuItem(type: MenuCategory.Dessert, name: "Dessert4", picture: "dessert4", orderAmount: 1, price: 25, ingredients: [Ingredient.Chocolate, Ingredient.Sugar]),
        ]
        
        self.foodItems = foodItems
        self.drinkItems = drinkItems
        self.dessertItems = dessertItems
    }
}


