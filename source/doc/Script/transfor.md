---
title: 一括行列変換 V1.0
date: 2021-11-24 18:23:25
tags: matlab
coauthor: Group_D
---

{% gp 2-0 %}
[<img style="margin: auto;" src="https://img.shields.io/github/v/release/ChenYu-K/brcode?logo=Github">](https://github.com/ChenYu-K/brcode)
![](https://img.shields.io/badge/Matlab_APP-Passing-green)
{% endgp %}

{% note success%}
2021/12/2　一括行列変換 V1.0　リリース　→　**[Download](https://github.com/ChenYu-K/brcode/releases/download/Transformation_matrix/Transformation_matrix.mlappinstall)** <i class="fas fa-file-download"></i>
{% endnote %}

# はじめに
---

自動膜厚計測のため

　膜厚計測データは１列で出力されます．しかし，データ整理を行う際，計測回数に応じて4行や5列にそろえる必要があります．そこで，これらの行列変換を自動化するために作られたのが本アプリです．

# 操作手順
---

## Install Matlab APP  
---

DownLoadした`Transformation_matrix.mlappinstall`を開くと，インストールできる．

<img src="https://i.imgur.com/hyqqVM8.png" width=30% />

## APPを開く
Matlabのアプリから`Transformation_matrix`を探して，お気に入り登録して開く。

<img src=https://i.imgur.com/rngQOlq.png width=80% />

## 生データを入ったフォルダのPathをCOPYし，`Path`の欄に入れる .

<img src=https://i.imgur.com/NiNMUsI.png width=50% />  
<img src=https://i.imgur.com/ZKrllVf.png width=50% />

## 行か列の一方に✓を入れ，その値を入力する．

選択した行列を基準に，データを並べ替える.  
`実行`ボタンを押して，実行す

## 指定のフォルダーにcsvデータが出力される．

<img src=https://i.imgur.com/KIFM53I.png width=80%>


# 注意点
---


{% note warning %}

・出力されたcsvデータは消しましょう

・行と列の両方に✓を入れた場合，行に従います

・行列変換しただけなので，その後は，コピーして自分のExcelファイルに張り付ける必要があります．

{% endnote %}