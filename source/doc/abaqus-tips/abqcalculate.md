---
title: サーバー計算の流れ
date: 2021-12-14 01:10:11
tags: abaqus
---

# 直列実行スクリプト

## 流れ方

> 橋梁研現在究基本二つ流れ方があります．

<!-- |[run50](/file/aba/Abaqus自動直列実行_V10_run50.vbs)|データチェックや軽い計算の方| 1CPU| 50| -->

|Script|Momo|消費CPU|License|
|---|---|---|---|
|[run76](/file/aba/Abaqus自動直列実行_V10_run75.vbs)|最も使われている．シェルやソリッド等々 | 4CPU| 76|
|[run120](/file/aba/Abaqus自動直列実行_V10_rungpu.vbs)|非線形問題が厳しいモデル（接触、座屈、など）| 8CPU+1GPU| 120|

> Download: 名前をクリックしてダウンロード出来ます

保存先: `common\便利グッズ\02.解析\直列実行スクリプト`  

{% note warning %}

- 基本同じBrabqで`Run120`一個しか実行できません．

{% endnote %}

## ルール

|License|Number|Total|
|---|---|---|
76| 3| 228|
50| 1| 50|
120| 3| 240|
Total|7|638|
> 注意事項：期間 2022.8～2022.10，2022.12～2023.2

# どこで流す？
## 各BRBQの構成

|Name|CPU|GPU|Memory|
|---|---|---|---|
|Brabq7| E5-1620v3@3.50GHz| N/A |128G|
|Braqb8| E5-2609v3@1.90GHz x2| NVIDIA RTX A2000 12GB| 256G|
|Brabq9| E5-2620v4@2.10GHz x2| NVIDIA RTX A4000 16GB| 256G|
|Brabq10| Silver-4110@2.10GHz x2| NVIDIA RTX A4000 16GB| 128G|

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
