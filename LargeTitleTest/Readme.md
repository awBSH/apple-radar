# Large Title of ViewController behaves different in iOS12 and iOS13
#### Radar
[rdar://48813943](http://openradar.appspot.com/radar?id=4969593701400576)

#### Expected behaviour
The large Title of the ViewController behaves the same in iOS12 and iOS13

#### Actual behaviour
The large Title of the ViewController behaves different in iOS12 and iOS13  
iOS12.4 (left) - iOS13 (right)  
![LargeTitleTest](https://github.com/awBSH/apple-radar/raw/master/LargeTitleTest/LargeTitleTest.gif)  
[download Video](https://github.com/awBSH/apple-radar/raw/master/LargeTitleTest/LargeTitleTest.mov)  

## FORTH
First (large-title) -> Second (larget-title)
Expected: large-title moves to back-item, new large-title slides in
iOS12: large-title moves to back-item, new large-title slides in
iOS13: large-title moves to back-item, new large-title slides in

Second (large-title) -> Third (small-title)
Expected: large-title moves to back-item, new small-title slides in
iOS12: large-title moves to back-item, new small-title slides in
iOS13: large-title stays and hides (!), new small-title slides in

Third (small-title) -> Fourth (larget-title)
Expected: small-title moves to back-item, new large-title slides in
iOS12: small-title moves to back-item, new large-title slides in
iOS13: small-title moves to back-item, new large-title slides in


## BACK
Fourth (large-title) -> Third (small-title)
Expected: back-item moves to small-title, large-title slides out
iOS12: back-item moves to small-title, large-title slides out
iOS13: back-item moves to small-title, large-title stays and hides (!)

Third (small-title) -> Second (large-title)
Expected: back-item moves to large-title, small-title slides out
iOS12: back-item moves to small-title, hides and appears as large-title (!), small-title slides out
iOS13: back-item moves to large-title, small-title slides out

Second (large-title) -> First (large-title)
Expected: back-item moves to large-title, large-title slides out
iOS12: back-item moves to large-title, large-title slides out
iOS13: back-item moves to large-title, large-title slides out