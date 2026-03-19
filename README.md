# 微信音频二维码 v1.1

一个基于 GitHub Pages 的单音频分享方案。当前示例已经替换为《班级小故事》音频，扫码后进入播放页，可在手机浏览器和微信场景中收听、控制进度并下载音频。

## v1.1 当前能力

- 移动优先的单页播放器，适合扫码直达收听
- 7 套主题：`aurora`、`podcast`、`story`、`memo`、`radio`、`luxe`、`forest`
- 播放控制：播放/暂停、快退 10 秒、快进 10 秒、进度拖动、倍速切换
- 音频下载：播放页保留下载音频按钮
- 副标题分段：输入换行或 `-` 可拆成多行显示，播放器和海报页规则一致
- 主题同步：二维码海报主题与播放页主题保持一致
- 二维码生成器：支持 GitHub 用户名、仓库名、分支名、文件名、音频直链、标题、副标题、主题、角标
- 海报导出：支持浏览器内生成二维码并下载 PNG 海报
- 状态反馈：生成器带按钮忙碌状态、状态提示、脚本加载校验
- 音频兼容：默认使用 GitHub Pages 同域音频地址，播放器在特定外链失败时会尝试回退到站内音频

## 当前代码对应的实际行为

- 播放页参数：支持 `audio`、`title`、`subtitle`、`theme`
- 播放页不再提供复制链接按钮
- 默认音频地址是当前站点下的 `audio.m4a`
- 生成器在“音频直链”留空时，会自动拼接 GitHub Pages 同域音频地址，而不是 jsDelivr
- 生成器里的“分支名”字段会保留在表单和 URL 预填中，但默认 GitHub Pages 音频路径本身不依赖分支名
- 当前仓库内的 `audio.m4a` 已替换为《班级小故事》并做过浏览器流式播放优化

## 项目文件

- `audio.m4a`：当前示例音频，已优化为更适合网页播放的版本
- `index.html`：扫码进入的播放页
- `qrcode-generator.html`：二维码海报生成器
- `PRD-v1.0.md`：v1.0 历史 PRD
- `PRD-v1.1.md`：与当前代码一致的 PRD
- `README.md`：项目总说明
- `项目说明.txt`：文件清单与功能摘要
- `GitHub-Token-创建说明.md`：Token 创建说明
- `GitHub-Pages-Build-and-Deployment-说明.md`：GitHub Pages 发布说明
- `🚀快速开始-三分钟完成.md`：快速部署指南
- `deploy.sh`：macOS/Linux 打开生成器
- `立即开始-三步完成.bat`：Windows 打开生成器

## 使用方式

1. 创建公开 GitHub 仓库，例如 `audio-qrcode`
2. 上传 `audio.m4a`、`index.html`、`qrcode-generator.html`
3. 在 GitHub Pages 中发布仓库根目录
4. 打开本地或线上 `qrcode-generator.html`
5. 填写信息后生成二维码海报并下载

## 链接规则

默认音频地址：

```text
https://<github-username>.github.io/audio-qrcode/audio.m4a
```

播放页地址：

```text
https://<github-username>.github.io/audio-qrcode/
```

二维码目标链接示例：

```text
https://<github-username>.github.io/audio-qrcode/?audio=<encoded-audio-url>&title=<encoded-title>&subtitle=<encoded-subtitle>&theme=story
```

## 当前部署示例

- 仓库：`https://github.com/Zoe-yiyi/audio-qrcode`
- 播放页：`https://zoe-yiyi.github.io/audio-qrcode/`
- 生成器：`https://zoe-yiyi.github.io/audio-qrcode/qrcode-generator.html`
- 默认音频：`https://zoe-yiyi.github.io/audio-qrcode/audio.m4a`

## v1.1 更新记录

- 替换默认音频为《班级小故事》
- 优化播放页移动端布局，压缩到更适合一屏显示
- 删除播放页复制链接按钮和底部说明文案
- 新增副标题 `-`/换行分段显示
- 同步海报页与播放页主题
- 修复二维码生成器按钮状态和下载稳定性
- 默认改为 GitHub Pages 同域音频链接
- 增加音频加载失败后的回退策略
- 优化仓库内 `audio.m4a` 的网页播放兼容性

## 当前限制

- 仍然是单音频分享方案，不支持多音频列表
- 首次播放通常需要用户手动点击触发
- 海报导出仍依赖外部 CDN 脚本加载
- 海报导出格式仍为 PNG
- 未提供后台、统计、登录、Logo 上传或 JPG 导出
