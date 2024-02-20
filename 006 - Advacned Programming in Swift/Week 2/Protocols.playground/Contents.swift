import Foundation

// Define a protocol named Employee.
// It's like a contract that any type (like a struct or class) can agree to follow.
protocol Employee {
    // Every Employee must have a name, but you can't change it after setting it.
    var name: String { get }
    // Every Employee must keep track of how many days they've been working, and this can change over time.
    var daysWorking: Int { get set }
    // Every Employee must be able to do their main job, but we don't specify what that is here.
    func executePrimaryDuty()
    // Every Employee must also be able to dance to the Happy Birthday song, given the song's lyrics.
    func danceToHappyBirthdaySong(lyrics: String)
}

// Create a struct that represents a Software Developer, who is also an Employee.
struct SoftwareDeveloper: Employee {
    // The developer's name and days working are stored here.
    var name: String
    var daysWorking: Int
    
    // This function describes what the developer does as their primary duty.
    func executePrimaryDuty() {
        print("\(name) is coding.")
    }
    
    // This function simulates the developer dancing to the Happy Birthday song.
    func danceToHappyBirthdaySong(lyrics: String) {
        print("\(name) is awkwardly dancing. Lyrics: \(lyrics)")
    }
}

// Let's create an instance of SoftwareDeveloper named Sarah.
var sarah = SoftwareDeveloper(name: "Sarah", daysWorking: 120)

// Now, let's have Sarah do her primary duty, which is coding.
sarah.executePrimaryDuty() // You should see "Sarah is coding." printed out.

// Let's see how Sarah dances when someone plays the Happy Birthday song.
sarah.danceToHappyBirthdaySong(lyrics: "Happy Birthday to you, Happy Birthday to you...")
// You should see "Sarah is awkwardly dancing. Lyrics: Happy Birthday to you, Happy Birthday to you..." printed out.

// Now, let's increase the number of days Sarah has been working by 1.
sarah.daysWorking += 1
// And let's check how many days she's been working now.
print("\(sarah.name) has been working for \(sarah.daysWorking) days.")
// You should see "Sarah has been working for 121 days." printed out.
