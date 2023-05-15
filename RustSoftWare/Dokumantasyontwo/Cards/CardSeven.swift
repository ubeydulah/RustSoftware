import SwiftUI

struct CardSeven: View {
    @State var selectedAnswers: [Int] = Array(repeating: -1, count: 5) // -1 means no selection yet
    
    let questions = [
        Question(text: "1-Rust, hangi programlama paradigmalarını destekler?", options: [
            Option(text: "a) Prosedürel", isCorrect: false),
            Option(text: "b) Nesne yönelimli", isCorrect: false),
            Option(text: "c) Fonksiyonel", isCorrect: false),
            Option(text: "d) Tümü", isCorrect: true)
        ]),
        Question(text: "2-Rust dili, hangi işletim sistemlerinde kullanılabilir?", options: [
            Option(text: "a) Linux", isCorrect: false),
            Option(text: "b) macOS", isCorrect: false),
            Option(text: "c) Windows", isCorrect: false),
            Option(text: "d) Tümü", isCorrect: true)
        ]),
        Question(text: "3-Rust dilinde hafıza güvenliği nasıl sağlanır?", options: [
            Option(text: "a) Hafıza yönetimi ile", isCorrect: false),
            Option(text: "b) Bellek ödün vermeden", isCorrect: false),
            Option(text: "c) Referans sayımı ile", isCorrect: true),
            Option(text: "d) Hafıza kopyalamayla", isCorrect: false)
        ]),
        Question(text: "4-Rust dilinde hatalar nasıl ele alınır?", options: [
            Option(text: "a) Hata ayıklama ile", isCorrect: false),
            Option(text: "b) Hata yakalama ile", isCorrect: true),
            Option(text: "c) Hata ıskartalı ile", isCorrect: false),
            Option(text: "d) Hata yutma ile", isCorrect: false)
        ]),
        Question(text: "5-Rust dilinde kullanılan derleyicinin adı nedir?", options: [
            Option(text: "a) gcc", isCorrect: false),
            Option(text: "b) g++", isCorrect: false),
            Option(text: "c) clang", isCorrect: false),
            Option(text: "d) rustc", isCorrect: true)
        ])
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(Array(questions.enumerated()), id: \.offset) { (index, question) in
                    VStack {
                        Text(question.text)
                            .font(.title2)
                            .padding()
                        
                        ForEach(Array(question.options.enumerated()), id: \.offset) { (optionIndex, option) in
                            Button(action: {
                                selectedAnswers[index] = optionIndex
                            }) {
                                Text(option.text)
                                    .foregroundColor(getOptionColor(for: optionIndex, in: index))
                            }
                            .padding()
                            .background(getButtonBackground(for: optionIndex, in: index))
                            .cornerRadius(5)
                        }
                    }
                }
            }
        }
    }
    
    func getOptionColor(for optionIndex: Int, in questionIndex: Int) -> Color {
        if selectedAnswers[questionIndex] == optionIndex {
            if question(at: questionIndex).options[optionIndex].isCorrect {
                return .green
            } else {
                return .red
            }
        } else {
            return .primary
        }
    }
    
    func getButtonBackground(for optionIndex: Int, in questionIndex: Int) -> Color {
        if selectedAnswers[questionIndex] ==
            optionIndex {
            if selectedAnswers[questionIndex] == optionIndex && question(at: questionIndex).options[optionIndex].isCorrect {
            return .green.opacity(0.8)
            } else if selectedAnswers[questionIndex] == optionIndex && !question(at: questionIndex).options[optionIndex].isCorrect {
            return .red.opacity(0.8)
            } else {
            return .gray.opacity(0.3)
            }
            } else {
            return .gray.opacity(0.3)
            }
            }

    func question(at index: Int) -> Question {
        return questions[index]
    }
}

struct Question {
var text: String
var options: [Option]
}

struct Option {
var text: String
var isCorrect: Bool
}
