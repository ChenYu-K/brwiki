---
title: CUDAを用いてABAQUSの計算速度アップ方法
date: 2021-11-20 15:01:24
tags: Abaqus
coauthor: Yu Chen； Yugo Shirai
---

本記事はどうやって [Nvidia CUDA](https://developer.nvidia.com/zh-cn/cuda-toolkit) [^1]を活用し，ABAQUSの計算速度を速めるか紹介します．

<!--more-->
# グラフィックボードのインストール
グラフィックボードを購入する前に，　　
予め，グラフィックボードとマザーボードあるいはCPUの相性を調べることが大事です。

今回購入したのはNvidiaさんが 2021　新しい発売した　RTX A4000[^2]です。　　
グラフィックボードの詳細[^3]は簡単にまとめると以下に示す通りです．

|GPU特性|RTX A000|
|-----|------|
|GPUメモリ| ECC付き DDR6 16GB|
|メモリ帯域幅|448GB/s|
|システムインタフェース|PCI-E X16|
|CUDAコア数|6144|
|単精度浮動計算速度|19.2 TFLOPS|

インストール手順
1. ソケットにちゃんと差し込んで
2. グラフィックボードの電源を接続して（　RTX A4000の場合は 6Pinの電源ソケット）
3. パソコンを起動し，確認する．

# グラフィックボードドライバーのインストール
ドライバーは[Nvida公式サイト](https://www.nvidia.co.jp/Download/index.aspx?lang=jp)でダウンロード出来ます．　　
自分のグラフィックボードに合うドライバーをダウンロードし，インストールします。　　
そして再起動します．
![](https://i.imgur.com/ylSk04C.png)

# CUDAツールをインストール
CUDAツールがないと，CUDAの機能が使えないので
必ずCUDAツールをインストールしなければならない．

[CUDAツールインストールURL](https://developer.nvidia.com/zh-cn/cuda-toolkit)

![](https://i.imgur.com/KgAsN7K.png)

{% note info %} 
CUDAツールのインストール時間が結構長いですが，慌てないでください．これは通常状態です．
{% endnote %}

# PCの環境設定
CUDAを設定する方法を2つ紹介します．

## 直接環境変数を編集する
環境変数の設定は→システム→システムの詳細設定
環境変数の`システム環境変数`に以下の内容を新規追加します:  

|環境変数|内容|
|------|------|
|変数名|`ABA_ACCELERATOR_TYPE`|
|変数値|`PLATFORM_CUDA`|

![](https://i.imgur.com/xEUpwAm.png)

## もう一つ方法は`abaqus_v6.env` を編集する
 `abaqus_v6.env`[^4]の末尾に以下の内容を追加することで，
 ```TEXT
os.environ["ABA_ACCELERATOR_TYPE"]="PLATFORM_CUDA" # Nvidia
 ```
CUDAを用いて加速機能を起動できます．

![](https://i.imgur.com/6Ui3AIK.png)

# グラフィックボードが正しく適用できているのかをチェックする
正しくグラフィックボードが適用出来ていれば，ログの中に以下に示すような適用成功のフィードバックが見えます．
```
USING ACCELERATOR PLATFORM_CUDA

```

![](https://i.imgur.com/WZRgoEt.png)


# Reference

[^1]: Nvidia Cuda は`RTX` or `Quardo`の計算カードを使えるのですが，一般的に `Geforce`　のようなゲーミングカードはお勧めしません．効果が小さいです．  
[^2]: [グラフィックボードの紹介](https://www.nvidia.com/en-us/design-visualization/rtx-a4000/) 
[^3]: [A4000の規格](https://www.nvidia.cn/content/dam/en-zz/Solutions/gtcs21/rtx-a4000/nvidia-rtx-a4000-datasheet.pdf)
[^4]: `abaqus_v6.env`のパスは普通ここにあります`C:\SIMULIA\EstProducts\2020\win_b64\SMA\site`
