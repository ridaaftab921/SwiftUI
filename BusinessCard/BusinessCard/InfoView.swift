//
//  InfoView.swift
//  BusinessCard
//
//  Created by Rida Aftab on 19/10/2023.
//

import SwiftUI

struct InfoView: View {
    var text: String
    var imageName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 50)
                .foregroundColor(.white)
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.teal)
                Text(text)
            }
        }
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hellp", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
