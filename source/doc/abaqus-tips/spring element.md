---
title: ばね要素の使い方
date: 2021-12-14 01:10:11
tags: abaqus
---

# ばね要素の使い方

## ばね要素とは
荷重-相対変位，モーメント-回転を関連づける

## はね要素を設定する手順

<img src='./pic/spring element/1.png' width='40%'/>

エンジニアリングフィーチャ　→　ばね/ダッシュポット
#
<img src='./pic/spring element/2.png' width='30%'/>

スペシャル　→　ばね/ダッシュポット　→　作成
#
<img src='./pic/spring element/3.png' width='30%'/>








名前の入力　→　続ける

2つのポイントを接合：ずれ止め（スタッドジベル，穴あき鋼板ジベル），支圧力の定義など

ポイントを接地（standard）：支承，地盤ばねなど
#
<img src='./pic/spring element/4.png' width='50%'/>

ジオメトリを選択，方向，ばね剛性を入力
（あらかじめパーティションを切っておく）
#
<img src='./pic/spring element/5.png' width='50%'/>

#
<img src='./pic/spring element/6.png' width='50%'/>

コピーした後，方向とばね乗数を変えるだけで，同じ節点間にばねが与えられます．

#
## 非線形ばねを与える場合

<img src='./pic/spring element/8.png' width='70%'/>


上図のようにinpファイルを編集する
#
<img src='./pic/spring element/9.png' width='70%'/>

荷重-変位関係

#
> ばね要素とコネクタ要素の比較

<img src='./pic/spring element/7.png' width='70%'/>

