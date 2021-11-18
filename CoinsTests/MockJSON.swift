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
}
