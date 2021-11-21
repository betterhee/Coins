//
//  MockJSON.swift
//  CoinsTests
//
//  Created by 홍다희 on 2021/11/18.
//

import Foundation

enum MockJSON {

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

    enum HistoricalCoin {


        static let hour = """
        {
        "Response": "Success",
        "Message": "",
        "HasWarning": false,
        "Type": 100,
        "RateLimit": {},
        "Data": {
        "Aggregated": false,
        "TimeFrom": 1637494680,
        "TimeTo": 1637498280,
        "Data": [
            {
                "time": 1637494680,
                "high": 58860.36,
                "low": 58796.21,
                "open": 58796.21,
                "volumefrom": 6.761,
                "volumeto": 397990.86,
                "close": 58852.76,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637494740,
                "high": 58853.22,
                "low": 58792.16,
                "open": 58852.76,
                "volumefrom": 7.151,
                "volumeto": 420779.29,
                "close": 58793.64,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637494800,
                "high": 58798.06,
                "low": 58741.07,
                "open": 58793.64,
                "volumefrom": 5.871,
                "volumeto": 345134.49,
                "close": 58754.89,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637494860,
                "high": 58786.82,
                "low": 58751.05,
                "open": 58754.89,
                "volumefrom": 2.224,
                "volumeto": 130816.93,
                "close": 58758.73,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637494920,
                "high": 58760.25,
                "low": 58689.12,
                "open": 58758.73,
                "volumefrom": 6.107,
                "volumeto": 358600.58,
                "close": 58689.19,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637494980,
                "high": 58739.4,
                "low": 58684.56,
                "open": 58689.19,
                "volumefrom": 4.185,
                "volumeto": 245704.88,
                "close": 58735.79,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495040,
                "high": 58759.55,
                "low": 58735.79,
                "open": 58735.79,
                "volumefrom": 3.884,
                "volumeto": 228362.26,
                "close": 58759.55,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495100,
                "high": 58771.33,
                "low": 58753.34,
                "open": 58759.55,
                "volumefrom": 14.78,
                "volumeto": 868023.92,
                "close": 58771.33,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495160,
                "high": 58833.26,
                "low": 58771.25,
                "open": 58771.33,
                "volumefrom": 9.157,
                "volumeto": 538580.33,
                "close": 58828.75,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495220,
                "high": 58845.43,
                "low": 58823.12,
                "open": 58828.75,
                "volumefrom": 4.002,
                "volumeto": 235595.25,
                "close": 58831.87,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495280,
                "high": 58831.87,
                "low": 58807.37,
                "open": 58831.87,
                "volumefrom": 4.834,
                "volumeto": 284426.21,
                "close": 58811.5,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495340,
                "high": 58856.39,
                "low": 58800.81,
                "open": 58811.5,
                "volumefrom": 4.914,
                "volumeto": 289255.92,
                "close": 58830.29,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495400,
                "high": 58838.58,
                "low": 58822.99,
                "open": 58830.29,
                "volumefrom": 9.201,
                "volumeto": 541150.54,
                "close": 58832.65,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495460,
                "high": 58833.21,
                "low": 58820.32,
                "open": 58832.65,
                "volumefrom": 3.775,
                "volumeto": 222287.43,
                "close": 58820.32,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495520,
                "high": 58820.32,
                "low": 58750.39,
                "open": 58820.32,
                "volumefrom": 5.303,
                "volumeto": 312119.66,
                "close": 58756.78,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495580,
                "high": 58802.75,
                "low": 58748.85,
                "open": 58756.78,
                "volumefrom": 4.363,
                "volumeto": 256334.87,
                "close": 58802.75,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495640,
                "high": 58808.26,
                "low": 58793.51,
                "open": 58802.75,
                "volumefrom": 0.9476,
                "volumeto": 55879.05,
                "close": 58803.38,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495700,
                "high": 58805.68,
                "low": 58784.04,
                "open": 58803.38,
                "volumefrom": 2.592,
                "volumeto": 152383.36,
                "close": 58798.5,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495760,
                "high": 58783.45,
                "low": 58769.46,
                "open": 58775.3,
                "volumefrom": 53.8,
                "volumeto": 3162030.87,
                "close": 58773.81,
                "conversionType": "invert_divide",
                "conversionSymbol": "ETH"
            },
            {
                "time": 1637495820,
                "high": 58814.8,
                "low": 58788.89,
                "open": 58796.76,
                "volumefrom": 3.699,
                "volumeto": 217578.9,
                "close": 58789.19,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495880,
                "high": 58800.47,
                "low": 58782.77,
                "open": 58789.19,
                "volumefrom": 1.54,
                "volumeto": 90486.35,
                "close": 58784.96,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637495940,
                "high": 58808.35,
                "low": 58772.46,
                "open": 58784.96,
                "volumefrom": 4.277,
                "volumeto": 251617.8,
                "close": 58774.03,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496000,
                "high": 58789.85,
                "low": 58751.06,
                "open": 58774.03,
                "volumefrom": 6.318,
                "volumeto": 371464.64,
                "close": 58789.85,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496060,
                "high": 58816.61,
                "low": 58788.48,
                "open": 58789.85,
                "volumefrom": 2.688,
                "volumeto": 158167.35,
                "close": 58814.27,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496120,
                "high": 58816.18,
                "low": 58785.55,
                "open": 58814.27,
                "volumefrom": 1.766,
                "volumeto": 104039.04,
                "close": 58787.09,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496180,
                "high": 58787.73,
                "low": 58749.7,
                "open": 58787.09,
                "volumefrom": 12.56,
                "volumeto": 737451.65,
                "close": 58757.61,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496240,
                "high": 58796.85,
                "low": 58753.55,
                "open": 58757.61,
                "volumefrom": 10.08,
                "volumeto": 591974.2,
                "close": 58794.2,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496300,
                "high": 58818.33,
                "low": 58788.96,
                "open": 58794.2,
                "volumefrom": 3.676,
                "volumeto": 216337.86,
                "close": 58811.92,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496360,
                "high": 58811.92,
                "low": 58790.54,
                "open": 58811.92,
                "volumefrom": 2.059,
                "volumeto": 121020.08,
                "close": 58790.96,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496420,
                "high": 58801.87,
                "low": 58781.21,
                "open": 58790.96,
                "volumefrom": 3.028,
                "volumeto": 178214.19,
                "close": 58799.99,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496480,
                "high": 58818.55,
                "low": 58799.99,
                "open": 58799.99,
                "volumefrom": 1.911,
                "volumeto": 112368.94,
                "close": 58813.82,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496540,
                "high": 58866.31,
                "low": 58812.46,
                "open": 58813.82,
                "volumefrom": 3.957,
                "volumeto": 232797.43,
                "close": 58866.31,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496600,
                "high": 59046.41,
                "low": 58866.31,
                "open": 58866.31,
                "volumefrom": 30.15,
                "volumeto": 1778701.27,
                "close": 59023.65,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496660,
                "high": 59023.65,
                "low": 58945.86,
                "open": 59023.65,
                "volumefrom": 5.821,
                "volumeto": 343183.79,
                "close": 58945.86,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496720,
                "high": 59024.54,
                "low": 58942.55,
                "open": 58945.86,
                "volumefrom": 4.031,
                "volumeto": 237971.18,
                "close": 59022.65,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496780,
                "high": 59063.54,
                "low": 58985.09,
                "open": 59022.65,
                "volumefrom": 7.217,
                "volumeto": 425983.18,
                "close": 59059.5,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496840,
                "high": 59133.67,
                "low": 59055.42,
                "open": 59059.5,
                "volumefrom": 26.26,
                "volumeto": 1551543.28,
                "close": 59115.14,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496900,
                "high": 59115.14,
                "low": 59053.67,
                "open": 59115.14,
                "volumefrom": 22.51,
                "volumeto": 1329458.17,
                "close": 59067.74,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496960,
                "high": 59110.75,
                "low": 59048.27,
                "open": 59067.74,
                "volumefrom": 9.412,
                "volumeto": 556179.9,
                "close": 59110.75,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497020,
                "high": 59154.21,
                "low": 59110.75,
                "open": 59110.75,
                "volumefrom": 16.07,
                "volumeto": 950194.02,
                "close": 59140.96,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497080,
                "high": 59296.04,
                "low": 59128.01,
                "open": 59140.96,
                "volumefrom": 24,
                "volumeto": 1422228.51,
                "close": 59296.04,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497140,
                "high": 59353.5,
                "low": 59250.9,
                "open": 59296.04,
                "volumefrom": 42.23,
                "volumeto": 2505506.47,
                "close": 59254.72,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497200,
                "high": 59296.04,
                "low": 59208.42,
                "open": 59254.72,
                "volumefrom": 9.611,
                "volumeto": 569566.12,
                "close": 59267.72,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497260,
                "high": 59279.84,
                "low": 59222,
                "open": 59267.72,
                "volumefrom": 6.042,
                "volumeto": 357804.66,
                "close": 59222.76,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497320,
                "high": 59300.8,
                "low": 59222.69,
                "open": 59222.76,
                "volumefrom": 6.572,
                "volumeto": 389491.52,
                "close": 59288.61,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497380,
                "high": 59289.24,
                "low": 59221.26,
                "open": 59288.61,
                "volumefrom": 24.51,
                "volumeto": 1452090.01,
                "close": 59264.61,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497440,
                "high": 59273.57,
                "low": 59237.52,
                "open": 59264.61,
                "volumefrom": 5.314,
                "volumeto": 314967.78,
                "close": 59237.52,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497500,
                "high": 59249.49,
                "low": 59235.76,
                "open": 59237.52,
                "volumefrom": 1.842,
                "volumeto": 109694.4,
                "close": 59246.81,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497560,
                "high": 59266.9,
                "low": 59244.44,
                "open": 59246.81,
                "volumefrom": 3.218,
                "volumeto": 190879.72,
                "close": 59253.6,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497620,
                "high": 59253.6,
                "low": 59230.55,
                "open": 59253.6,
                "volumefrom": 4.127,
                "volumeto": 244598.23,
                "close": 59244.21,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497680,
                "high": 59246.76,
                "low": 59227.56,
                "open": 59244.21,
                "volumefrom": 2.157,
                "volumeto": 127897.58,
                "close": 59245.05,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497740,
                "high": 59246.81,
                "low": 59225.57,
                "open": 59245.05,
                "volumefrom": 4.884,
                "volumeto": 289191.73,
                "close": 59238.58,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497800,
                "high": 59271.5,
                "low": 59233.31,
                "open": 59238.58,
                "volumefrom": 4.068,
                "volumeto": 241232.59,
                "close": 59269.21,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497860,
                "high": 59311.87,
                "low": 59269.21,
                "open": 59269.21,
                "volumefrom": 5.37,
                "volumeto": 320029.53,
                "close": 59303.43,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497920,
                "high": 59312.03,
                "low": 59267.84,
                "open": 59303.43,
                "volumefrom": 38.91,
                "volumeto": 2306912.95,
                "close": 59290.51,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637497980,
                "high": 59290.51,
                "low": 59226.46,
                "open": 59290.51,
                "volumefrom": 3.684,
                "volumeto": 218405.98,
                "close": 59233.92,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637498040,
                "high": 59234.17,
                "low": 59146.45,
                "open": 59233.92,
                "volumefrom": 7.083,
                "volumeto": 419318.95,
                "close": 59161.87,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637498100,
                "high": 59164.82,
                "low": 59151.12,
                "open": 59161.87,
                "volumefrom": 2.273,
                "volumeto": 134376.27,
                "close": 59157.34,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637498160,
                "high": 59157.34,
                "low": 59075.75,
                "open": 59157.34,
                "volumefrom": 12.87,
                "volumeto": 760278.12,
                "close": 59075.75,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637498220,
                "high": 59108.49,
                "low": 59075.75,
                "open": 59075.75,
                "volumefrom": 5.542,
                "volumeto": 327352.13,
                "close": 59080.09,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637498280,
                "high": 59081.53,
                "low": 59080.09,
                "open": 59080.09,
                "volumefrom": 0,
                "volumeto": 0,
                "close": 59081.53,
                "conversionType": "direct",
                "conversionSymbol": ""
            }
        ]
        }
        }
        """.data(using: .utf8)!

