---
title: Brabq12(HPC-サーバー)
date: 2023-05-24 16:26:52
tags: equipment
---

# 概要

Brabq12は，橋梁研究室のHPCサーバーです．
ABAQUSの計算を行うために購入しました．

<img src="https://www.supermicro.com/files_SYS/images/System/SYS-740GP-TNRT_main.jpg" width="80%" />


| 項目 | 内容 |
| --- | --- |
| 製品名 | Brabq12 |
| 製品型番 | [GPU SuperServer SYS-740GP-TNRT](https://www.supermicro.com/en/products/system/gpu/4u/sys-740gp-tnrt) |
| 製品仕様 | [製品仕様書](https://www.supermicro.com/en/products/system/datasheet/sys-740gp-tnrt) |
|製造元|[Supermicro](https://www.supermicro.com/en/home)|
|購入先|[株式会アスク](https://www.ask-corp.jp/)|
|購入日|2023年3月|
|購入価格|1,200,000円|

{% note info %}
サーバーに何か問題ある場合，山根康志 <koji.yamane@ask-corp.co.jp> に連絡してください．
{% endnote %}


# 仕様

| 項目 | 内容 |
| --- | --- |
| OS | Linux (Ubuntu 22) |
| CPU | [Intel® Xeon® Silver 4310 Processor](https://www.intel.com/content/www/us/en/products/sku/215277/intel-xeon-silver-4310-processor-18m-cache-2-10-ghz/specifications.html) ×2 |
|コア数|24|
| メモリ | 256GB (DDR4 3200MHz ECC RDIMM) |
| GPU | [NVIDIA® A30 24GB](https://www.nvidia.com/en-us/data-center/products/a30-gpu/) ×1 |
| ストレージ | 24TB (SATA, Raid5) |

## GPUの紹介

![](https://www.xicomputer.com/solutions/nvidia/A30/images/nvidia-a30-hero.png)

なぜこのA30を選んだかというと，以下の理由があります．

Abaqus/ Standard ではFP64で計算している,  Explicit　では単精度(FP32)で計算している

{% note success %}
A30はFP64(5.2Tflops)での性能が高いので，A30を選択しました．
{% endnote %}


# 接続方法

## SSH
LinuxのOSを搭載しているPCから，SSHで接続できます．  
- 管理者の場合は，`ssh user@brabq12`
- 一般ユーザーの場合は，`ssh bridge@brabq12` パスワード: `lo7buckl`


# 使用方法

{% note info %} 
分からないところがある場合，[ASK Ubuntu](https://askubuntu.com/) or ChatGpt　に聞いてください．
{% endnote %}

## サーバー管理パネル

 > https://brabq12:9090/ ここからサーバーの状態を確認できます．

Cockpitを利用してサーバ及びVMを管理するためのインストール／セットアップ手順です。
Cockpitで管理するサーバにはCockpitをインストールしてcockpit.socketを起動させる必要があります。
Cockpitは標準でポート9090を利用しますがGitLabを利用されている場合はポート9090は既に利用されているため別のポートを利用する必要があります。

1. aptを利用してCockpitをUbuntu20.04にインストールできます。

```bash
sudo apt update
```

2. cockpitをインストール。

```bash
sudo apt -y install cockpit
```

3. Cockpitを起動する。

```bash
sudo systemctl start cockpit
```

4. 確認する。

```bash
sudo systemctl status cockpit
```

5. OSを再起動した場合でも起動するようにする。

```bash
sudo systemctl enable cockpit
```


## ABAQUSのインストール方法

詳細は[ここ](https://github.com/franaudo/abaqus-ubuntu)に参考してください

### インストール前の環境設定

The setup of Abaqus requires a `bash` instead of a `dash` shell, whereas the latter is the default in Ubuntu. To temporary change that we symlink the shell command to `bash` by:

`sudo ln -sf bash /bin/sh`

which we'll undo after the installation.

To install them open a terminal and execute the following commmand:

`sudo apt update
sudo apt install csh tcsh ksh gcc g++ gfortran libstdc++5 build-essential make libjpeg62 libmotif-dev`

Check the output of the installations and if there are errors try to install the ones that failed using the synaptic package manager. To install it, run:

`sudo apt-get update
sudo apt-get install synaptic`

Once installed, open it and look for the aforementioned libraries and install them.

## 橋梁研PCに接続ためのSMB設定

Sambaは、選択されたUnixディレクトリ（すべてのサブディレクトリを含む）に対してネットワーク共有を作成することができます。これにより、Windowsユーザーは通常のWindowsフォルダにアクセスするように、これらのUnixディレクトリにネットワーク経由でアクセスすることができます。要するに、LinuxサーバーにあるファイルをWindowsに共有し、D、Eドライブのようなローカルドライブにマップしてアクセスできるようにします。

インストール及び設定方法は以下の通りです。

> Vimの[編集方法](https://qiita.com/okamos/items/c97970ab34ff55ff3167)

```yaml
#SMBサーバーのインストール
sudo apt-get install samba
sudo apt-get install smbclient
# バージョンを確認する
samba -V
# バージョンが4.7.6以上の場合は、smb.confの編集が必要
mkdir share
#共有フォルダの作成
chmod 777 share  
#共有フォルダの権限変更
sudo vi /etc/samba/smb.conf 
#smb.confの編集



[abaqusrun]
    comment = bridge
    path = /home/abaqusrun
    browseable = yes
    public = yes
    writeable = yes
    read only = no
    valid users = bridge
    create mask = 777
    directory mask = 777
    force user = bridge
    force group = bridge
    available = yes

[storage1]
    comment = bridgeshare
    path = /home/storage1
    browseable = yes
    public = yes
    writeable = yes
    read only = no
    create mask = 777
    directory mask = 777
    force group = bridge
    available = yes
    guest ok = yes

#ユーザーの追加
sudo smbpasswd -a username
#smb.confの編集後、再起動
sudo service smbd restart

```

`sudo vi /etc/samba/smb.conf`

`sudo chmod 777 /home/ -R`

`mount -o remount,rw /`

`sudo service smbd restart`

### abaqusのJobを停止する方法

1. `htop`でabaqusのプロセスを停止する

    ![](https://i.imgur.com/iGj81hT.png)

2. Process IDで停止する
   
    - `ps -ef | grep /bin/standard`でabaqusのプロセスを確認する
    ![](https://i.imgur.com/moNRiSO.png)
    - `kill -9 PID`でabaqusのプロセスを停止する
    - 
3. `abaqus terminate job=jobname`でabaqusのジョブを停止する

## 他のPCのフォルダをマウントする方法（アクセス）

**例**
brabq10のフォルダをbrabq12にマウントする場合
```bash
sudo mount -t cifs -o username=bridge,password=lo7buckl //10.108.51.10/D /home/storage1/brabq10/d
```

###  マウントしたフォルダを確認する方法

```bash
user@brabq12:~$ df -h
Filesystem                    Size  Used Avail Use% Mounted on
tmpfs                          26G  6.7M   26G   1% /run
/dev/nvme0n1p2                916G  134G  736G  16% /
tmpfs                         126G     0  126G   0% /dev/shm
tmpfs                         5.0M  4.0K  5.0M   1% /run/lock
/dev/nvme0n1p1                511M  6.1M  505M   2% /boot/efi
/dev/md127p1                   22T  732G   20T   4% /home/storage1
tmpfs                          26G  148K   26G   1% /run/user/1000
tmpfs                          26G  108K   26G   1% /run/user/1002
tmpfs                          26G  104K   26G   1% /run/user/1001
10.108.51.13:/volume1/common   49T   22T   28T  45% /home/storage1/nas_sy21/common
//10.108.51.10/D              5.5T  2.2T  3.4T  39% /home/storage1/brabq10
```

### マウントしたフォルダをアンマウントする方法

```bash
umount /home/storage1/brabq10
```

## その他
- サーバーのファイルを確認する方法: [Winscp](https://winscp.net/eng/download.php)


