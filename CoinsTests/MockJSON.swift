//
//  MockJSON.swift
//  CoinsTests
//
//  Created by 홍다희 on 2021/11/18.
//

import Foundation

struct MockJSON {
    static let coin = """
    {
    "Message": "Success",
    "Type": 100,
    "MetaData": {
        "Count": 3275
    },
    "SponsoredData": [],
    "Data": [
        {
            "CoinInfo": {
                "Id": "1182",
                "Name": "BTC",
                "FullName": "Bitcoin",
                "Internal": "BTC",
                "ImageUrl": "/media/37746251/btc.png",
                "Url": "/coins/btc/overview",
                "Algorithm": "SHA-256",
                "ProofType": "PoW",
                "Rating": {
                    "Weiss": {
                        "Rating": "A-",
                        "TechnologyAdoptionRating": "A-",
                        "MarketPerformanceRating": "A-"
                    }
                },
                "NetHashesPerSecond": 156819203103601950000,
                "BlockNumber": 710267,
                "BlockTime": 612,
                "BlockReward": 6.25,
                "AssetLaunchDate": "2009-01-03",
                "MaxSupply": 20999999.9769,
                "Type": 1,
                "DocumentType": "Webpagecoinp"
            },
            "RAW": {
                "USD": {
                    "TYPE": "5",
                    "MARKET": "CCCAGG",
                    "FROMSYMBOL": "BTC",
                    "TOSYMBOL": "USD",
                    "FLAGS": "2049",
                    "PRICE": 59593.72,
                    "LASTUPDATE": 1637235546,
                    "MEDIAN": 59619,
                    "LASTVOLUME": 0.000228,
                    "LASTVOLUMETO": 13.58837136,
                    "LASTTRADEID": "24167234",
                    "VOLUMEDAY": 16643.509440235855,
                    "VOLUMEDAYTO": 997275889.3672744,
                    "VOLUME24HOUR": 36471.24089891001,
                    "VOLUME24HOURTO": 2190151701.7104597,
                    "OPENDAY": 60365.56,
                    "HIGHDAY": 60964.37,
                    "LOWDAY": 59035.7,
                    "OPEN24HOUR": 60790.34,
                    "HIGH24HOUR": 60978.54,
                    "LOW24HOUR": 59022.08,
                    "LASTMARKET": "binanceusa",
                    "VOLUMEHOUR": 700.7577358899365,
                    "VOLUMEHOURTO": 41906829.958964765,
                    "OPENHOUR": 59817.78,
                    "HIGHHOUR": 59989.81,
                    "LOWHOUR": 59588.62,
                    "TOPTIERVOLUME24HOUR": 36471.240377910006,
                    "TOPTIERVOLUME24HOURTO": 2190151669.276692,
                    "CHANGE24HOUR": -1196.6199999999953,
                    "CHANGEPCT24HOUR": -1.9684377484975333,
                    "CHANGEDAY": -771.8399999999965,
                    "CHANGEPCTDAY": -1.278609856348548,
                    "CHANGEHOUR": -224.05999999999767,
                    "CHANGEPCTHOUR": -0.3745709051723378,
                    "CONVERSIONTYPE": "direct",
                    "CONVERSIONSYMBOL": "",
                    "SUPPLY": 18873906,
                    "MKTCAP": 1124766269470.32,
                    "MKTCAPPENALTY": 0,
                    "CIRCULATINGSUPPLY": 18873906,
                    "CIRCULATINGSUPPLYMKTCAP": 1124766269470.32,
                    "TOTALVOLUME24H": 191304.9465633542,
                    "TOTALVOLUME24HTO": 11417268203.63976,
                    "TOTALTOPTIERVOLUME24H": 191004.96482572722,
                    "TOTALTOPTIERVOLUME24HTO": 11399391174.577066,
                    "IMAGEURL": "/media/37746251/btc.png"
                }
            },
            "DISPLAY": {
                "USD": {
                    "FROMSYMBOL": "Ƀ",
                    "TOSYMBOL": "$",
                    "MARKET": "CryptoCompare Index",
                    "PRICE": "$ 59,593.7",
                    "LASTUPDATE": "Just now",
                    "LASTVOLUME": "Ƀ 0.0002280",
                    "LASTVOLUMETO": "$ 13.59",
                    "LASTTRADEID": "24167234",
                    "VOLUMEDAY": "Ƀ 16,643.5",
                    "VOLUMEDAYTO": "$ 997,275,889.4",
                    "VOLUME24HOUR": "Ƀ 36,471.2",
                    "VOLUME24HOURTO": "$ 2,190,151,701.7",
                    "OPENDAY": "$ 60,365.6",
                    "HIGHDAY": "$ 60,964.4",
                    "LOWDAY": "$ 59,035.7",
                    "OPEN24HOUR": "$ 60,790.3",
                    "HIGH24HOUR": "$ 60,978.5",
                    "LOW24HOUR": "$ 59,022.1",
                    "LASTMARKET": "binanceusa",
                    "VOLUMEHOUR": "Ƀ 700.76",
                    "VOLUMEHOURTO": "$ 41,906,830.0",
                    "OPENHOUR": "$ 59,817.8",
                    "HIGHHOUR": "$ 59,989.8",
                    "LOWHOUR": "$ 59,588.6",
                    "TOPTIERVOLUME24HOUR": "Ƀ 36,471.2",
                    "TOPTIERVOLUME24HOURTO": "$ 2,190,151,669.3",
                    "CHANGE24HOUR": "$ -1,196.62",
                    "CHANGEPCT24HOUR": "-1.97",
                    "CHANGEDAY": "$ -771.84",
                    "CHANGEPCTDAY": "-1.28",
                    "CHANGEHOUR": "$ -224.06",
                    "CHANGEPCTHOUR": "-0.37",
                    "CONVERSIONTYPE": "direct",
                    "CONVERSIONSYMBOL": "",
                    "SUPPLY": "Ƀ 18,873,906.0",
                    "MKTCAP": "$ 1,124.77 B",
                    "MKTCAPPENALTY": "0 %",
                    "CIRCULATINGSUPPLY": "Ƀ 18,873,906.0",
                    "CIRCULATINGSUPPLYMKTCAP": "$ 1,124.77 B",
                    "TOTALVOLUME24H": "Ƀ 191.30 K",
                    "TOTALVOLUME24HTO": "$ 11.42 B",
                    "TOTALTOPTIERVOLUME24H": "Ƀ 191.00 K",
                    "TOTALTOPTIERVOLUME24HTO": "$ 11.40 B",
                    "IMAGEURL": "/media/37746251/btc.png"
                }
            }
        }
    ]
    }
    """.data(using: .utf8)!

