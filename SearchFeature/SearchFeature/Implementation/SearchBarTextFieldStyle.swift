import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
  func _body(configuration: TextField<Self._Label>) -> some View {
    configuration
      .padding(10)
      .background(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 2))
      .shadow(radius: 2)
  }
}

