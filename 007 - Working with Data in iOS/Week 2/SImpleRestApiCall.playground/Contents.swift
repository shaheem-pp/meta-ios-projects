import Foundation


let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"
let url = URL(string: littleLemonAddress)
guard let url = url else {
    throw NSError()
}


let request = URLRequest(url: url)
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data,
       let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()



let recipesJSONString = """

[
    {
        "title": "Apple pie",
        "views": 3847,
        "rating": 4.5
    },
    {
        "title": "Boiled egg",
        "views": 10584,
        "rating": 4.9
    },
    {
        "title": "Bacon roll",
        "views": 5847,
        "rating": 3.2
    }
]
"""

struct Recipe: Decodable {
    let title: String
    let rating: Double
    let views: Int
}

let recipesData = Data(recipesJSONString.utf8)
let decoder = JSONDecoder()
let recipes = try! decoder.decode([Recipe].self, from: recipesData)
recipes.forEach {
    print("\($0.title) with a rating of \($0.rating)")
}
