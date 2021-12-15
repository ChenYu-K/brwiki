---
title: Welcom to BRWIKI
top: 10
coauthor: Chen Yu
---

# 橋梁研データベースの利用便利帳

橋梁研のデータベースを活用するため，ドキュメンテーションを作成してみました．
ぜひ利用してください．

―陳　瑜
―2021/10/21

**編集し方はクリックしてください．

<!--more-->

# 書き方

本サイトは`Markdown` [^1]を基づいて`Hexo`[^2]から`Html`に自動変換されたものです．　　
Htmlを触らず，簡単に文書を作成するのは目的なので、基本Htmlのフォーマットは変更できない．　　

<% note success%>
サイトの書き方は基本`Markdown`と同じ．[Wikipekia](https://ja.wikipedia.org/wiki/Markdown)を参考してください．
<% endnote%>

## アルゴリズム

1. `Nas_sy21:\web\wiki\source`に置いたものは`HTMEL`のソースコードである．
2. `Hexo`がコンパイルすれば、自動的に`Markdown`の`.md`ファイルを`.html`ファイルに変換できる.
3. 変換したものは`Nas_sy21:\web\wiki\public`においてある．
4. 写真あるいは文書とかを`source`に入れたら、URLで参照したら出てくる．e.g.

```html
<img src="/pic/xxxx.png" width="80%" />
```

```md
![](/pic/xxx.png)
```

<% note danger %>
 `source`の中にあるものはHtmlの全文であるが，それ以外のフォルダを触らないでください．
<% endnote%>
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

## グラフの大きさ調整

```html
<img src="url" width="80%" />
```

# Footnote  

[^1]: [Markdown（マークダウン）は、文書を記述するための軽量マークアップ言語のひとつである.](https://ja.wikipedia.org/wiki/Markdown)
[^2]: [A fast, simple & powerful blog framework](https://hexo.io/)