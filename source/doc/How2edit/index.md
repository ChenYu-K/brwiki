---
title: 本サイトの編集のやり方
date: 2022-05-05 11:10:11
tags: Markdown
coauthor: 
    - Chen Yu
---

{% cq %} Hexo/Markdown 書き方 {% endcq %}


# まとめ
まず，簡単でまとめると．

|機能|書き方|例|
|---|---|---|
|見出し| # 見出し1 <br> ##見出し2|
|inLineコード| \`code\`|`code`|
|Hyperlink| \[ocubridgeHP](http://brdg.civil.eng.osaka-cu.ac.jp/)|[ocubridgeHP](http://brdg.civil.eng.osaka-cu.ac.jp/)|
|画像挿入|\!\[代替テキスト](URL)| [グラフを挿入する](##グラフを挿入する．) |
|太字|\*\*テキスト**|**テキスト**|
|斜体|\*テキスト*| *テキスト*|
|打消し線|\~~テキスト~~|~~テキスト~~|
|リスト|`- abc`| - abc|
|空行・改行| \半角スペース2つ、<br>など
|コードの挿入|` ```md ` <br> `code`  <br>` ``` ` | Markdown:md <br> Python: py <br> etc...|
|引用| `> abc`| > abc|
|文字色| `<font color="Red">テキスト</font>` | <font color="Red">テキスト</font>|
|水平線|` *** `|***|
|マークダウンのエスケープ| ```  \`abc`  ```| \`abc`



# 書き方

本サイトは{% label @Markdown %} [^1]を基づいて`Hexo` [^2]から`Html`に自動変換されたものです．　　
Htmlを触らず，簡単に文書を作成するのは目的なので、基本Htmlのフォーマットは変更できない．　　

{% note success %}
サイトの書き方は基本`Markdown`と同じ．[Wikipekia](https://ja.wikipedia.org/wiki/Markdown)を参考してください
{% endnote %}

## アルゴリズム

1. `Nas_sy21:\web\wiki\source`に置いたものは`HTMEL`のソースコードである．
2. `Hexo`がコンパイルすれば、自動的に`Markdown`の`.md`ファイルを`.html`ファイルに変換できる.
3. 変換したものは`Nas_sy21:\web\wiki\public`においてある．
4. 写真あるいは文書とかを`source`に入れたら、URLで参照したら出てくる．e.g.

```html
<img src="/pic/xxxx.png" width="80%" />
```



{% note danger %} 
`source`の中にあるものはHtmlの全文であるが，それ以外のフォルダを触らないでください．  
{% endnote %}

## グラフを挿入する．
　グラフを挿入する方法いくつかがある．最も使われているのは`Markdown`のコード．

```md
![](./pic/xxx.png)
```
Htmlコードも使える．

```html
<img src="./pic/xxxx.png" width="80%" />
```
### グラフの位置
グラフの場所は**絶対位置**と**相対位置**2種類がある．
`./pic`は相対場所：現在作業中のフォルダ内のPICフォルダを指している．
> `./` は現在のフォルダの相対位置

これ`![](./pic/eg-1.png)`　を入力すると，以下のようになる．

![](./pic/eg-1.png)

{% note info %}　他のフォルダ内，あるいはwebsiteのグラフを引用する時，絶対位置を使うのは望ましい．例えば，{% endnote %}

`![](/doc/How2edit/pic/example.jpg)` |`![](https://cdn.jsdelivr.net/gh/ChenYu-K/pic@main/logo/example.jpg)`
:-------------------------:|:-------------------------:
| ![](/doc/How2edit/pic/example.jpg) | ![](https://cdn.jsdelivr.net/gh/ChenYu-K/pic@main/logo/example.jpg) |

>? Local絶対位置を引用する時，本サイトのルートディレクトリは`./source`なので，絶対位置の引用は`source`以降のフォルダからスタート.

## 表の作り方

```md
| Tile1 | Tile2 | Tile3 |
| :------ | :------: | ------: | --- |
| 文字を左寄せ | 文字を中央寄せ | 文字を右寄せ | デフォルト（左）|
```
| Tile1 | Tile2 | Tile3 | Tile4 |
| :------ | :------: | ------: | --- |
| 文字を左寄せ　　 | 文字を中央寄せ　　 | 文字を右寄せ　　 | デフォルト（左）|

# Hexoにエンベデッドされた機能

## Tag

```
{% note class_name %} Content (md partial supported) {% endnote %}
```
を使えば次のようなTagを作成できる．
例えば：
```
{% note info %} これはテスト {% endnote %}
```
{% note info %} これはテスト {% endnote %}
選択できるものは以下に示す(上記の`class_name`を次のクラスに変更する)：
- `default`
- `primary`
- `success`
- `info`
- `warning`
- `danger`


{% note default %} これは  `default`  {% endnote %}
{% note primary %} これは `primary` {% endnote %}
{% note success %} これは `success` {% endnote %}
{% note info %} これは `info` {% endnote %}
{% note warning %} これは `warning` {% endnote %}
{% note danger %} これは `danger` {% endnote %}

Iconなし：
```md
{% note info no-icon This is a summary %}
#### Details and summary (No icon)
Note with summary: `note info no-icon This is a summary`
{% endnote %}
```
{% note info no-icon This is a summary %}
#### Details and summary (No icon)
Note with summary: `note info no-icon This is a summary`
{% endnote %}

## グラフの大きさ調整

```html
<img src="url" width="80%" />
```

## Flowchart

Flowchartは`Mermaid` [^3] を使用している．
[Documentation](https://mermaid-js.github.io/mermaid/#/flowchart)

**書き方**

---

```markdown
{% mermaid graph TD %}
state if_state <<choice>>
[*] --> if_state:Loop
if_state --> Statements: yes
Statements --> if_state
if_state --> [*]: No]
{% endmermaid %}
```

{% mermaid stateDiagram-v2 %}
state if_state <<choice>>
[*] --> if_state:Loop
if_state --> Statements: yes
Statements --> if_state
if_state --> [*]: No

{% endmermaid %}

# Footnote  

[^1]: [Markdown（マークダウン）は、文書を記述するための軽量マークアップ言語のひとつである.](https://ja.wikipedia.org/wiki/Markdown)  
[^2]: [A fast, simple & powerful blog framework](https://hexo.io/)
[^3]: https://theme-next.js.org/docs/tag-plugins/mermaid.html#Settings