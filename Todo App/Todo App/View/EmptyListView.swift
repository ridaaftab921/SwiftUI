//
//  EmptyListView.swift
//  Todo App
//
//  Created by Rida Aftab on 15/11/2023.
//

import SwiftUI

struct EmptyListView: View {
    //MARK: Properties
    
    @State private var isAnimated = false
    
    let images: [String] = [
      "illustration-no1",
      "illustration-no2",
      "illustration-no3"
    ]
    
    let tips: [String] = [
      "Use your time wisely.",
      "Slow and steady wins the race.",
      "Keep it short and sweet.",
      "Put hard tasks first.",
      "Reward yourself after work.",
      "Collect tasks ahead of time.",
      "Each night schedule for tomorrow."
    ]
    
    //MARK: body
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 20.0) {
                Image(images.randomElement() ?? images[0])
                    .resizable()
                    .scaledToFit()
                Text(tips.randomElement() ?? tips[0])
            }//: VStack
            .padding(.horizontal)
            .opacity(isAnimated ? 1 : 0)
            .offset(y: isAnimated ? 0 : -50)
            .animation(.easeOut(duration: 1.0), value: isAnimated)
            .onAppear {
                self.isAnimated.toggle()
            }
        }//: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
