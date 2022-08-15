import Foundation

// CoinGecko API info
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 */

/*
 JSON Responses:
 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
 "current_price": 24312,
 "market_cap": 464939552429,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 510599472610,
 "total_volume": 28977338455,
 "high_24h": 25093,
 "low_24h": 24028,
 "price_change_24h": -355.95585802316054,
 "price_change_percentage_24h": -1.44298,
 "market_cap_change_24h": -6879673487.215942,
 "market_cap_change_percentage_24h": -1.45812,
 "circulating_supply": 19122093,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 69045,
 "ath_change_percentage": -64.84242,
 "ath_date": "2021-11-10T14:24:11.849Z",
 "atl": 67.81,
 "atl_change_percentage": 35698.30392,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2022-08-15T11:18:31.495Z",
 "sparkline_in_7d": {
 "price": [
 23457.93209587343,
 23757.656043541465,
 ]
 },
 "price_change_percentage_24h_in_currency": -1.4429828785204661
 },
 
 */

class CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice, marketCap, marketCapRank, fullyDilutedValuation: Int
    let totalVolume, high24H, low24H: Int
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double
    let circulatingSupply, totalSupply, maxSupply, ath: Int
    let athChangePercentage: Double
    let athDate: String
    let atl, atlChangePercentage: Double
    let atlDate: String
    let lastUpdated: String
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    
    struct SparklineIn7D: Codable {
        let price: [Double]
    }
    
}
