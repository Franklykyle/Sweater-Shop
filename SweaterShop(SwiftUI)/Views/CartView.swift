//
//  CartView.swift
//  SweaterShop(SwiftUI)
//
//  Created by Kyle Franklin on 4/14/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.paymentSuccess {
                Text("Thanks for your purchase! You'll be stylin' in no time! You'll also be receiving an email conformation shortly.")
                    .padding()
            } else {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) {
                        product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Your cart total is")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                    
                    PaymentButton(action: cartManager.pay)
                        .padding()
                } else {
                    Text("Your cart is empty")

                }
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSuccess {
                cartManager.paymentSuccess = false
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
