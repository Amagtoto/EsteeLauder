//
//  SwiftUIView.swift
//  EsteeLauder
//
//  Created by Angela Magtoto on 7/11/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        VStack() {
            Text("ESTEE LAUDER")
                .font(.custom("Optima-Regular", size: 20))
                .padding(.top, 75)
                .foregroundColor(Color("Black"))
            
            Text("Nutritious Collection")
                .font(.custom("Optima-Bold", size: 35))
                .foregroundColor(Color("Black"))
            
            Spacer()
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Button {
                            goReview()
                        } label: {
                            Image("cleanser")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                                .padding(5)
                                .background(Color("Border Color"))
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5)
                        }
                        
                        Image("best")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .offset(x: -50, y: 60)
                        
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Text("2-in-1 Foam Cleanser")
                            .font(.custom("Optima-Bold", size: 18))
                            .foregroundColor(Color("Black"))
                        
                        
                        VStack(alignment: .leading, spacing: 30) {
                            Text("Purify. Pores. Glow.")
                                .font(.custom("Optima-Regular", size: 15))
                                .foregroundColor(Color("Black"))
                            
                            
                            ShareLink("Share",
                                      item: Image("cleanser"),
                                      subject: Text("New Estee Lauder Skin Care"),
                                      message: Text("This 2-in-1 Foam Cleanser is amazing! You should go check it out at Estee Lauder https://www.esteelauder.com/product/684/112204/product-catalog/skincare/cleanser-makeup-remover/nutritious/2-in-1-foam-cleanser?size=4.2_oz."),
                                      preview: SharePreview(Text("Cleanser") , image: Image("Cleanser")))
                            .frame(maxWidth: 120, maxHeight: 40)
                            .background(Color("Red").cornerRadius(10))
                            .foregroundColor(.white)
                            .font(.custom("Optima-Regular", size: 20))
                            .labelStyle(.titleOnly)
                            .offset(y: 23)
                            
                            
                        }
                        
                    }
                    
                }
                Spacer()
                
                HStack {
                    ZStack {
                        Button {
                            goReview()
                        } label: {
                            Image("lotion")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                                .padding(5)
                                .background(Color("Border Color"))
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5)
                        }
                        
                        Image("selling")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .offset(x: -50, y: 60)
                        
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Text("Radiant Essence Treatment Lotion")
                            .font(.custom("Optima-Bold", size: 18))
                            .foregroundColor(Color("Black"))
                        
                        
                        VStack(alignment: .leading, spacing: 30) {
                            Text("Prep. Infuse. Glow.")
                                .font(.custom("Optima-Regular", size: 15))
                                .foregroundColor(Color("Black"))
                            
                            
                            ShareLink("Share",
                                      item: Image("cleanser"),
                                      subject: Text("New Estee Lauder Skin Care"),
                                      message: Text("This lotion is amazing! You should go check it out at Estee Lauder"),
                                      preview: SharePreview(Text("lotion") , image: Image("lotion")))
                            .frame(maxWidth: 120, maxHeight: 40)
                            .background(Color("Red").cornerRadius(10))
                            .foregroundColor(.white)
                            .font(.custom("Optima-Regular", size: 20))
                            .labelStyle(.titleOnly)
                            .offset(y: 12)
                        }
                        
                    }
                    
                }
                
                Spacer()
                
                HStack() {
                    ZStack {
                        Button {
                            goReview()
                        } label: {
                            Image("cream")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                                .padding(5)
                                .background(Color("Border Color"))
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: 5)
                        }
                        
                        Image("selling")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .offset(x: -50, y: 60)
                        
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Text("Melting Soft Creme/Mask Moisturizer")
                            .font(.custom("Optima-Bold", size: 18))
                            .foregroundColor(Color("Black"))
                        
                        
                        VStack(alignment: .leading, spacing: 30) {
                            Text("Pores. Hydration. Glow.")
                                .font(.custom("Optima-Regular", size: 15))
                                .foregroundColor(Color("Black"))
                            
                            
                            ShareLink("Share",
                                      item: Image("cream"),
                                      subject: Text("New Estee Lauder Skin Care"),
                                      message: Text("This Creme/Mask Moisturizer is amazing! You should go check it out at Estee Lauder"),
                                      preview: SharePreview(Text("Cream") , image: Image("cream")))
                            .frame(maxWidth: 120, maxHeight: 40)
                            .background(Color("Red").cornerRadius(10))
                            .foregroundColor(.white)
                            .font(.custom("Optima-Regular", size: 20))
                            .labelStyle(.titleOnly)
                            .offset(y: 12)
                        }
                        
                    }
                    
                }
                Spacer()
            }
            .padding()
            Link(destination: URL(string: "https://www.esteelauder.com/products/26393/product-catalog/skin-care/skin-care-collections/nutritious")!, label: {
                Text("Shop now!")
                    .padding()
                    .frame(maxWidth: 300)
                    .background(Color("Red").cornerRadius(10))
                    .foregroundColor(.white)
                    .font(.custom("Optima-Regular", size: 20))
            })
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(Color("Light Pink"))
    }
    func goReview() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView:         ReviewView(review: Review.sampleReview)
            )
            window.makeKeyAndVisible()
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
