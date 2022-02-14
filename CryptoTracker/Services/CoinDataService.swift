//
//  CoinDataService.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 19/01/22.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h") else {
            return
        }
        
        
        //this was the optimize one of the below code
        coinSubscription = NetworkingManager.download(url: url)
                        .decode(type: [CoinModel].self, decoder: JSONDecoder())
                        .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                            self?.allCoins = returnedCoins
                            self?.coinSubscription?.cancel()
                        })
        
        
//        coinSubscription = URLSession.shared.dataTaskPublisher(for: url)
//                        .subscribe(on: DispatchQueue.global(qos: .default))
//                        .tryMap { (output)-> Data in
//
//                            guard let response = output.response as? HTTPURLResponse,
//                                  response.statusCode >= 200 && response.statusCode <= 300 else {
//                                      throw URLError(.badServerResponse)
//                                  }
//                            return output.data
//                        }
//                        .receive(on: DispatchQueue.main)
//                        .decode(type: [CoinModel].self, decoder: JSONDecoder())
//                        .sink { (Completion) in
//                            switch Completion{
//                            case .finished:
//                                break
//                            case .failure(let error):
//                                debugPrint(error.localizedDescription)
//                            }
//                        } receiveValue: { [weak self] (returnedCoins) in
//                            self?.allCoins = returnedCoins
//                            self?.coinSubscription?.cancel()
//                        }

    }
    
}
