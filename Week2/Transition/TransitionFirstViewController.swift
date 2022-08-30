//
//  TransitionFirstViewController.swift
//  Week2
//
//  Created by Mac Pro 15 on 2022/08/30.
//

import UIKit

enum UserDefaultsKey: String {
    case happyEmotion = "happyEmotion"
}

class TransitionFirstViewController: UIViewController {
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var mottoTextView: UITextView!
    
    @IBOutlet weak var emotionButton: UIButton!
    @IBOutlet weak var emotionClickCount: UILabel!
    
    var emotionCountArray = [0]
    var emotionLabelArray: [UILabel] { [emotionClickCount] }
    /*텍스트뷰에 데이터를 저장하는 방법
     1. 앱 켜면 데이터를 가지고 와서 텍스트뷰에 보여준다.
     2. 바뀐 데이터를 텍스트뷰에 저장한다.
     ->UserDefault
     
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        emotionClickCount.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        //가져오기
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            mottoTextView.text = "비어있음"
        }
        
        print(UserDefaults.standard.string(forKey: "phoneNumber"))
        print(UserDefaults.standard.integer(forKey: "age"))
        print(UserDefaults.standard.bool(forKey: "inapp"))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        
        randomNumberLabel.text = "\(Int.random(in: 1...100))"
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
        
    }
    
    @IBAction func unwindTransitionFirstVC(jackSegue: UIStoryboardSegue) {
    }
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다")
    }
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        
        //기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: UserDefaultsKey.happyEmotion.rawValue)
        
        //감정클릭시 + 1
        let updateValue = currentValue + 1
        
        //새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "happyEmotion")
        
        //레이블에 새로운 내용 보여주기
        //emotionClickCount.text = "\(currentValue)"
        emotionClickCount.text = "\(UserDefaults.standard.integer(forKey: "happyEmotion"))"
        
        //등록된 데이터 삭제
        UserDefaults.standard.removeObject(forKey: "happyEmotion")
        
        //emotionCountArray[sender.tag] += 1
        //emotionClickCount[sender.tag].text = "\(emotionCountArray[sender.tag])"
    }
    
    
    
}
