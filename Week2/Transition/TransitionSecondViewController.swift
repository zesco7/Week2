//
//  TransitionSecondViewController.swift
//  Week2
//
//  Created by Mac Pro 15 on 2022/08/30.
//

import UIKit

class TransitionSecondViewController: UIViewController {
    /*텍스트뷰에 데이터를 저장하는 방법
     1. 앱 켜면 데이터를 가지고 와서 텍스트뷰에 보여준다.
     2. 바뀐 데이터를 텍스트뷰에 저장한다.
     ->UserDefault
     
     */
    
    @IBOutlet weak var secondMottoTextView: UITextView!
    @IBOutlet weak var secondSaveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        //가져오기
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            secondMottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            secondMottoTextView.text = "비어있음"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondViewController", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondViewController", #function)
    }

    @IBAction func secondSaveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(secondMottoTextView.text, forKey: "nickname")
        print("저장되었습니다")
    }
    
}
