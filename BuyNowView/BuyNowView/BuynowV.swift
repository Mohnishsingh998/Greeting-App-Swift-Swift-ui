
import SwiftUI

struct BuynowV: View {
    var price : Double
    var percentageDiscount : Int?
    var discount : Double?{
        if let percentageDiscount {
            return (Double( 100 - percentageDiscount) / 100) * price
        }else{
            return nil
        }
    }
    
    let discountColor : Color
    let bgcolor : Color
    let yoffest : Double
    let discountAngle : Double
    
    init(
        price: Double,
        percentageDiscount: Int? ,
        discountColor: Color = .blue,
        bgcolor: Color = .red,
        yoffest: Double = -20,
        discountAngle: Double = -10
    ) {
        self.price = price
        self.percentageDiscount = percentageDiscount
        self.discountColor = discountColor
        self.bgcolor = bgcolor
        self.yoffest = yoffest
        self.discountAngle = discountAngle
    }
    var body: some View {
        VStack{
            if let percentageDiscount {
                Text("\(percentageDiscount) % OFF")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(discountColor)
                    .clipShape(.rect(cornerRadius: 15))
                    .rotationEffect(Angle(degrees: discountAngle))
                    .offset(y : yoffest)
                    .shadow(radius: 5.0)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            HStack{
                Text("BUY NOW")
                    .font(.title)
                    .bold()
                Spacer()
                
                Text("$\(price, specifier : "%.2f")")
                    .foregroundStyle(.white)
                    .strikethrough(percentageDiscount != nil)
                
                if let discount {
                    Text("\(discount, specifier : "%0.2f")")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
        }
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .fill(bgcolor)
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(.white)
            }
        )
        .padding()
        
        
    }
}

#Preview {
    ZStack {
        Color
            .black
            .opacity(0.7)
            .ignoresSafeArea()
        VStack {
            BuynowV(
                price: 20,
                percentageDiscount: 75
            )
            BuynowV(
                price: 20,
                percentageDiscount: nil
            )
        }
    }
}
