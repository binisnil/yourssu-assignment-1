//
//  ButtonView.swift
//  yourssu-assignment-1
//
//  Created by 박윤빈 on 2023/09/30.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 10) {
            Button {
                print("덧셈 버튼 눌림!")
            } label: {
                Text("더하기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
            }
            .frame(height: 39)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
            
            Button {
                print("뺄셈 버튼 눌림!")
            } label: {
                Text("빼기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
            }
            .frame(height: 39)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
            
            Button {
                print("곱셈 버튼 눌림!")
            } label: {
                Text("곱하기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
            }
            .frame(height: 39)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
            
            Button {
                print("나눗셈 버튼 눌림!")
            } label: {
                Text("나누기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
            }
            .frame(height: 39)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(uiColor: .systemTeal))
            .cornerRadius(30)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}



