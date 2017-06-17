# LSAdditions
The Category of Commonly used controls and you can create a control quickly(一些常用控件/对象的分类)

## Support for commonly used controls or objects
> Some UI controls and Foundation objects

* "UIColor+LSAddition"
* "UILabel+LSAddition"
* "UIButton+LSAddition"
* "NSAttributedString+LSAddition"
* "NSObject+LSAdditon"
* "UIScreen+LSAddition"
* "UIViewController+LSAddition"
* "UIView+LSAddition"
* "NSString+LSAddition"
* ...

## Instructions
* Add the header file - `LSAddition.h `

### Use`cocopod`
> pod 'LSAdditions'

### Example
```objective-C
/// Set color
self.view.backgroundColor = [UIColor ls_colorWithHex:0xff0000];
/// create a button
[UIButton ls_textButton:@"buttonName" fontSize:14 normalColor:[UIColor ls_colorWithHex:0xff0000] selectedColor:nil];
. . .
```

## Version record
* June 13, 2017 ~> `0.0.1`
* June 17, 1717 ~> `0.0.2`

## License
### **MIT**
