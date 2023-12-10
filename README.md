## 스파르타 코딩클럽 내일배움캠프 🍎 iOS 트랙

### 계산기 과제 (➕➖✖️➗)
<img src="https://github.com/dave17code/TeamSpaCalculator/assets/151927621/557fe1d2-ee89-4736-b57a-eecb92c9610e.jpeg" width="200" height="350"/>

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
```swift
애플 공식 문서 함수 정의 :
func resignFirstResponder() -> Bool
Notifies this object that it has been asked to relinquish its status as first responder in its window.
// resignFirstResponder() method는 window에서 first responder 상태를 포기하라고 알림

// 내가 사용한 방식 :
@IBAction func InitializeButton(_ sender: Any) {
    calculatorInput.text = "0"
    calculatorInput.resignFirstResponder() // 계산기 초기화 버튼에서 resignFirstResponder() 호출
    currentValue = 0
    inputValue = 0
    sum = 0
    operatorClicked = false
}

// 초기화 버튼에서 resignFirstResponder()를 사용한 이유

// 텍스트 필드를 탭하면 텍스트 필드를 first responder로 지정함

// 텍스트필드가 first responder가 되면 UIKit은 텍스트필드의 input View를 화면에 표시

// 따라서 first responder의 자격을 포기해버린다면 input View도 화면에서 사라짐

// 초기화 버튼을 누르면 계산기 입력 창은 0으로 초기화 되고 키보드 입력 커서도 해제

// 다시 계산기 입력 창을 탭하면 텍스트 필드 감지 메서드 Editing Did Begin이 실행되고 빈칸으로 변경
```
