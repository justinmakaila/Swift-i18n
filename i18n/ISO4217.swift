import Foundation

//public func currencyForCountry(country: ISO3166.Country) -> [ISO4217.Currency] {
//    return [.AED]
//}
//
//extension ISO3166.Country {
//    var currency: [ISO4217.Currency] {
//        return currencyForCountry(self)
//    }
//}

public struct ISO4217 {
    public enum Currency: Int16 {
        case AED = 784
        case AFN = 971
        case ALL = 008
        case AMD = 051
        case ANG = 532
        case AOA = 973
        case ARS = 032
        case AUD = 036
        case AWG = 533
        case AZN = 944
        case BAM = 977
        case BBD = 052
        case BDT = 050
        case BGN = 975
        case BHD = 048
        case BIF = 108
        case BMD = 060
        case BND = 096
        case BOB = 068
        case BOV = 984
        case BRL = 986
        case BSD = 044
        case BTN = 064
        case BWP = 072
        case BYR = 974
        case BZD = 084
        case CAD = 124
        case CDF = 976
        case CHE = 947
        case CHF = 756
        case CHW = 948
        case CLF = 990
        case CLP = 152
        case CNY = 156
        case COP = 170
        case COU = 970
        case CRC = 188
        case CUC = 931
        case CUP = 192
        case CVE = 132
        case CZK = 203
        case DJF = 262
        case DKK = 208
        case DOP = 214
        case DZD = 012
        case EGP = 818
        case ERN = 232
        case ETB = 230
        case EUR = 978
        case FJD = 242
        case FKP = 238
        case GBP = 826
        case GEL = 981
        case GHS = 936
        case GIP = 292
        case GMD = 270
        case GNF = 324
        case GTQ = 320
        case GYD = 328
        case HKD = 344
        case HNL = 340
        case HRK = 191
        case HTG = 332
        case HUF = 348
        case IDR = 360
        case ILS = 376
        case INR = 356
        case IQD = 368
        case IRR = 364
        case ISK = 352
        case JMD = 388
        case JOD = 400
        case JPY = 392
        case KES = 404
        case KGS = 417
        case KHR = 116
        case KMF = 174
        case KPW = 408
        case KRW = 410
        case KWD = 414
        case KYD = 136
        case KZT = 398
        case LAK = 418
        case LBP = 422
        case LKR = 144
        case LRD = 430
        case LSL = 426
        case LYD = 434
        case MAD = 504
        case MDL = 498
        case MGA = 969
        case MKD = 807
        case MMK = 104
        case MNT = 496
        case MOP = 446
        case MRO = 478
        case MUR = 480
        case MVR = 462
        case MWK = 454
        case MXN = 484
        case MXV = 979
        case MYR = 458
        case MZN = 943
        case NAD = 516
        case NGN = 566
        case NIO = 558
        case NOK = 578
        case NPR = 524
        case NZD = 554
        case OMR = 512
        case PAB = 590
        case PEN = 604
        case PGK = 598
        case PHP = 608
        case PKR = 586
        case PLN = 985
        case PYG = 600
        case QAR = 634
        case RON = 946
        case RSD = 941
        case RUB = 643
        case RWF = 646
        case SAR = 682
        case SBD = 090
        case SCR = 690
        case SDG = 938
        case SEK = 752
        case SGD = 702
        case SHP = 654
        case SLL = 694
        case SOS = 706
        case SRD = 968
        case SSP = 728
        case STD = 678
        case SYP = 760
        case SZL = 748
        case THB = 764
        case TJS = 972
        case TMT = 934
        case TND = 788
        case TOP = 776
        case TRY = 949
        case TTD = 780
        case TWD = 901
        case TZS = 834
        case UAH = 980
        case UGX = 800
        case USD = 840
        case USN = 997
        case USS = 998
        case UYI = 940
        case UYU = 858
        case UZS = 860
        case VEF = 937
        case VND = 704
        case VUV = 548
        case WST = 882
        case XAF = 950
        case XAG = 961
        case XAU = 959
        case XBA = 955
        case XBB = 956
        case XBC = 957
        case XBD = 958
        case XCD = 951
        case XDR = 960
        case XFU = -1
        case XOF = 952
        case XPD = 964
        case XPF = 953
        case XPT = 962
        case XSU = 994
        case XTS = 963
        case XUA = 965
        case XXX = 999
        case YER = 886
        case ZAR = 710
        case ZMW = 967
    }
}


