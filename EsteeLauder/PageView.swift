//
//  PageView.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/11/23.
//

import SwiftUI

struct PageView: View {
    
    var page: Page
    
    var body: some View {
        
        VStack(spacing: -70) {
            Image(page.imageUrl)
                .resizable()
                .frame(width: UIScreen.main.bounds.height/1.5, height: UIScreen.main.bounds.height/1.5)
                .aspectRatio(contentMode: .fit)
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.black.opacity(0)]), startPoint: .center, endPoint: .bottom)
                )
                .overlay(TextOverlay(), alignment: .top)
            
            VStack(spacing: 30) {
                Text(page.name)
                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 26))
                    .foregroundColor(Color("Black"))
                              
                Text(page.description)
                    .foregroundColor(Color("Red"))
                    .font(.custom("AkzidenzGroteskBQ-Reg", size: 20))
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding()
            
        }
        
        .ignoresSafeArea()
        .background(Color("BG"))
    }
}

struct TextOverlay: View {
    var body: some View {
        ZStack {
            Text("ESTEE LAUDER")
                .font(.custom("Optima-Regular", size: 20))
                .padding(.top, 75)
            
        }
        .foregroundColor(Color("Black"))
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}






