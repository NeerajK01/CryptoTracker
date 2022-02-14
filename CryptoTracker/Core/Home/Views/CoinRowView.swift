//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by Kumar, Neeraj on 17/01/22.
//

import SwiftUI

struct CoinRowView: View {
    let coin: CoinModel
    let showHoldingColumn: Bool
    
    var body: some View {
        HStack(spacing: 0){
            leftColumn
            Spacer()
            
            if showHoldingColumn {
                centerColumn
            }
            
            rightColumn
        }
        .font(.subheadline)
        .background(
            Color.theme.background.opacity(0.001)
        )
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin, showHoldingColumn: true)
            .previewLayout(.sizeThatFits)
        CoinRowView(coin: dev.coin, showHoldingColumn: true)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}

extension CoinRowView{
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.SecondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack{
            Text(coin.currentHoldingsValue.asCurrencyWith6Decimal())
                .bold()
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing){
            Text("\(coin.currentPrice.asCurrencyWith6Decimal())")
                .bold()
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0  ?
                    Color.theme.green : Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
