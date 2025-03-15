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
      HStack {
        Spacer()
        VStack(spacing: 15) {
          Image(uiImage: tribe.cardImage)
            .resizable()
            .padding(.top, 25)
          HStack {
            VStack(spacing: -4) {
              Text(tribe.rawValue)
                .font(.pretendard(size: 22, weight: .medium))
                .foregroundStyle(.white)
              Text(tribe.engName)
                .font(.pretendard(size: 14, weight: .regular))
                .foregroundStyle(Color.ColorSystem.beige)
            }
            .frame(maxWidth: .infinity) // 텍스트를 중앙 정렬
          }
          .overlay(content: {
            HStack {
              Spacer()
              Image(uiImage: tribe.symbol)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44) // 적절한 크기 설정
            }
          })
          .padding(.bottom, 10)
        }
        Spacer()
      }
      .padding(.horizontal, 25)
    }
    .frame(width: 230, height: 280)
    .background(.blue)
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
