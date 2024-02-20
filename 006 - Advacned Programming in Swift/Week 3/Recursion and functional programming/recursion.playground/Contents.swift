import Cocoa

let originalPrices = [699, 799, 999, 1099, 799, 899, 899, 999, 1099, 1199]
func convertPricesToINR(originalPrices: [Int], conversionClosure: (_ price: Int) -> Int) -> [Int]{
    var convertedPrices = [Int]()
    for originalPrice in originalPrices {
        let convertedPrice = conversionClosure(originalPrice)
        convertedPrices.append(convertedPrice)
    }
    return convertedPrices
}

let iphonePriceInIndia = convertPricesToINR(originalPrices: originalPrices, conversionClosure: {
    $0 * 83
})

print(iphonePriceInIndia)
