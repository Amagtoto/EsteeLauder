//
//  ReviewView.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/13/23.
//

import SwiftUI

struct ReviewView: View {
    
    var review: Review
    
    var body: some View {
        
        VStack(spacing: 0) {
            Image(review.image)
                .resizable()
                .frame(width: UIScreen.main.bounds.height/2.1, height: UIScreen.main.bounds.height/2.1)
                .aspectRatio(contentMode: .fit)
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.black.opacity(0)]), startPoint: .center, endPoint: .bottom)
                )
                .overlay(TextOverlay(), alignment: .top)
                .overlay(ReviewOverlay(), alignment: .bottomTrailing)

            
            Spacer()
            VStack(spacing: 20) {
                Text(review.title1)
                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 28))
                    .foregroundColor(Color("Black"))
                              
                Text(review.description1)
                    .foregroundColor(Color("Red"))
                    .font(.custom("AkzidenzGroteskBQ-Reg", size: 22))
                    .multilineTextAlignment(.center)
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            
            VStack(spacing: 20) {
                Text(review.title2)
                    .font(.custom("AkzidenzGroteskBQ-Bold", size: 28))
                    .foregroundColor(Color("Black"))
                              
                Text(review.description2)
                    .foregroundColor(Color("Red"))
                    .font(.custom("AkzidenzGroteskBQ-Reg", size: 22))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button("Back", action: goMain)
                    .padding()
                    .frame(maxWidth: 300)
                    .background(Color("Red").cornerRadius(10))
                    .foregroundColor(.white)
                    .font(.custom("Optima-Regular", size: 20))
                    .offset(y: -20)
            }
            .frame(maxWidth: .infinity)
            .padding()
            
        }
        
        .ignoresSafeArea()
        .background(Color("Light Pink"))
    }
    func goMain() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Main())
            window.makeKeyAndVisible()
        }
    }
}


struct ReviewOverlay: View {
    var body: some View {
        ZStack {
            Image("reviews")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .offset(x: -10, y: 20)
                .rotationEffect(.degrees(15))
            
        }
        .foregroundColor(Color("Black"))
    }
}


struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView(review: Review.sampleReview)
    }
}
