//
//  ViewController.swift
//  itsuDareGame
//
//  Created by 藤井玖光 on 2022/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsArray: [String] = ["一年前","一週間前","昨日","今日","10年前","遠い昔"]
    
    let dokoArray: [String] = ["山の上で","アメリカで","学校で","クラスで","街で","自宅で"]
    
    let dareArray: [String] = ["僕が","大統領が","先生が","友達が","知らない人が","泥棒が"]
    
    let doshitaArray: [String] = ["叫んだ","演説した","怒った","踊った","座った","泣いた"]
    
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change() {
        //それぞれのラベルに配列の要素を追加する
        itsLabel.text = itsArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 5 {
            //indexの値が3の場合は0に戻す
            index = 0
        }else {
            //indexの値を＋1する
            index = index + 1
        }
        
    }
    @IBAction func reset() {
        //それぞれのラベルを元に戻す
        itsLabel.text = "---"
        dokoLabel.text = "---"
        dareLabel.text = "---"
        doshitaLabel.text = "---"
        
        //indexの値を＋1する
        index = index + 1
    }
    @IBAction func random() {
        
        //乱数を生成して、それぞれのindexに入れる
        let itsIndex = Int.random(in: 0...5)
        let dokoIndex = Int.random(in: 0...5)
        let dareIndex = Int.random(in: 0...5)
        let doshitaIndex = Int.random(in: 0...5)
        
        //コンソールに出力してそれぞれの値を確かめてみよう
        print("いつ: \(itsIndex)")
        print("どこで: \(dokoIndex)")
        print("だれが: \(dareIndex)")
        print("どうした: \(doshitaIndex)")
        
        //それぞれのラベルに要素を追加する
        itsLabel.text = itsArray[itsIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    
    }
}

