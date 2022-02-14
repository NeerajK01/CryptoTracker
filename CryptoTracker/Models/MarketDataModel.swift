//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 27/01/22.
//

import Foundation
import SwiftUI

//JSON data
/**
 https://api.coingecko.com/api/v3/global
 
 {
   "data": {
     "active_cryptocurrencies": 12897,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 726,
     "total_market_cap": {
       "btc": 47642064.048744254,
       "eth": 713047580.0176575,
       "ltc": 16080439578.383596,
       "bch": 6038503421.23682,
       "bnb": 4704289035.928627,
       "eos": 790864595223.8953,
       "xrp": 2857186813073.4585,
       "xlm": 8880757640320.965,
       "link": 115961510964.25017,
       "dot": 97472023512.49701,
       "yfi": 72371413.94500731,
       "usd": 1746612986483.8652,
       "aed": 6415363644357.811,
       "ars": 182875811651248.4,
       "aud": 2461594252339.9917,
       "bdt": 150167788455500.12,
       "bhd": 658410217836.9032,
       "bmd": 1746612986483.8652,
       "brl": 9489358835244.764,
       "cad": 2212637277085.54,
       "chf": 1620322387883.1604,
       "clp": 1402530228146543.5,
       "cny": 11112475803906.266,
       "czk": 38228046824039.89,
       "dkk": 11611140797999.39,
       "eur": 1559957696457.2935,
       "gbp": 1300664265548.8289,
       "hkd": 13608446893046.25,
       "huf": 559919121983128.2,
       "idr": 25073002446857996,
       "ils": 5575586880617.416,
       "inr": 131147487423028.08,
       "jpy": 200990965435734.88,
       "krw": 2100849834866664.5,
       "kwd": 528759135850.20593,
       "lkr": 354350350281114.5,
       "mmk": 3105525979463668,
       "mxn": 36159574982858.72,
       "myr": 7331408010766.014,
       "ngn": 725403305546477.8,
       "nok": 15620448989761.389,
       "nzd": 2634985763347.204,
       "php": 89555834268973.42,
       "pkr": 308940781039743.94,
       "pln": 7128661175294.974,
       "rub": 137409274880710.5,
       "sar": 6553143463183.598,
       "sek": 16301100577368.201,
       "sgd": 2359805140713.6855,
       "thb": 58004143974635.83,
       "try": 23773324020330.54,
       "twd": 48572433847623.11,
       "uah": 50283676174517.48,
       "vef": 174888358336.62915,
       "vnd": 39542978142320264,
       "zar": 26643478996016.875,
       "xdr": 1248407351606.2224,
       "xag": 74839921212.65233,
       "xau": 961685110.3580172,
       "bits": 47642064048744.25,
       "sats": 4764206404874425
     },
     "total_volume": {
       "btc": 3472711.5226993486,
       "eth": 51975257.51249379,
       "ltc": 1172130740.5319116,
       "bch": 440156841.0078419,
       "bnb": 342903672.7809057,
       "eos": 57647472828.19221,
       "xrp": 208265232969.61057,
       "xlm": 647333611664.8745,
       "link": 8452632843.597228,
       "dot": 7104902483.787165,
       "yfi": 5275276.127074003,
       "usd": 127313607522.3994,
       "aed": 467626827151.60565,
       "ars": 13330130652914.594,
       "aud": 179429814702.51593,
       "bdt": 10945986907161.275,
       "bhd": 47992646746.07373,
       "bmd": 127313607522.3994,
       "brl": 691695593550.8414,
       "cad": 161282915027.0956,
       "chf": 118108069816.88461,
       "clp": 102232826840486.69,
       "cny": 810007365139.7595,
       "czk": 2786507707984.8457,
       "dkk": 846355909341.8373,
       "eur": 113707984227.3031,
       "gbp": 94807642622.56512,
       "hkd": 991942966265.5325,
       "huf": 40813462336583.27,
       "idr": 1827614026478513.8,
       "ils": 406414062714.01404,
       "inr": 9559564637691.678,
       "jpy": 14650575191557.855,
       "krw": 153134537192554.5,
       "kwd": 38542157659.68602,
       "lkr": 25829203017626.43,
       "mmk": 226367099500381.97,
       "mxn": 2635733258122.648,
       "myr": 534398867575.2707,
       "ngn": 52875887476202.836,
       "nok": 1138601239882.9216,
       "nzd": 192068618462.08704,
       "php": 6527877912103.486,
       "pkr": 22519221859295.863,
       "pln": 519620304014.07104,
       "rub": 10015997033961.064,
       "sar": 477669833767.40216,
       "sek": 1188215098107.1873,
       "sgd": 172010232283.3256,
       "thb": 4228021249015.116,
       "try": 1732878243348.1304,
       "twd": 3540527768394.1704,
       "uah": 3665263148050.618,
       "vef": 12747911521.21783,
       "vnd": 2882355300479547,
       "zar": 1942088747867.855,
       "xdr": 90998546799.10277,
       "xag": 5455209843.284267,
       "xau": 70098872.30183318,
       "bits": 3472711522699.3486,
       "sats": 347271152269934.9
     },
     "market_cap_percentage": {
       "btc": 39.75722374375014,
       "eth": 16.73070967602584,
       "usdt": 4.491393284334099,
       "bnb": 3.5776146010674603,
       "usdc": 2.8145715420001425,
       "ada": 1.9430539398495816,
       "xrp": 1.6692937892857422,
       "sol": 1.6371417261458507,
       "luna": 1.3784218928650247,
       "dot": 1.1034338437641584
     },
     "market_cap_change_percentage_24h_usd": -2.481989045194123,
     "updated_at": 1643278850
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviation()
        }
        return ""
    }
    
    var valume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviation()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
