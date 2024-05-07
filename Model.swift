import Foundation

public struct Model: Decodable, Identifiable { 
    public let id: String
    let title: String
    let description: String
    let photo: String
    let thumbnail: String 
    
    var tumbnailUrl: URL? {
        return URL(string: thumbnail)
    }
}

extension Model { 
    public static func decode(_ data: Data) -> [Model] {
        let decodedData = 
        try? JSONDecoder().decode([Model].self, from: data)    
        return decodedData ?? [Model]()
    }
}

extension Model { 
    public static let testData: Data = """

[
  {
    "id": "1",
    "title": "The Mississippi Football Book",
    "description": " Edited by award-winning sportswriter Rick Cleveland and best-selling author Neil White, The Mississippi Football Book will be the gift book for Mississippians in 2023 and beyond. The publication includes 100+ profiles of players, coaches, and teams. And more than 500 players and coaches are listed in the records section.",
    "photo": "pix1", 
    "thumbnail":  "https://nautiluspublishing.com/wp-content/uploads/2023/08/THE-MISSISSIPPI-FOOTBALL-BOOK-COVER-final-scaled-1-600x784.jpg"
  },
  {
    "id": "2",
    "title": "College Football Teams",
    "description": "What sport is watched by more than 50 million people each year? College football! This series heads to the gridiron to cover one of America's most popular pastimes. Young readers will get a close-up look at the most famous, historic, and successful college teams of all time--the top players, the amazing victories, the all-time records, and much, much more! Additional features to aid comprehension include informative sidebars and captions, a table of contents, a phonetic glossary, sources for further research, an index, and an introduction to the author.",
    "photo": "pix2", 
    "thumbnail": "https://assets2.titleleaf.com/childsworld/product/cover/xl_9781503856721_fc.jpg"
  },
  {
    "id": "3",
    "title": "Titans of the South",
    "description": "The Tennessee Titans are a proud and storied franchise. Some of the NFL's all-time best players--and all-time great teams--have donned the two-tone blue. Each season is precious to the fans, whether we won two games or twelve, because it reminds us of special memories: trips to the stadium with parents and children, watching on TV with neighbors and friends, shared camaraderie with strangers, and more.",
    "photo": "pix3", 
    "thumbnail": "https://images.booksense.com/images/316/084/9781960084316.jpg"
  },
]
""".data(using: .utf8)!
    
}


