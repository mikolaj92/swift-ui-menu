//
//  ContentView.swift
//  cd-switft-ui
//
//  Created by Patryk Mikolajczyk on 05/06/2019.
//  Copyright © 2019 canaldigital. All rights reserved.
//

import SwiftUI

struct Page : View {
    @State var model: ListModel<ListModel<String>>
    var body: some View {
        NavigationView {
            List(model.data.identified(by: \.self)) { item in
                Row(model: item)
                }
                .navigationBarTitle(
                    Text(model.title)
            )
        }
    }
}

#if DEBUG
struct Page_Previews : PreviewProvider {
    static var previews: some View {
        Group {
        Page(model: ListModel.mock)
        }.previewLayout(.sizeThatFits)
    }
}
#endif



