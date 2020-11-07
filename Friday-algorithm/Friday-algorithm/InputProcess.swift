//
//  InputProcess.swift
//  Friday-algorithm
//
//  Created by Maylily on 2020/11/07.
//

import Foundation

func run(code: String) {
    switch code {
    case "p1000":
        // 입력 : 첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)
        p1000()
    case "p1008":
        // 입력 : 첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)
        p1008()
    case "p2438":
        // 입력 : 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
        p2438()
    case "p2920":
        // 입력 : 첫째 줄에 8개 숫자가 주어진다. 1부터 8까지 숫자가 한 번씩 등장한다.
        p2920()
    case "p11654":
        // 입력 : 알파벳 소문자, 대문자, 숫자 0-9 중 하나가 첫째 줄에 주어진다.
        p11654()
    default:
        print("꼭 풀어보겠습니다 :)")
    }
}
