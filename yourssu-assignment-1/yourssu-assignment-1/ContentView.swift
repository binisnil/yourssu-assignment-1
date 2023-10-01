//
//  ContentView.swift
//  yourssu-assignment-1
//
//  Created by 박윤빈 on 2023/09/27.
//

import SwiftUI

struct ContentView: View {
    @State var firstInput: String = ""
    @State var secondInput: String = ""
    @State var resultText: String = "버튼을 눌러주세요!"

    var body: some View {
        VStack(spacing: 20){
            InputView(firstInput: $firstInput, secondInput: $secondInput)
            
            Text("\(resultText)")
                .font(.system(size: 15))
            
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
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 47)
        .padding(.top, 157)
    }
    
    func calcPlus() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        
        var result = firstInputToInt + secondInputToInt
        resultText = "\(firstInputToInt) + \(secondInputToInt) = \(result)"
    }
    
    func calcMinus() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        
        var result = firstInputToInt - secondInputToInt
        resultText = "\(firstInputToInt) - \(secondInputToInt) = \(result)"
    }

    func calcMulti() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        
        var result = firstInputToInt * secondInputToInt
        resultText = "\(firstInputToInt) x \(secondInputToInt) = \(result)"
    }

    func calcDivide() {
        guard let firstInputToInt = Double(firstInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        
        if secondInput == "0" {
            resultText = "0으로 나눌 수 없습니다"
            return
        }
        
        guard let secondInputToInt = Double(secondInput) else {
            resultText = "올바른 값을 입력해주세요"
            return
        }
        
        var result: Double = Double(firstInputToInt / secondInputToInt)
        resultText = "\(firstInputToInt) / \(secondInputToInt) = \(result)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
