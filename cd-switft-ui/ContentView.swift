//
//  ContentView.swift
//  cd-switft-ui
//
//  Created by Patryk Mikolajczyk on 05/06/2019.
//  Copyright © 2019 canaldigital. All rights reserved.
//

import SwiftUI



struct ContentView : View {
    @State var index: Int = 2
    var body: some View {
        TabView(bindable: Binding<Int>.init(getValue: { self.index }, setValue: { self.index = $0 }))
    }
}

struct TabView: View {
    let bindable: Binding<Int>
    var body: some View {
        TabbedView(selection: bindable) {
            ForEach(0 ..< 5) { item in
                Page(model: .init(title: String(item),
                                  data: (1...100).map { _ in  ListModel<String>.mock }))
                    .tabItemLabel(Text(String(item)))
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            }
            .previewLayout(.sizeThatFits)
    }
}
#endif
