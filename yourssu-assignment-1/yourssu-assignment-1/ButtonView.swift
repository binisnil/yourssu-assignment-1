//
//  ButtonView.swift
//  yourssu-assignment-1
//
//  Created by 박윤빈 on 2023/09/30.
//

import SwiftUI

struct ButtonView: View {
    
    @Binding var firstInput: String
    @Binding var secondInput: String
    @Binding var resultText: String
    
    var body: some View {
        VStack(spacing: 10) {
            Button {
                calcPlus()
            } label: {
                Text("더하기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
                    .frame(height: 39)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
            
            Button {
                calcMinus()
            } label: {
                Text("빼기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
                    .frame(height: 39)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
            
            Button {
                calcMulti()
            } label: {
                Text("곱하기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
                    .frame(height: 39)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
            
            Button {
                calcDivide()
            } label: {
                Text("나누기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
                    .frame(height: 39)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
        }
    }
    
    func calcPlus() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "첫 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "두 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        
        let result = firstInputToInt + secondInputToInt
        resultText = "\(firstInputToInt) + \(secondInputToInt) = \(result)"
    }
    
    func calcMinus() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "첫 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "두 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        
        let result = firstInputToInt - secondInputToInt
        resultText = "\(firstInputToInt) - \(secondInputToInt) = \(result)"
    }
    
    func calcMulti() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "첫 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "두 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        
        let result = firstInputToInt * secondInputToInt
        resultText = "\(firstInputToInt) x \(secondInputToInt) = \(result)"
    }
    
    func calcDivide() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "첫 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        
        if secondInput == "0" {
            resultText = "0으로 나눌 수 없습니다"
            return
        }
        
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "두 번째 입력에 올바른 값을 입력해주세요"
            return
        }
        
        let result: Double = Double(firstInputToInt / secondInputToInt)
        resultText = "\(firstInputToInt) / \(secondInputToInt) = \(result)"
    }
}
