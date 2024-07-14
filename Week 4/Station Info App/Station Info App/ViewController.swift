//
//  ViewController.swift
//  Station Info App
//
//  Created by Tzu ning Lo on 2024/7/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAdressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startLoad()
    }
    
    func startLoad() {
        if let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") {
            
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    print("Invalid response!")
                    return
                }
                
                guard let data = data else {
                    print("No data!")
                    return
                }
                
                guard let info = try? JSONDecoder().decode(InfoData.self, from: data) else {
                    print("Can't parse data!")
                    return
                }
                self.updateInfo(info: info)
            }
            task.resume()
        }
    }
    
    func updateInfo(info: InfoData) {
        DispatchQueue.main.async {
            self.stationIDLabel.text = info.stationID
            self.stationNameLabel.text = info.stationName
            self.stationAdressLabel.text = info.stationAddress
        }
    }
    
}

