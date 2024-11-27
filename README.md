# 素因数分解(Prime Factorization)
[![test](https://github.com/shiso461/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/shiso461/robosys2024/actions/workflows/test.yml)

## 概要

- ターミナル上で素因数分解をするコマンドです．
- 0や1の入力には素因数分解できないと判定します．

## クローン方法

 ターミナルで以下のコマンドを入力し，クローンして下さい．

 ```
 git clone https://github.com/shiso461/robosys2024.git
 cd robosys2024
 ```

## 使用方法
### 素因数分解可能な整数が与えられたとき
- 実行例
 ```
 echo 2024 | ./prime_f
 ```
- 実行結果
 ```
 2024: 2 * 2 * 2 * 11 * 23
 ```
### 素数が与えられたとき
- 実行例
 ```
 echo 461 | ./prime_f
 ```
- 実行結果
 ```
 461: 461
 ```
### 0や1が与えられたとき
- 実行例
 ```
 echo 1 | ./prime_f
 ```
- 実行結果
 ```
 1 は素因数分解できません。
 ```

## 注意
- 大きな数値に対しては正常に動作しない事があります．

## 必要なソフトウェア
- Python
	- テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 24.04 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)

© 2024 Soma Shirai
