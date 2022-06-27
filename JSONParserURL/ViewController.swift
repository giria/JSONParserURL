//
//  ViewController.swift
//  JSONParserURL
//
//  Created by jbarrull on 25/06/2022.
//

import UIKit

struct Root: Codable {
    let nobelPrizes :[NobelPrize]
}

struct NobelPrize: Codable {
    let awardYear:String
    let dateAwarded: String
    let prizeAmount: Int
    let laureates : [Laureate]
    let category: Category
}

struct Category: Codable {
    let en: String
}

struct Laureates:Codable {
    let laureates: [Laureate]
    
}

struct Laureate:Codable {
    let id:String
    let fullName: FullName?
    let motivation: Motivation
}

struct Motivation: Codable {
    let en: String
}

struct FullName :Codable {
    let en:String
}





class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let urlString = "https://api.nobelprize.org/2.1/nobelPrizes?offset=1&limit=10&sort=asc&nobelPrizeYear=2020&format=json&csvLang=en"
        
        self.loadJson(fromURLString: urlString) { (result) in
                    
            
           
            
            switch result {
                    case .success(let data):
                        
                
                        self.parse(jsonData: data)
                    case .failure(let error):
                        print(error)
                    }
                }
    }


    private func loadJson(fromURLString urlString: String,
                          completion: @escaping (Result<Data, Error>) -> Void) {
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error))
                }
                
                if let data = data {
                    let jsonString = String(data: data, encoding: .utf8)
                    completion(.success(data))
                }
            }
            
            urlSession.resume()
        }
    }

    private func parse(jsonData: Data) {
        do {
            
            
            let decodedData: Root = try JSONDecoder().decode(Root.self,
                                                       from: jsonData)
            
            print("YEAR 2020 novel \n")
            for item in decodedData.nobelPrizes {
                print("Category: \(item.category.en)")
                print("Prize amount: \(item.prizeAmount)")
                print ("Date awarded: \(item.dateAwarded)")
                for laureate in item.laureates {
                    print("Laureate:  \(laureate.fullName?.en)")
                    print("Motivation: \(laureate.motivation.en)")
                }
                
                print("====")
            }
            
            print("Year: ", decodedData.nobelPrizes[0].awardYear)
            print("Description: ", decodedData.nobelPrizes[0].laureates[0].fullName)
            
            print("===================================")
        } catch {
            print(error)
            print("decode error")
        }
    }
 
    
    
    
}

