---
title: 固有値解析
date: 2022-10-18
tags: abaqus
mathjax: true
coauthor:
    - Group B;
    - Kana Akahohshi
---

# 固有値解析

{% note info %}
解析モデルの固有値・角振動数・固有振動数・刺激係数・有効質量を確認することができる．
{% endnote %}

## 固有値計算原理

通常，静的解析の運動方程式は，

$$ [k]\{x\}=\{F\} 
$$

<img src='./pic/eigenvalue/pic2.png' width='20%'/>

動的解析の運動方程式は，
$$
[M]\{\ddot{x}\}+[C]\{\dot{x}\}+[K]\{x\}=\{F\}
$$
<img src='./pic/eigenvalue/pic1.png' width='50%'/>

と表すことができ，左から，慣性孔，減衰項，剛性項，外力項と呼ぶ．

固有値解析では，外力項と減衰項を０と考え自由振動状態を想定する．

$$
\left([K]-\omega^2[M]\right)\{\phi\}=0
$$

<img src='./pic/eigenvalue/pic3.png' width='50%'/>

{% label @step1: %}

モデル⇒キーワード編集⇒モデルを選択

<img src='./pic/amcreation/pic.png' width='50%'/>

{% label @step2 %}

要素の除去・追加を行いたいステップのキーワード欄（図の赤枠）に打ち込むと完了！

<img src='./pic/amcreation/pic2.png' width='70%'/>

※キーワードの書き方

対象とする部分の集合をあらかじめ作成⇒集合名をキーワードに打ち込む

```yaml keyword
# 削除機能
model_change,remove, type=[~]: 削除したいタイプ（e.g., type=element）
,name: 削除したい集合名（e.g., lateral_bracing）

# 追加機能 
model_change,add, type=[~]: 追加したいタイプ（e.g., type=element）
,name: 追加したい集合名（e.g., lateral_bracing）
```

<img src='./pic/amcreation/pic3.png' width='50%'/>
<img src='./pic/amcreation/pic4.png' width='50%'/>


**要素の除去の説明**

>  一般ステップで，指定した要素をモデルから削除できる．Abaqus/Standardは，削除される直前にそれらの要素が負担していた力/流束を，要素の境界上の接点において保存する．これらの力はステップ修了時にゼロとなるまで，要素削除のステップのなかで線形的に減じられる．したがって，削除される部分がモデルのほかの部分に与える影響は，削除ステップの最終時点で始めて完全に除かれることになる．この逓減方法によって，要素の削除はモデルになめらかな効果を与える．

削除された要素についての計算は，削除ステップの最初の段階から行われなくなる．削除された要素は，以下の方法によって最有効化されるまで，モデルの中から消去される．

**入力ファイルでの使用法**

モデルから要素を削除するには，以下のオプションを使用する．

<font color="Orange">*MODEL CHANGE, TYPE=ELEMENT, REMOVE</font>

</br>
{% note warning %}
**注意事項**

要素を追加する場合は一番最初のステップにおいて追加部材を除去する必要がある
{% endnote %}

</br>

## 方法2（相互作用による方法）

cae上にて要素を選択することができる．ただしステップごとに作業が必要であるため，ステップ数が多い場合には向かない

{% label @step1 %}　

モデルチェンジを行いたいステップにおいて，相互作用を作成⇒モデルチェンジを選択

<img src='./pic/amcreation/pic5.png' width='50%'/>


{% label @step2 %}

1. 領域⇒削除or追加したい部材を選択
2. 要素を削除したい場合⇒このステップで無効を選択
3. 要素を追加したい場合⇒このステップで最有効化を選択

<img src='./pic/amcreation/pic6.png' width='70%'/>


{% note info %}
**相互作用で行うメリット**

- 自分でキーワード編集上に打ち込む必要がない．

- あらかじめ集合を作る必要がなく，ビューポート内で選択することができる．
{% endnote %}

## 使用例

**部材取り替え解析**

<img src='./pic/amcreation/pic10.png' width='70%'/>

> 応力の再分配を考慮できることから，施工ステップ解析（部材取替え解析，ボルト締め）などに使用可能!
