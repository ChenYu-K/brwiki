---
title: サーバー計算の流れ
date: 2021-12-14 01:10:11
tags: abaqus
---

# 直列実行スクリプト

## 流す方
橋梁研究基本四つ流れ方があります．

|License|Momo|消費CPU|
|---|---|---|
|[run50](/file/aba/Abaqus自動直列実行_V10_run50.vbs)|データチェックや軽い計算の方| 1CPU|
|[run75](/file/aba/Abaqus自動直列実行_V10_run75.vbs)|最も使われている．シェルやソリッド等々 | 4CPU|
|[run111](/file/aba/Abaqus自動直列実行_V10_run111.vbs)|基本ソリッド、あるいは全橋モデルなど | 8CPU|
|[runGPU](/file/aba/Abaqus自動直列実行_V10_rungpu.vbs)|非線形問題が厳しいモデル（ソリッド、座屈、など）| 8CPU+1GPU|

> Download: **右クリック，名前を付けてリンク先を保存**

保存先: `common\便利グッズ\02.解析\直列実行スクリプト`  

{% note warning %}

- 基本同じBrabqで`RunGPU`一個しか実行できません．

{% endnote %}

## ルール

|License|Number|Total|
|---|---|---|
76| 3| 228|
50| 1| 50|
50| 1| 50|
120| 2| 240|
111| 0| 0|
Total|7|568|

# どこで流す？
## 各BRBQの構成

|Name|CPU|Memory|
|---|---|---|
|Brabq7| E5-1620v3@3.50GHz| 128G|
|Braqb8| E5-2609v3@1.90GHz| 256G|
|Brabq9| E5-2620v4@2.10GHz| 256G|
|Brabq10| Silver 4110 CPU @2.10GHz | 128G|

# How to terminated the job?

## Method 1

Brabqをリモートし、`win + R`を実行し、`cmd`を開く．　　
コマンドで`abaqus terminate job=jobname.inp`を入力する．

> 少し時間かかる

## Method 2

- Runtime確認
- PID確認
- タスクマネージャーで終了

> 少しややこしいけど，一瞬で終了できる．

## Method 3

遠隔スクリプトを実行する．

> リモートせず，Jobを終了できるが，終了まで時間かかる．

# how to use script run abaver-2018
