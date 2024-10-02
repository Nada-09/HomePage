import SwiftUI

struct ReminderStatView: View {
    
    let icon: String
    let title: String
    var count: Int?
    let iconColor: Color = .white
    
    var body: some View {
        HStack {
            HStack(alignment: .center, spacing:10){
                Image(systemName: icon)
                    .foregroundColor(iconColor)
                    .font(.title)
                Text(title)
                    .opacity(0.8)
            
                Spacer()
                if let count{
                    Text("\(count)")
                        .font(.largeTitle)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.gray)
        .foregroundStyle(.black)
        .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
    }
}
struct ReminderStatView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderStatView(icon: "calendar", title: "Today", count: 9)
    }
}
