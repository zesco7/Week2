//
//  FunctionViewController.swift
//  Week2
//
//  Created by Mac Pro 15 on 2022/08/28.
//

import UIKit

enum MusicType: Int {
    case all
    case korea
    case other
}

class FunctionViewController: UIViewController {

    @IBOutlet weak var emotionFirstLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emotionFirstLabel.text = setUserNickName()
        view.backgroundColor = example().0
        emotionFirstLabel.text = example().2
    }
    
    //함수기능 세분화: 닉네임랜덤설정 기능 + 값을 화면에 보여주는 기능을 나눈다.(함수에는 닉네임랜덤설정기능만 두고 viewDidLoad에서 emotionFirstLabel.text에 setUserNickName()의 리턴값을 대입하여 화면에 표시한다.)
    func setUserNickName() -> String {
        
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!
        //emotionFirstLabel.text = "저는 \(select)입니다."
        return "저는 \(select)입니다."
    }
    
    func example() -> (UIColor, String, String) {
        let color: [UIColor] = [.red, .green, .blue]
        let image: [String] = ["image1", "image2", "image3"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }
    
    //열거형 사용하여 값 대입
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == MusicType.other.rawValue {
            resultLabel.text = "세번째 세그먼트 선택"
        } else {
            resultLabel.text = "세그먼트를 눌러주세요"
        }
    }
    
    

}
