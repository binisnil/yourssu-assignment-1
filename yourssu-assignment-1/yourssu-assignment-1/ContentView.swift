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

    var body: some View {
        VStack(spacing: 20){
            InputView()
            
            Text("버튼을 눌러주세요!")
                .font(.system(size: 15))
            
            ButtonView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 47)
        .padding(.top, 157)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
