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
            
            ButtonView(firstInput: $firstInput, secondInput: $secondInput, resultText: $resultText)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
