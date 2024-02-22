import Cocoa

struct ScoreBoard{
    
    static var gameNumber = 0
    
    let team1Name: String
    let team1Score: Int
    let team2Name: String
    let team2Score: Int
    
    init(team1Name: String, team1Score: Int, team2Name: String, team2Score: Int) {
        
        ScoreBoard.gameNumber += 1
        
        self.team1Name = team1Name
        self.team1Score = team1Score
        self.team2Name = team2Name
        self.team2Score = team2Score
        
        print("Match \(ScoreBoard.gameNumber) Result:")
        print("\(team1Name) \(team1Score) vs \(team2Name) \(team1Score)")
        print("Winner: \(team1Score > team2Score ? team1Score : team2Score)")
    }
    
    func getScore(teamName:String) -> Int {
        if (teamName == team1Name){
            return team1Score
        }else if (teamName == team2Name){
            return team2Score
        }else{
            return 0
        }
    }
    
}

func findTournamentWinner(karasunoScore: Int, aobaJosaiScore: Int, shiratorizawaScore: Int) -> String {
    let maxScore = max(karasunoScore, aobaJosaiScore, shiratorizawaScore)
    
    if maxScore == karasunoScore {
        return "Tournament Winner: Karasuno"
    } else if maxScore == aobaJosaiScore {
        return "Tournament Winner: Aoba Josai"
    } else {
        return "Tournament Winner: Shiratorizawa"
    }
}



var karasunoScore = 0
var aobaJosaiScore = 0
var shiratorizawaScore = 0

let game1 = ScoreBoard(team1Name: "Karasuno", team1Score: 25, team2Name: "Aoba Josai", team2Score: 23)
karasunoScore += game1.getScore(teamName: "Karasuno")
aobaJosaiScore += game1.getScore(teamName: "Aoba Josai")

let game2 = ScoreBoard(team1Name: "Karasuno", team1Score: 22, team2Name: "Shiratorizawa", team2Score: 25)
karasunoScore += game2.getScore(teamName: "Karasuno")
shiratorizawaScore += game2.getScore(teamName: "Shiratorizawa")

let game3 = ScoreBoard(team1Name: "Aoba Josai", team1Score: 25, team2Name: "Shiratorizawa", team2Score: 20)
aobaJosaiScore += game3.getScore(teamName: "Aoba Josai")
shiratorizawaScore += game3.getScore(teamName: "Shiratorizawa")

let winner = findTournamentWinner(karasunoScore: karasunoScore, aobaJosaiScore: aobaJosaiScore, shiratorizawaScore: shiratorizawaScore)
print(winner)
