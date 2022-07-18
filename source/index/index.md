---
title: Index
date: 2021-10-20 18:20:04
tags:
---

{% note warning %}
<i class="fas fa-cog fa-spin"></i> Brdgメールのセキュリティ問題が解決不可能なので(大学の方針と違う)，現在brdgメールサーバーを廃棄する方向でうごいています-2022.6.10-chen。
{% endnote %}

# 便利帳Index
橋梁研データベースの利用便利帳

> 橋梁研住所：〒558-8585, C309, 3-3-138 Sugimoto Sumiyoshi-ku, OSAKA, Japan
電話番号：06-6605-2765

<i class="fas fa-home" style="color: #339af0;"></i> [橋梁研HP](http://brdg.civil.eng.osaka-cu.ac.jp/index.html)  
<i class="fas fa-dove" style="color: #057bce;"></i>[desknet's NEO](https://bridge-ocu.dn-cloud.com/cgi-bin/dneo/dneo.cgi?cmd=schindex#cmd=schmonth&date=20211104&id=7)  

<!-- <button type="button">Click Me!</button> -->
- <i class="far fa-folder-open"></i> [ファイル共有システム](http://brdg.civil.eng.osaka-cu.ac.jp/filePublisher/login.php)
- <i class="far fa-folder-open"></i> [**新**ファイル共有システムOMU](https://webdav.ecs.osaka-cu.ac.jp/proself/) ☞ 使い方は[こちら](https://info.ecs.osaka-cu.ac.jp/?page_id=4903)
- <i class="fas fa-school"></i> [教室予約システム](https://www.r326.com/b/main.aspx?g=rMSqVK3523reGnQ80)  (Password:`toshi`)
- <i class="fas fa-cog"></i> [アムスラー予約システム](https://www.r326.com/b/main.aspx?g=8YB015ird1oUonNH1)
- <i class="fas fa-plug"></i> [OMU障害/メンテナンス情報](https://e.omu.ac.jp/announce/)
- <i class="fas fa-server"></i> [TS5410d285管理画面](http://10.108.51.9/login.html)
- <i class="fas fa-server"></i> [NAS_SY21管理画面](http://10.108.51.13:5000/)
- <i class="fas fa-hammer"></i> [日鉄ボルテンカタログ](http://www.bolten.co.jp/products/product)
- <i class="fas fa-university"></i> [ocu全学ポータルサイト](https://www.portal.osaka-cu.ac.jp/ja/)
- <i class="fas fa-university"></i> [OMU　エントランス　ページ](https://e.omu.ac.jp/)


# データベース

データベース：
 [nas_sy21](http://10.108.51.13:7000/) のサイトバージョン  
- 古い学生フォルダ：`\\ts5410d285\usbdisk1`  
- Scandata: `\\nas_sy21\scandata`  
- 2014-2018年度卒―解析データ： `\\BRABQ8\h`  
- 2019年度以降―解析データ：`\\BRABQ7\f`  

# 解析  

![](/images/caelisence.png)  

![](/images/lisence.png)

{% note warning %}
Issues-#7: [CAE&Tokenを使う人いない時スクリプトが止まる](https://github.com/ChenYu-K/Data-Processing/issues/7), 気づいたら再起動します．
{% endnote%}

## 解析流すルール

|License|Number|Total|
|---|---|---|
76| 3| 228|
50| 2| 50|
120| 2| 240|
Total|7|568|

{% note info %}
- ライセンス120は，BRABQ9，BRABQ10で流す．  
- 1つのBRAEQで流していい解析は2つまで．  
- 1つのBRABQで流していいライセンス120は1つまで．  
- データチェック用にライセンス50は残しておく
{% endnote %}


☞[解析に関するTIPS](/2021/10/30/abaqus-tips/)  
☞[高力ボルト摩擦接合継手モデリングガイドライン](https://cdn.jsdelivr.net/gh/ChenYu-K/brwiki@master/source/doc/BMR_V1.pdf)  
☞[Abaqus_Documentation](https://help.3ds.com/2020/English/DSSIMULIA_Established/SIMULIA_Established_FrontmatterMap/sim-r-DSDocAbaqus.htm?ContextScope=all)  

Abaqus license check:
```txt
abaqus licensing dslsstat -usage
```

# 実験

|内容|土木側万能試験機|建築側万能試験機|
|----|--|--------|
|載荷能力|1000kN|2000kN|
|荷重・変位の出力電圧|10V|5V|


## チャック（建築側万能試験機）

|種類|挟める板厚|挟める板幅(チャックと接触する板幅)|
|----|--|--------|
|大学所有のチャック|0 ~ 35mm|150mm(115mm)|
|天雲産業のチャック(借り物)|35 ~ 75mm|150mm(115mm)|


# 学会日程

|Conference name|State|Key dates|
|----|--|--------|
|現在プログラム進行中|||
|[EASEC-17-Singapore2022](https://easec-17.org/)|開催|27-30 June 2022   (NEXT Is 2024)|
|[IABMAS-Spain2022](https://congress.cimne.com/iabmas2022/frontal/dates.asp)|開催|11-15 July 2022|
|[SHMII-11-Montreal 2022](https://sites.events.concordia.ca/sites/shmii/en/shmii-11-montreal-2022/)|開催| 8-12 August, 2022|
|[日独-OCU]()|?| 開催時間: 30 August, 2022 |
|[土木学会全国大会](https://zenkokutaikai.jsce.or.jp/2022/)|開催|9/15-16, 2022　京都大学|
|[IABSE-Nanjing2022](https://iabse.org/Events/Nanjing-2022/Technical-Programme)|大会登録中| Final Invitation and Registration Open: June 10, 2022|
|会議受付中|||
|[IABSE-New Delhi2023](https://iabse.org/Events/New-Delhi-2023/Technical-Programme)|Abs受付中|Receipt of Abstracts: **14 October 2022**|
|[IABSE-Istanbul2023](https://iabse.org/Events/Istanbul-2023/Technical-Programme)|Abs受付中|Abstract Submission Deadline **31 August 2022**|
|[IALCCE-Milano-2023](https://ialcce2023.org/)|Abs受付中|Abstract Submission: **August 26th, 2022 ({% label danger@EXTENDED %})**|
|[EUROSTRUCT2023-Vienna](https://eurostruct.org/eurostruct-2023/)|Abs受付中|Abstract submission: **19 August, 2022**|
|開催予定の会議|||
|[IABMAS-Denmark2024](http://www.f.waseda.jp/akiyama617/rIABMAS/conference.html)|予定|Abstract投稿: May ,2023|
|PCSS|3年一度|Pacific Structural Steel Conference|
|ICSCS|3年一度|International Conference on Steel and Compsosite Structures|
|ISSS-2024|2年一度|International Symposium on Steel Structures |

# その他

SourceCode: \\nas_sy21\web\wiki  

## ヤマト集荷

[オンライン集荷](https://shuka.kuronekoyamato.co.jp/shuka_req/TopAction_doInit.action?portal=top&ref=portal_A1c%3D)
電話集荷：　

![](/pic/yamato.png)

## bridge

[有名な橋](https://upload.wikimedia.org/wikipedia/commons/3/37/Comparison_of_notable_bridges_SMIL.svg)のまとめ[^1]

![](https://upload.wikimedia.org/wikipedia/commons/3/37/Comparison_of_notable_bridges_SMIL.svg)



[^1]: Main Page. (2022, April 26). Wikimedia Commons, the free media repository. Retrieved 07:56, May 20, 2022 from [https://commons.wikimedia.org](https://commons.wikimedia.org/w/index.php?title=Main_Page&oldid=651894909).
