//
//  StoreContainerView.swift
//  ChefDelivery
//
//  Created by Diego Rodrigues on 24/10/23.
//

import SwiftUI

struct StoreContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                  StoreItemView(order: mock)
                }
            }
        }
        .padding(20)
    }
}

struct StoreContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoreContainerView()
            .previewLayout(.sizeThatFits)
    }
}
