# AutoLayout-Practice
AutoLayout 场景练习记录

## case1 : 在 TableViewCell 中使用 AutoLaout 布局,上为:可能多行的 Label 下为:collectionView
![image](https://github.com/Jacob-LJ/AutoLayout-Practice/raw/master/Pics/Snip20161006_4.png)


## case2 : translatesAutoresizingMaskIntoConstraints 的新理解  即 Frame 自动转化为约束
        既想享受 frame 的便捷，又想得到 Auto Layout 的好处，鱼与熊掌能兼得么？
        UIView 的translatesAutoresizingMaskIntoConstraints属性在这里派上用场，该属性为true时，设置 frame 会自动转化为约束，修改 frame 时也会自动调整约束。这时候就不要再手动添加约束了，你再添加约束往往会造成冲突，注意是往往，
        因为此时视图上的约束已经是唯一可解的了，你添加的往往是优先级最高的约束，必然造成冲突，在控制台能看到NSAutoresizingMaskLayoutConstraint这种类型的约束与你添加的约束无法同时满足，这里甚至有温馨的提示, 让你查看translatesAutoresizingMaskIntoConstraints属性的文档，想必苹果也知道大家经常忘记把这个属性关闭。
        或许你可以添加可选约束，不过这样一来就没什么意义了。
        那么可以修改这种自动添加的NSAutoresizingMaskLayoutConstraint约束吗？实际上无法找到这样的约束的，它被系统隐藏了，你只能在发生冲突时才能在控制台看见它们。
        这个属性与原来的 auto resize mask 结合后能产生很好的效果，如下所示：添加了宽度和高度方向的 mask 后，当 containerView 的尺寸发生变化后，subView 也会随之变化，享受了 Auto Layout 的好处，还不用写约束。
![image](https://github.com/Jacob-LJ/AutoLayout-Practice/raw/master/Pics/AutoLayoutTest1.gif)
