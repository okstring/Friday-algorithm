import Foundation


func aVerybigSum() {
    let ar = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
    print(ar.reduce(0, { $0 + $1 }))
}