    static let article = """
    {
        "Type": 100,
        "Message": "News list successfully returned",
        "Promoted": [],
        "Data": [
            {
                "id": "27375434",
                "guid": "https://cryptopotato.com/?p=153025",
                "published_on": 1637487712,
                "imageurl": "https://images.cryptocompare.com/news/default/cryptopotato.png",
                "title": "Market Watch: BTC Eyes $60K, AVAX to Replace DOGE As Top 10?",
                "url": "https://cryptopotato.com/market-watch-btc-eyes-60k-avax-to-replace-doge-as-top-10/",
                "source": "cryptopotato",
                "body": "While bitcoin and most larger-cap alts stand still, Avalanche has gone on a tear by registering yet another new all-time high.",
                "tags": "ADABTC|ADAUSD|AVAXBTC|AVAXUSD|BNBBTC|BNBUSD|BTCEUR|BTCGBP|BTCUSD|BTCUSDT|Crypto News|DOGEBTC|DOGEUSD|DOTBTC|DOTUSD|DOTUSDT|ETHBTC|ETHUSD|featured1|Market Updates|SHIBBTC|SHIBUSD|social|SOLBTC|SOLUSD|XRPBTC|XRPUSD|Avalanche (AVAX) Price|Bitcoin (BTC) Price|Dogecoin",
                "categories": "BTC|Market",
                "upvotes": "0",
                "downvotes": "0",
                "lang": "EN",
                "source_info": {
                    "name": "Crypto Potato",
                    "lang": "EN",
                    "img": "https://images.cryptocompare.com/news/default/cryptopotato.png"
                }
            },
        ],
        "RateLimit": {},
        "HasWarning": false
    }
    """.data(using: .utf8)!

    static let historicalCoin = """
    {
    "Response": "Success",
    "Message": "",
    "HasWarning": false,
    "Type": 100,
    "RateLimit": {},
    "Data": {
        "Aggregated": false,
        "TimeFrom": 1636848000,
        "TimeTo": 1637452800,
        "Data": [
            {
                "time": 1636848000,
                "high": 65509.06,
                "low": 63616.33,
                "open": 64409.56,
                "volumefrom": 14680.72,
                "volumeto": 947303706.23,
                "close": 65509.06,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1636934400,
                "high": 66335.42,
                "low": 63442.58,
                "open": 65509.06,
                "volumefrom": 25263.23,
                "volumeto": 1639253320.63,
                "close": 63614.06,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637020800,
                "high": 63614.53,
                "low": 58745.71,
                "open": 63614.06,
                "volumefrom": 61509.16,
                "volumeto": 3740808475.72,
                "close": 60108.9,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637107200,
                "high": 60837.09,
                "low": 58566.05,
                "open": 60108.9,
                "volumefrom": 43164.9,
                "volumeto": 2582737930.61,
                "close": 60365.6,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637193600,
                "high": 60964.37,
                "low": 56535.61,
                "open": 60365.6,
                "volumefrom": 63523.43,
                "volumeto": 3718546724.95,
                "close": 56930.68,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637280000,
                "high": 58403.92,
                "low": 55655.03,
                "open": 56930.68,
                "volumefrom": 36833.38,
                "volumeto": 2107344590.7,
                "close": 58136.22,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637366400,
                "high": 59901.9,
                "low": 57450.63,
                "open": 58136.22,
                "volumefrom": 16773.71,
                "volumeto": 985075173.7,
                "close": 59769.66,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637452800,
                "high": 59824.18,
                "low": 58575.6,
                "open": 59769.66,
                "volumefrom": 5742.12,
                "volumeto": 339198615.26,
                "close": 58708.55,
                "conversionType": "direct",
                "conversionSymbol": ""
            }
        ]
    }
    }
    """.data(using: .utf8)!
}
