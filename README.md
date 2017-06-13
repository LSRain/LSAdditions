# LSAdditions
Additions with Common controls(一些常用控件的分类)

## 当前支持控件分类
* "UIColor+LSAddition"
* "UILabel+LSAddition"
* "UIButton+LSAddition"
* "NSAttributedString+LSAddition"
* "NSObject+LSAdditon"
* "UIScreen+LSAddition"
* "UIViewController+LSAddition"
* "UIView+LSAddition"

## 使用方法
* 添加头文件`LSAddition.h `即可使用

### `cocopod`导入
> pod 'LSAdditions'

### 示例
```objective-C
	/// Set color
	self.view.backgroundColor = [UIColor ls_colorWithHex:0xff0000];
	/// create a button
	[UIButton ls_textButton:@"buttonName" fontSize:14 normalColor:[UIColor ls_colorWithHex:0xff0000] selectedColor:nil];
```

## 版本日志
* 2017年06月13日 `~>0.0.1`

## 协议
* **MIT**
