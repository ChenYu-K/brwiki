---
title: ABAQUSにおける溶接残留応力の表現
date: 2022-10-19 18:47
tags: abaqus
coauthor:
    - Group B;
    - Misato Konishi
---

# ABAQUSにおける溶接残留応力の表現

# 溶接残留応力とは
母材と母材を溶接した溶接部が冷却する際に，温度変化によって収縮することで発生する応力のこと．

<img src='./pic/zanryuouryoku/1.png' width='70%'/>

# ABAQUSにおける表現方法
<img src='./pic/zanryuouryoku/2.png' width='70%'/>

## 材料特性

### 材料挙動
弾性，金属塑性etc...

＋

伝導率→熱的，鉄は80(W/m・k)

熱膨張→機械的，鉄は12.1(10^-6/m・k)

<img src='./pic/zanryuouryoku/3.png' width='100%'/>



### ステップタイプ
Coupled temp-displacementを選択

温度の場と応力/変位の場の関係を同時に解析できる

<img src='./pic/zanryuouryoku/4.png' width='100%'/>


### 境界条件

<img src='./pic/zanryuouryoku/5.png' width='100%'/>


### 要素タイプ
温度₋変位連成を選択

<img src='./pic/zanryuouryoku/6.png' width='100%'/>


## 結果

<img src='./pic/zanryuouryoku/7.png' width='100%'/>