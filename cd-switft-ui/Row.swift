//
//  Row.swift
//  cd-switft-ui
//
//  Created by Patryk Mikolajczyk on 05/06/2019.
//  Copyright © 2019 canaldigital. All rights reserved.
//

import Foundation
import SwiftUI

struct Row: View {
    
    @State var model: ListModel<String>
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(model.title)
            ScrollView {
                HStack {
                    ForEach(model.data.identified(by: \.self)) { item in
                        Cell(data: item)
                    }
                }
                }
                .frame(height: 170)
            }
    }
}

#if DEBUG
struct Row_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            Row(model: ListModel<String>.mock)
            }
            .previewLayout(.sizeThatFits)
    }
}
#endif