        static let day = """
        {
        "Response": "Success",
        "Message": "",
        "HasWarning": false,
        "Type": 100,
        "RateLimit": {},
        "Data": {
        "Aggregated": false,
        "TimeFrom": 1637409600,
        "TimeTo": 1637496000,
        "Data": [
            {
                "time": 1637409600,
                "high": 58884.29,
                "low": 58545.16,
                "open": 58698.94,
                "volumefrom": 381.79,
                "volumeto": 22417658.46,
                "close": 58633.2,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637413200,
                "high": 58747.93,
                "low": 58457.32,
                "open": 58633.2,
                "volumefrom": 383.65,
                "volumeto": 22483445.86,
                "close": 58535.55,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637416800,
                "high": 58754.43,
                "low": 58401.67,
                "open": 58535.55,
                "volumefrom": 460.32,
                "volumeto": 26949362.26,
                "close": 58433.9,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637420400,
                "high": 58478.42,
                "low": 57588.52,
                "open": 58433.9,
                "volumefrom": 1731.52,
                "volumeto": 100318038.82,
                "close": 57692.5,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637424000,
                "high": 57985.04,
                "low": 57450.63,
                "open": 57692.5,
                "volumefrom": 1091.07,
                "volumeto": 62969784.48,
                "close": 57861.39,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637427600,
                "high": 57996.7,
                "low": 57692.3,
                "open": 57861.39,
                "volumefrom": 554.84,
                "volumeto": 32074514.93,
                "close": 57986.11,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637431200,
                "high": 59689.41,
                "low": 57912.83,
                "open": 57986.11,
                "volumefrom": 2286.04,
                "volumeto": 135217580.8,
                "close": 59496.66,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637434800,
                "high": 59571.72,
                "low": 59299.67,
                "open": 59496.66,
                "volumefrom": 687.57,
                "volumeto": 40861183.43,
                "close": 59501.37,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637438400,
                "high": 59593.01,
                "low": 59387.44,
                "open": 59501.37,
                "volumefrom": 589.09,
                "volumeto": 35038792.47,
                "close": 59486.26,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637442000,
                "high": 59702.67,
                "low": 59420.23,
                "open": 59486.26,
                "volumefrom": 565.58,
                "volumeto": 33705797.9,
                "close": 59666.33,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637445600,
                "high": 59780.4,
                "low": 59593.75,
                "open": 59666.33,
                "volumefrom": 679.03,
                "volumeto": 40536332.34,
                "close": 59764.96,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637449200,
                "high": 59901.9,
                "low": 59582.92,
                "open": 59764.96,
                "volumefrom": 656.56,
                "volumeto": 39234469.76,
                "close": 59769.66,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637452800,
                "high": 59824.18,
                "low": 59384.49,
                "open": 59769.66,
                "volumefrom": 658.39,
                "volumeto": 39245272.61,
                "close": 59421.57,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637456400,
                "high": 59499.26,
                "low": 59325.33,
                "open": 59421.57,
                "volumefrom": 352.02,
                "volumeto": 20914619.92,
                "close": 59396.15,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637460000,
                "high": 59411.37,
                "low": 58798.01,
                "open": 59396.15,
                "volumefrom": 801.84,
                "volumeto": 47376896.74,
                "close": 59135.06,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637463600,
                "high": 59248.36,
                "low": 58635.46,
                "open": 59135.06,
                "volumefrom": 618.24,
                "volumeto": 36425968.5,
                "close": 58743.71,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637467200,
                "high": 59008.12,
                "low": 58663.14,
                "open": 58743.71,
                "volumefrom": 522.15,
                "volumeto": 30722917.24,
                "close": 58675.55,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637470800,
                "high": 59077.09,
                "low": 58641.73,
                "open": 58675.55,
                "volumefrom": 451.66,
                "volumeto": 26592672.65,
                "close": 59077.09,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637474400,
                "high": 59278.93,
                "low": 58934.03,
                "open": 59077.09,
                "volumefrom": 361.33,
                "volumeto": 21350787.98,
                "close": 59261.64,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637478000,
                "high": 59271.79,
                "low": 59052.21,
                "open": 59261.64,
                "volumefrom": 272.61,
                "volumeto": 16127431.59,
                "close": 59058.73,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637481600,
                "high": 59158.87,
                "low": 58740.29,
                "open": 59058.73,
                "volumefrom": 461.01,
                "volumeto": 27172302.49,
                "close": 58806.57,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637485200,
                "high": 59013.87,
                "low": 58773.95,
                "open": 58806.57,
                "volumefrom": 309.7,
                "volumeto": 18249211.99,
                "close": 58968.68,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637488800,
                "high": 59035.63,
                "low": 58575.6,
                "open": 58968.68,
                "volumefrom": 426.68,
                "volumeto": 25087797.02,
                "close": 58883.81,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637492400,
                "high": 59392.88,
                "low": 58652.57,
                "open": 58883.81,
                "volumefrom": 673.07,
                "volumeto": 39725406.8,
                "close": 58774.03,
                "conversionType": "direct",
                "conversionSymbol": ""
            },
            {
                "time": 1637496000,
                "high": 59353.5,
                "low": 58749.7,
                "open": 58774.03,
                "volumefrom": 395.61,
                "volumeto": 23397159.33,
                "close": 59062.31,
                "conversionType": "direct",
                "conversionSymbol": ""
            }
        ]
        }
        }
        """.data(using: .utf8)!

        static let week = """
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

}
