#!/bin/sh
DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
open "$DIR/qrcode-generator.html"
printf '%s\n' '已打开二维码生成器，请填写 GitHub 用户名和仓库名后生成二维码海报。'