extension ISO4217.Currency {
    /// Indicates the number of digits after the decimal point
    var minorUnit: Int8? {
        switch self {
        case .BIF, .BYR, .CLP, .CVE, .DJF, .GNF, .ISK, .JPY, .KMF,
             .KRW, .RWF, .UGX, .UYI, .VND, .VUV, .XAF, .XOF, .XPF:
            return 0
        case .MRO, .MGA:
            return 1
        case .AED, .AFN, .ALL, .AMD, .ANG, .AOA, .ARS, .AUD, .AWG,
             .AZN, .BAM, .BBD, .BDT, .BGN, .BMD, .BND, .BOB, .BOV, .BRL,
             .BSD, .BTN, .BWP, .BZD, .CAD, .CDF, .CHE, .CHF, .CHW, .CNY,
             .COP, .COU, .CRC, .CUC, .CUP, .CZK, .DKK, .DOP, .DZD, .EGP,
             .ERN, .ETB, .EUR, .FJD, .FKP, .GBP, .GEL, .GHS, .GIP, .GMD,
             .GTQ, .GYD, .HKD, .HNL, .HRK, .HTG, .HUF, .IDR, .ILS, .INR,
             .IRR, .JMD, .KES, .KGS, .KHR, .KPW, .KYD, .KZT, .LAK, .LBP,
             .LKR, .LRD, .LSL, .MAD, .MDL, .MKD, .MMK, .MNT, .MOP, .MUR,
             .MVR, .MWK, .MXN, .MXV, .MYR, .MZN, .NAD, .NGN, .NIO, .NOK,
             .NPR, .NZD, .PAB, .PEN, .PGK, .PHP, .PKR, .PLN, .PYG, .QAR,
             .RON, .RSD, .RUB, .SAR, .SBD, .SCR, .SDG, .SEK, .SGD, .SHP,
             .SLL, .SOS, .SRD, .SSP, .STD, .SYP, .SZL, .THB, .TJS, .TMT,
             .TOP, .TRY, .TTD, .TWD, .TZS, .UAH, .USD, .USN, .USS, .UYU,
             .UZS, .VEF, .WST, .XCD, .YER, .ZAR, .ZMW:
            return 2
        case .BHD, .IQD, .JOD, .KWD, .LYD, .OMR, .TND:
            return 3
        case .CLF:
            return 4
        default:
            return nil
            
        }
    }
    
