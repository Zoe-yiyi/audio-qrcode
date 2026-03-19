# 微信音频二维码 v1.0

一个基于 GitHub Pages 和 jsDelivr 的微信音频分享方案。用户扫码后进入手机端播放页，可在微信内直接收听音频。

## 已实现功能

- 微信友好的手机端音频播放页
- 7 套主题风格：空灵氛围、播客对谈、故事朗读、语音备忘、电台时刻、金色奢感、自然清听
- 音频播放控制：播放/暂停、快退 10 秒、快进 10 秒、拖动进度条、倍速播放
- 操作按钮：复制页面链接、下载音频
- 二维码海报生成器：支持 GitHub 用户名、仓库名、分支、文件名、直链、标题、副标题、主题、角标文字
- 海报导出：浏览器内下载 PNG 海报
- 播放页参数化：支持 `audio`、`title`、`subtitle`、`theme`
- 生成器参数预填：支持通过 URL Query 预填表单

## 当前文件

- `audio.m4a`：示例音频
- `index.html`：微信扫码后的音频播放页
- `qrcode-generator.html`：二维码海报生成器
- `PRD-v1.0.md`：产品需求说明
- `🚀快速开始-三分钟完成.md`：快速部署说明
- `项目说明.txt`：项目清单说明
- `deploy.sh`：macOS/Linux 打开生成器
- `立即开始-三步完成.bat`：Windows 打开生成器

## 使用方式

1. 创建公开 GitHub 仓库，例如 `audio-qrcode`
2. 上传 `audio.m4a`、`index.html`、`qrcode-generator.html`
3. 在 GitHub Pages 中发布 `main` 分支根目录
4. 用浏览器打开本地 `qrcode-generator.html`
5. 填写仓库信息并生成二维码海报

## 链接规则

音频 CDN 直链：

```text
https://cdn.jsdelivr.net/gh/<github-username>/audio-qrcode@main/audio.m4a
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

## 当前限制

- 浏览器和微信通常需要用户点击后才能开始播放音频
- 当前海报导出格式为 PNG
- 当前生成器未内置 Logo 上传和 JPG 导出
- 当前方案默认围绕单音频文件分享场景设计
