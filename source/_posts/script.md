---
title: upgrade abaqus 直列実行スクリプト
date: 2022-07-29 13:09:11
tags: abaqus
---

![](https://img.shields.io/badge/Check-Passing-green?style=plastic&logo=Visual%20Studio) ![GitHub](https://img.shields.io/github/license/Kaede-cycy/data-prossing?logoColor=green&style=plastic) ![](https://camo.githubusercontent.com/60aeeb745e7917bf00e3ca5f2ce569632bf119cb7aa1e6d5f1d36b196a38f5e5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4162617175732d562e323032302d626c75653f6c6f676f3d4461737361756c74253230537973742543332541386d6573) 

{% note info %}
動作確認済み．テスト完了．V11を利用してください．
{% endnote %}

# 更新点

- ✅  時々`.log`ファイルが正しくフォルダ内に移動できないBUGを**修正した**.　(`.log`が読み込み中のため，移動できない) #3 

- ✅ `Thread=1`にしても，複数`.inp`ファイルを置いたとき，列を並べず，同時に二つ`.inp`流す　BUGを修正した．#4

- ✅ 判定時間及び条件を修正して，流れを最適化した．

- ✅  #5  2個`inp`を列に並ぶ時，近似度高い`.inp`は`Finished`フォルダに一緒に移動させる．（例えば，`job.inp`が終了時，`_queued_job-1.inp`,`_queued_job-2.inp`も一緒に移動される） ☑️  Fixed it show in [6666908](https://github.com/ChenYu-K/Data-Processing/commit/6666908c869ec161dd1a9fd703d7c12aaac901cf)

<!-- more -->

# Update Log 2022.06.22

-  #3  After run `queueLoop`, I change the sleep time 500ms to 3000ms, that for Waiting for the `.log` to finish reading and writing status.
- I delated the For loop with 54 to 63 row and change the sleep time to 2000ms after `finishLoop` command.
- #4 Add the sleep time in the `finished` loop to wait the `.log` file write to end. (Sleep time  is set to 1000ms)
- When check the file that who is in runing, I change `.lck` to `.log`, to prevent .lck from appearing too slow, cause abaqus calculate 2 inp at the same time.
- #5 When the first name you run siminar the name of `queue` job, such as `job.inp` and `_queued_job-1.inp`. When the job was finished, it will put the `_queued_job-1.inp` into the Finished folder togther.   ☑️  Fixed this issue by add the judgment that do not move the name that stared `_queued_` show in [6666908](https://github.com/ChenYu-K/Data-Processing/commit/6666908c869ec161dd1a9fd703d7c12aaac901cf)

# Where you can download the version 11

You can Download from the link in the table, Or the bottom of this text.
I also put it in the BRNAS : You can find it at 📁  `\\NAS_sy21\common\便利グッズ\02.解析\直列実行スクリプト`

|License||V11|
|---|---|---|
|76| CPU: 4 Coreを使って計算する|[Download](https://cdn.jsdelivr.net/gh/ChenYu-K/Data-Processing@main/script/abaqus_run/public/Abaqus%E8%87%AA%E5%8B%95%E7%9B%B4%E5%88%97%E5%AE%9F%E8%A1%8C_V11_run76.vbs)|
|120| CPU: 8 Core + GPU:1 を使って計算する|[Download](https://cdn.jsdelivr.net/gh/ChenYu-K/Data-Processing@main/script/abaqus_run/public/Abaqus%E8%87%AA%E5%8B%95%E7%9B%B4%E5%88%97%E5%AE%9F%E8%A1%8C_V11_rungpu.vbs)|

or There have attachment file below this documentation

# Where was changed

For example `run50_v10.vbs` to `v11`

![](https://cdn.jsdelivr.net/gh/ChenYu-K/Data-Processing@main/script/abaqus_run/public/changev11.png)

--- 
**Full Change log** : https://github.com/ChenYu-K/Data-Processing/tree/main/script/abaqus_run


# Bug tester
 Thanks for QH.Shen @bridgelab-omu , R.Sakura and JP.Rai @toronion5515 , K.Obaishito test the script, and find the bug.

# Creat License
 Creat License by #1 , 
 @ChenYu-K 
 Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0