    /// The 3-digit code to represent a currency
    var code: String {
        switch self {
        case .AED: return "AED"
        case .AFN: return "AFN"
        case .ALL: return "ALL"
        case .AMD: return "AMD"
        case .ANG: return "ANG"
        case .AOA: return "AOA"
        case .ARS: return "ARS"
        case .AUD: return "AUD"
        case .AWG: return "AWG"
        case .AZN: return "AZN"
        case .BAM: return "BAM"
        case .BBD: return "BBD"
        case .BDT: return "BDT"
        case .BGN: return "BGN"
        case .BHD: return "BHD"
        case .BIF: return "BIF"
        case .BMD: return "BMD"
        case .BND: return "BND"
        case .BOB: return "BOB"
        case .BOV: return "BOV"
        case .BRL: return "BRL"
        case .BSD: return "BSD"
        case .BTN: return "BTN"
        case .BWP: return "BWP"
        case .BYR: return "BYR"
        case .BZD: return "BZD"
        case .CAD: return "CZD"
        case .CDF: return "CDF"
        case .CHE: return "CHE"
        case .CHF: return "CHF"
        case .CHW: return "CHW"
        case .CLF: return "CLF"
        case .CLP: return "CLP"
        case .CNY: return "CNY"
        case .COP: return "COP"
        case .COU: return "COU"
        case .CRC: return "CRC"
        case .CUC: return "CUC"
        case .CUP: return "CUP"
        case .CVE: return "CVE"
        case .CZK: return "CZK"
        case .DJF: return "DJF"
        case .DKK: return "DKK"
        case .DOP: return "DOP"
        case .DZD: return "DZD"
        case .EGP: return "EGP"
        case .ERN: return "ERN"
        case .ETB: return "ETB"
        case .EUR: return "EUR"
        case .FJD: return "FJD"
        case .FKP: return "FKP"
        case .GBP: return "GBP"
        case .GEL: return "GEL"
        case .GHS: return "GHS"
        case .GIP: return "GIP"
        case .GMD: return "GMD"
        case .GNF: return "GNF"
        case .GTQ: return "GTQ"
        case .GYD: return "GYD"
        case .HKD: return "HKD"
        case .HNL: return "HNL"
        case .HRK: return "HRK"
        case .HTG: return "HTG"
        case .HUF: return "HUF"
        case .IDR: return "IDR"
        case .ILS: return "ILS"
        case .INR: return "INR"
        case .IQD: return "IQD"
        case .IRR: return "IRR"
        case .ISK: return "ISK"
        case .JMD: return "JMD"
        case .JOD: return "JOD"
        case .JPY: return "JPY"
        case .KES: return "KES"
        case .KGS: return "KGS"
        case .KHR: return "KHR"
        case .KMF: return "KMF"
        case .KPW: return "KPW"
        case .KRW: return "KRW"
        case .KWD: return "KWD"
        case .KYD: return "KYD"
        case .KZT: return "KZT"
        case .LAK: return "LAK"
        case .LBP: return "LBP"
        case .LKR: return "LKR"
        case .LRD: return "LRD"
        case .LSL: return "LSL"
        case .LYD: return "LYD"
        case .MAD: return "MAD"
        case .MDL: return "MDL"
        case .MGA: return "MGA"
        case .MKD: return "MKD"
        case .MMK: return "MMK"
        case .MNT: return "MNT"
        case .MOP: return "MOP"
        case .MRO: return "MRO"
        case .MUR: return "MUR"
        case .MVR: return "MVR"
        case .MWK: return "MWK"
        case .MXN: return "MXN"
        case .MXV: return "MXV"
        case .MYR: return "MYR"
        case .MZN: return "MZN"
        case .NAD: return "NAD"
        case .NGN: return "NGN"
        case .NIO: return "NIO"
        case .NOK: return "NOK"
        case .NPR: return "NPR"
        case .NZD: return "NZD"
        case .OMR: return "OMR"
        case .PAB: return "PAB"
        case .PEN: return "PEN"
        case .PGK: return "PGK"
        case .PHP: return "PHP"
        case .PKR: return "PKR"
        case .PLN: return "PLN"
        case .PYG: return "PYG"
        case .QAR: return "QAR"
        case .RON: return "RON"
        case .RSD: return "RSD"
        case .RUB: return "RUB"
        case .RWF: return "RWF"
        case .SAR: return "SAR"
        case .SBD: return "SBD"
        case .SCR: return "SCR"
        case .SDG: return "SDG"
        case .SEK: return "SEK"
        case .SGD: return "SGD"
        case .SHP: return "SHP"
        case .SLL: return "SLL"
        case .SOS: return "SOS"
        case .SRD: return "SRD"
        case .SSP: return "SSP"
        case .STD: return "STD"
        case .SYP: return "SYP"
        case .SZL: return "SZL"
        case .THB: return "THB"
        case .TJS: return "TJS"
        case .TMT: return "TMT"
        case .TND: return "TND"
        case .TOP: return "TOP"
        case .TRY: return "TRY"
        case .TTD: return "TTD"
        case .TWD: return "TWD"
        case .TZS: return "TZS"
        case .UAH: return "UAH"
        case .UGX: return "UGX"
        case .USD: return "USD"
        case .USN: return "USN"
        case .USS: return "USS"
        case .UYI: return "UYI"
        case .UYU: return "UYU"
        case .UZS: return "UZS"
        case .VEF: return "VEF"
        case .VND: return "VND"
        case .VUV: return "VUV"
        case .WST: return "WST"
        case .XAF: return "XAF"
        case .XAG: return "XAG"
        case .XAU: return "XAU"
        case .XBA: return "XBA"
        case .XBB: return "XBB"
        case .XBC: return "XBC"
        case .XBD: return "XBD"
        case .XCD: return "XCD"
        case .XDR: return "XDR"
        case .XFU: return "XFU"
        case .XOF: return "XOF"
        case .XPD: return "XPD"
        case .XPF: return "XPF"
        case .XPT: return "XPT"
        case .XSU: return "XSU"
        case .XTS: return "XTS"
        case .XUA: return "XUA"
        case .XXX: return "XXX"
        case .YER: return "YER"
        case .ZAR: return "ZAR"
        case .ZMW: return "ZMW"
        }
    }
}
