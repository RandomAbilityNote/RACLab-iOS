import DesignSystem
import SwiftUI

struct SearchView: View {
  @State var text: String = ""
  @State var tribes: [Tribe] = [.zerg, .terran, .protoss]

  var body: some View {
    VStack(spacing: .zero) {
      TextField("", text: $text)
        .textFieldStyle(SearchTextFieldStyle(placeholder: "검색", text: $text))
      TribeCardDeck()
    }
    .padding(.horizontal, 20)
  }

  @ViewBuilder
  func TribeCard(tribe: Tribe) -> some View {
    GeometryReader { geometry in
      let size = geometry.size
      VStack {
        Image(uiImage: tribe.cardImage)
          .resizable()
          .scaledToFit()
          .frame(width: 150, height: 180)
        HStack {
          VStack {
            Text(tribe.rawValue)
              .font(.pretendard(size: 22, weight: .medium))
              .foregroundStyle(.white)
            Text(tribe.engName)
              .font(.pretendard(size: 14, weight: .regular))
              .foregroundStyle(Color.ColorSystem.beige)
          }
          Image(uiImage: .ImageSystem.TabBar.activatedCategory)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
        }
      }

    }
    .frame(width: 230, height: 280)
  }

  @ViewBuilder
  func TribeCardDeck() -> some View {
    ScrollView(.horizontal) {
      HStack {
        ForEach(tribes) { tribe in
          TribeCard(tribe: tribe)
        }
      }
    }
    .scrollIndicators(.hidden)
    .frame(maxWidth: .infinity)
  }

}

#Preview {
    SearchView()
}
