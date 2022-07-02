import SwiftUI

public struct MyLibrary2 {
    public private(set) var text = "Hello, World!"

    public init() {
        print("Class has been initialised")
    }
    
    public func doSomething(){
        print("Yeah, it works")
    }
    
    /*func primaryButton(){
            Button(action: {
                print("Suscríbete a SwiftBeta")
            }, label: {
                Text("Suscríbete")
            })
    }*/
    
}
