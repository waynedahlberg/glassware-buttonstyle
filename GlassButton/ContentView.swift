//
//  ContentView.swift
//  GlassButton
//
//  Created by Wayne Dahlberg on 9/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        NoiseBackgroundView()
        HeaderView()
      }
    }
}

#Preview {
    ContentView()
}
