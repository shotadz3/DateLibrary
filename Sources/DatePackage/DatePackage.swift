// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public final class DateFormatterPackage {
    
    public init() {}
    
    public func getDate(startingDate: String) -> String {
        let formater = ISO8601DateFormatter()
        guard let date = formater.date(from: startingDate) else { return "" }
        let strformatter = DateFormatter()
        strformatter.dateFormat = "E, d MMM y"
        let finalDt = strformatter.string(from: date)
        return finalDt
    }
}

