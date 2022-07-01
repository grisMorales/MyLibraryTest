import SwiftUI

public struct MyLibrary2 {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    func primaryButton(){
        if #available(macOS 10.15, *) {
            Button(action: {
                print("Suscríbete a SwiftBeta")
            }, label: {
                Text("Suscríbete")
            })
        } else {
            // Fallback on earlier versions
        }
    }
    
}
