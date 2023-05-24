---
title: Python Tutorials
date: 2021-10-30 01:10:11
tags: python matlab
coauthor: 
    - Group D;
    - Chen Yu
---

# loop statement

{% mermaid flowchart LR %}
A([Start]) --> B{Condiction};
B -->|Yes| C[/Statements/];
C --Loop--> B;
B --->|No| D([End]);
{% endmermaid %}

## While

```python
while 判断条件(condition):
	実行コマンド(statements)
```

whileの中にいる判断条件を満足すれば、次のコマンドを繰り返す実行する．
判断条件が外れた場合は直接このLoopを退出する．
簡単なwhile実例:  

```python
a = 1
while a < 10:
    print(a)
    a += 2
```

![](https://www.runoob.com/wp-content/uploads/2014/05/006faQNTgw1f5wnm06h3ug30ci08cake.gif)

**レベルアップ**
![](https://www.runoob.com/wp-content/uploads/2013/11/loop-over-python-list-animation.gif)

## For

## Loop nesting