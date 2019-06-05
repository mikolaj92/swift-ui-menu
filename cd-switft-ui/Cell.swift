//
//  Cell.swift
//  cd-switft-ui
//
//  Created by Patryk Mikolajczyk on 05/06/2019.
//  Copyright © 2019 canaldigital. All rights reserved.
//

import Foundation
import SwiftUI

struct Cell: View {
    @State var data: String
    var body: some View {
            ZStack(alignment: .bottomLeading) {
                Rectangle.init().foregroundColor(Color.red)
                HStack(alignment: .center) {
                    Image(systemName: "star.fill")
                        .aspectRatio(contentMode: ContentMode.fill)
                        .foregroundColor(.yellow)
                        .shadow(radius: 2.0)
                        .imageScale(Image.Scale.large)
                    VStack(alignment: .leading) {
                        Text(data)
                            .fontWeight(.bold)
                        Text(data)
                            .fontWeight(.light)
                            .color(.blue)
                    }
                }
                
                
            }
                .frame(width: 200, height: 150, alignment: .bottomLeading)
    }
}

#if DEBUG
struct Cell_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            Cell(data: "edward")
            }
            .previewLayout(.sizeThatFits)
    }
}
#endif
