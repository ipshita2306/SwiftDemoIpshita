//
//  SocialsButton.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 06/07/22.
//

import SwiftUI

struct SocialsButton: View {
    @State var image_name = "signin_google"
    var body: some View {
        HStack (spacing: 15){
            Button{
                
            }label:{
                Image(image_name).resizable().scaledToFit()
            }
        }
    }
}

struct SocialsButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialsButton().previewLayout(.sizeThatFits)
    }
}
