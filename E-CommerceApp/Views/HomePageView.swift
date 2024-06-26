//
//  HomePageView.swift
//  E-CommerceApp
//
//  Created by Şehriban Yıldırım on 25.06.2024.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ZStack(alignment:.top){
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack(alignment:.leading){
                    AppBar()
                    Text("Find The Most \nLuxurios")
                        .font(.largeTitle.bold())
                    
                    + Text("Furniture")
                        .font(.largeTitle.bold())
                        .foregroundColor(Color("kPrimary"))
                    
                }
                .padding()
            }
            .environmentObject(CartManager())
        }
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}


struct AppBar: View{
    @EnvironmentObject var cartManager: CartManager

    
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "location.north.fill")
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding(.trailing)
                
                Text("Shanghai, China")
                    .font(.title2)
                    .foregroundColor(.gray)
                
                Spacer()
                
                NavigationLink(destination: Text("")){
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
    }
}
