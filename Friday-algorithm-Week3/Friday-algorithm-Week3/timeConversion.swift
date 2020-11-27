import Foundation

func timeConversion() -> String {
    let s = "07:05:45PM"
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let date = dateFormatter.date(from: s)

    dateFormatter.dateFormat = "HH:mm:ss"
    if let bindingDate = date {
        return dateFormatter.string(from: bindingDate)
    }
    return ""
}
