//
//  ProductDetailsView.swift
//  E-CommerceApp
//
//  Created by Şehriban Yıldırım on 26.06.2024.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                
                VStack(alignment:.leading){
                    ZStack(alignment:.topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing,20)
                    }
                    VStack(alignment:.leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            Spacer()
                            Text("$ \(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        HStack{
                            HStack(spacing:10){
                                ForEach(0..<5){index in
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.yellow)
                                }
                                Text("(4.5)")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical)
                            
                            Spacer()
                            
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "minus.square")
                                })
                                Text("1")
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "plus.square")
                                        .foregroundColor(Color("kPrimary"))
                                })
                            }
                        }
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text(product.description)
                        Spacer()
                        
                        HStack(alignment:.top){
                            VStack(alignment:.leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                Text("Height: \(product.height)")
                                    .foregroundColor(.gray)
                                Text("Width: \(product.width)")
                                    .foregroundColor(.gray)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing){
                                Text("Colors")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                HStack{
                                    ColorDotView(color: .blue)
                                    ColorDotView(color: .black)
                                    ColorDotView(color: .gray)
                                }
                            }
                            .frame(maxWidth: .infinity,alignment: .trailing)
                        }
                        .padding(.vertical)
                        
                        PaymentButton(action: {})
                            .frame(width: .infinity, height: 35)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .offset(y: -30)
                }
            }
        }
    }
}

#Preview {
    ProductDetailsView(product: productList[2])
}

struct ColorDotView: View{
    let color: Color
    
    var body: some View{
        color
            .frame(width: 25,height: 25)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}
