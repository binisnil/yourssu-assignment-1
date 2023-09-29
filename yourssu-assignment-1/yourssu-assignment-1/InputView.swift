//
//  InputView.swift
//  yourssu-assignment-1
//
//  Created by 박윤빈 on 2023/09/30.
//

import SwiftUI

struct InputView: View {
    @State var firstInput: String = ""
    @State var secondInput: String = ""
    
    var body: some View {
        VStack(spacing: 10){
            TextField("   첫번째 숫자를 입력해주세요", text: $firstInput)
                .frame(height: 35)
                .background(Color(uiColor: .systemGray6))
                .keyboardType(.decimalPad)
                .cornerRadius(30)
                .shadow(color: Color(UIColor(white: 0,
                                             alpha: 0.15)),
                        radius: 6,
                        x: 0,
                        y: 4)
            
            TextField("   두번째 숫자를 입력해주세요", text: $secondInput)
                .frame(height: 35)
                .background(Color(uiColor: .systemGray6))
                .keyboardType(.decimalPad)
                .cornerRadius(30)
                .shadow(color: Color(UIColor(white: 0,
                                             alpha: 0.15)),
                        radius: 6,
                        x: 0,
                        y: 4)
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
