#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Soma Shirai <shiso461@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0


### plusコマンドへのテスト###
### NORMAL INPUT ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


### prime_fコマンドへのテスト###
# 10の素因数分解
out=$(echo "10" | ./prime_f)
[ "${out}" = "10: 2 * 5" ] || ng "$LINENO"

# 100の素因数分解
out=$(echo "100" | ./prime_f)
[ "${out}" = "100: 2 * 2 * 5 * 5" ] || ng "$LINENO"

# 1が入力された場合
out=$(echo "1" | ./prime_f)
[ "${out}" = "1 は素因数分解できません。" ] || ng "$LINENO"

# マイナスの数値が入力された場合
out=$(echo "-10" | ./prime_f)
[ "${out}" = "-10 は素因数分解できません。" ] || ng "$LINENO"

# 少数が入力された場合
out=$(echo "1.5" | ./prime_f)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# 数値以外が入力された場合
out=$(echo "abc" | ./prime_f)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "$res" = 0 ] && echo ok
exit "$res"
