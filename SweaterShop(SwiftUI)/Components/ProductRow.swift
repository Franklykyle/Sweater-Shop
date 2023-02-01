//
//  ProductRow.swift
//  SweaterShop(SwiftUI)
//
//  Created by Kyle Franklin on 4/14/22.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartmanager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.0835))
                .onTapGesture {
                    cartmanager.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
