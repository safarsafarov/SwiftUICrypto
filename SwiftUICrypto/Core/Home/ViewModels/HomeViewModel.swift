//
//  HomeViewModel.swift
//  SwiftUICrypto
//
//  Created by Safar Safarov on 18/08/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var allCoincs: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoincs.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
        
    }
}
