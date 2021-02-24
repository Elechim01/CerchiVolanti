//
//  ContentView.swift
//  CerchiVolanti
//
//  Created by Michele Manniello on 24/02/21.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    @State var cliccked : Bool = true
    var scene : SKScene{
        let scene = GameScene()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
            .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            Text("\(cliccked ? "Premi per iniziare":"" )")
                .foregroundColor(.white)
        }.onTapGesture {
            cliccked = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
