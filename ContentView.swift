import SwiftUI

struct ContentView: View {
    let date = Date()
    var body: some View {
        VStack{
            
            Text("NBA SCHEDULE FOR \(date, format: .dateTime.day().month())")
                .bold()
                .font(.title)
        }
        .task {
            print("this is happeneing")
            var data = getData()
            
            do {
                print("does it get here")
                let decodedGames = try JSONDecoder().decode(Games.self, from: data)
            } catch {
                print(error)
            }
        }
    }
    
    func getData() -> Data {
        
        var rData = Data()
        let headers = [
            "X-RapidAPI-Host": "api-nba-v1.p.rapidapi.com",
            "X-RapidAPI-Key": "ff3a7ae9bcmsh4e698cda74ed1fbp1f4864jsn65a0ee09062d"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://api-nba-v1.p.rapidapi.com/games/date/2022-04-10")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error!)
            } else {
                let httpResponse = response as? HTTPURLResponse
                rData = data!
                
                print(httpResponse!)
            }
        })
        dataTask.resume()
        return(rData)

    }
}
