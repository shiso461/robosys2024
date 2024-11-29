# 素因数分解(Prime Factorization)
[![test](https://github.com/shiso461/robosys2024/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/shiso461/robosys2024/actions/workflows/test.yml)
## 概要

- ターミナル上で素因数分解をするコマンドです．
- 結果を横に並べて出力するため，他のコマンドにつなげやすいです．
### Linuxのfactorコマンドとの違い
- マイナスの数値を入力した時は-1を素因数分解の結果に含みます．
- 0や1の入力に対してはその値をそのまま出力します．

## クローン方法

 ターミナルで以下のコマンドを入力し，クローンして下さい．
 
 ```
 git clone https://github.com/shiso461/robosys2024.git
 ```

## 使用方法

 まず，ターミナルで以下のコマンドを入力し，ディレクトリを移動してください．
 ```
 cd robosys2024
 ```
### 素因数分解可能な整数が与えられたとき
- 実行例
 ```
 echo 2024 | ./prime_f
 ```
- 実行結果
 ```
 2024:2 2 2 11 23 
 ```
### 0や1,素数が与えられたとき
- 実行例
 ```
 echo 1 | ./prime_f
 ```
- 実行結果
 ```
 1:1
 ```
### マイナスの数値が与えられたとき
- 実行例
 ```
 echo -393 | ./prime_f
 ```
- 実行結果
 ```
 -393:-1 3 131
 ```
### 結果だけ出力したいとき
以下のコマンドと組み合わせて実行してください
 ```
 cut -d':' -f2
 ```
- 実行例
 ```
 echo 120 | ./prime_f | cut -d':' -f2
 ```
- 実行結果
 ```
 2 2 2 3 5
 ```

## 注意
- 大きな数値に対しては正常に動作しないことがあります．

## 必要なソフトウェア
- Python
	- テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 22.04 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/slides_marp/tree/master/robosys_2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)

© 2024 Soma Shirai 
