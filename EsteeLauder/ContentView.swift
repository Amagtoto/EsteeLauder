//
//  ContentView.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pageIndex = 0
    let pages: [Page] = Page.samplePages
    
    private let dotAppreance = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    PageView(page: page)
                    if page == pages.last {
                        Button("Learn more!", action: goHome)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color("Red").cornerRadius(10))
                            .foregroundColor(.white)
                        .font(.custom("AkzidenzGroteskBQ-Regular", size: 16))
                        .offset(y: -60)
                        
                    }
                    else {
                        Button("Next", action: incrementPage)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color("Red").cornerRadius(10))
                            .foregroundColor(.white)
                            .font(.custom("AkzidenzGroteskBQ-Regular", size: 16))
                            .offset(y: -60)
                    }
                }
                .tag(page.tag)
            }
        }
        .background(Color("BG"))
        .ignoresSafeArea(.all)
        .animation(.easeInOut(duration: 0.4), value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotAppreance.currentPageIndicatorTintColor = .black
            dotAppreance.pageIndicatorTintColor = .gray
        }
        
        
    }
    func incrementPage() {
        pageIndex += 1
    }
    
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: Main())
            window.makeKeyAndVisible()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
