import DesignSystem
import SwiftUI

struct SearchTextFieldStyle: TextFieldStyle {
  var placeholder: String
  @Binding var text: String
  @FocusState private var isFocused: Bool
  @State private var __isFocused: Bool = false

  func _body(configuration: TextField<Self._Label>) -> some View {
    HStack {
      HStack {
          Image(systemName: "magnifyingglass")
              .font(.system(size: 17, weight: .semibold, design: .rounded))
              .foregroundStyle(Color(UIColor.tertiaryLabel))
              .padding(.leading)

          configuration
          .font(.pretendard(size: 13, weight: .light))
              .textInputAutocapitalization(.never)
              .multilineTextAlignment(.center)
              .lineLimit(1)
              .tint(.black)
              .focused($isFocused)
              .submitLabel(.search)

          Button(action: {
              text = ""
          }, label: {
              Image(systemName: "multiply.circle.fill")
                  .font(.system(size: 17, weight: .semibold, design: .rounded))
                  .padding(.trailing)
          })
          .tint(Color(UIColor.tertiaryLabel))
          .transition(.opacity)
          .opacity(!text.isEmpty ? 1 : 0)
      }
      .frame(height: 56)
      .overlay(
          ZStack {
              Text(placeholder)
                  .foregroundStyle(Color(UIColor.tertiaryLabel))
                  .font(.system(size: 17, weight: .semibold, design: .rounded))
                  .opacity(text.isEmpty ? 1 : 0)
                  .allowsHitTesting(false)
          }
      )
    }
    .onTapGesture {
      isFocused = true
    }
    .onChange(of: isFocused) { _, newValue in
      __isFocused = newValue
    }
  }
}

private struct SearchTextFieldStylePreview: View {
  @State private var text: String = ""

  var body: some View {
    TextField("", text: $text)
      .textFieldStyle(SearchTextFieldStyle(
        placeholder: "검색", text: $text))
  }
}

#Preview {
  SearchTextFieldStylePreview()
}
