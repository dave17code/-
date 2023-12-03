## 스파르타 코딩클럽 내일배움캠프 🍎 iOS 트랙

### 계산기 과제 (➕➖✖️➗)

#### 💡 배운점
1. 스위프트에서 문자열 ("123")을 숫자로 변환 하는 Int(), Double() 메서드는 옵셔널 값을 반환한다.
```swift
Int("123") // 출력 값: Optional(123)

Double("123") // 출력 값: Optional(123.0)  
```
2. 텍스트 필드 감지 메서드 Editing Did Begin
```swift
애플 공식 문서 함수 정의 :
// 작동 방식 : 사용자가 텍스트 필드를 터치하는 순간 한번만 실행
optional func textFieldDidBeginEditing(_ textField: UITextField)
```

```swift
// 내가 사용한 방식 : 
override func viewDidLoad() {
    super.viewDidLoad()
        
    calculatorInput.text = "0" // 뷰가 최초로 띄워질 때 계산기 텍스트 필드는 0으로 표시 
}

// 사용자가 계산기 텍스트 필드를 터치할 시 0이 사라지고 빈칸으로 변경
@IBAction func calculatorInputDidBegin(_ sender: Any) {
    calculatorInput.text = ""
}
```
3. resignFirstResponder() 메서드
