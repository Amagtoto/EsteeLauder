//
//  intro.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/11/23.
//

import SwiftUI

struct intro: View {
    @State private var isActive = false
    @State private var size = 0.75
    @State private var opacity = 0.6
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Text("ESTEE LAUDER")
                        .font(.custom("Optima-Regular", size: 50))
                        .foregroundColor(Color.white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .background(RadialGradient(gradient: Gradient(colors: [Color("Light Red"), Color("Light Pink")]), center: .center, startRadius: 2, endRadius: 650))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }

    }
}

struct intro_Previews: PreviewProvider {
    static var previews: some View {
        intro()
    }
}

