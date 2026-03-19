# GitHub Pages Build and Deployment 创建说明

本文档说明如何为 `Zoe-yiyi/audio-qrcode` 配置 GitHub Pages 的 `Build and deployment`，让音频播放页可以通过公开网址访问。

## 适用目标

- 发布 `index.html` 为线上可访问页面
- 让二维码指向 GitHub Pages 播放页
- 配合 jsDelivr 音频直链形成长期可用的扫码收听方案

## 前置条件

- 仓库已创建并为公开仓库：`Zoe-yiyi/audio-qrcode`
- 仓库根目录已上传以下文件：
  - `audio.m4a`
  - `index.html`
  - `qrcode-generator.html`
- 默认分支为 `main`

## 配置入口

打开：

```text
https://github.com/Zoe-yiyi/audio-qrcode/settings/pages
```

## 配置步骤

1. 进入仓库 `Settings`
2. 点击左侧 `Pages`
3. 找到 `Build and deployment`
4. 在 `Source` 中选择：`Deploy from a branch`
5. 在分支选择中设置：
   - Branch：`main`
   - Folder：`/ (root)`
6. 点击 `Save`

## 配置完成后的结果

成功后，GitHub 会自动发布仓库根目录中的静态页面。

本项目的播放页地址为：

```text
https://zoe-yiyi.github.io/audio-qrcode/
```

## 本项目中的作用

- `index.html` 会成为线上播放页
- 二维码应指向 GitHub Pages 页面，而不是直接指向音频文件
- 页面通过 URL 参数读取音频地址、标题、副标题和主题

## 推荐二维码目标链接格式

```text
https://zoe-yiyi.github.io/audio-qrcode/?audio=<encoded-audio-url>&title=<encoded-title>&subtitle=<encoded-subtitle>&theme=story
```

## 示例链接

```text
https://zoe-yiyi.github.io/audio-qrcode/?audio=https%3A%2F%2Fcdn.jsdelivr.net%2Fgh%2FZoe-yiyi%2Faudio-qrcode%40main%2Faudio.m4a&title=read+aloud&subtitle=%E5%BE%AE%E4%BF%A1%E6%89%AB%E7%A0%81%E5%8D%B3%E5%8F%AF%E6%94%B6%E5%90%AC+read+aloud%EF%BC%8C%E9%80%82%E5%90%88%E6%9C%97%E8%AF%BB%E5%88%86%E4%BA%AB%EF%BC%8C%E9%A1%B5%E9%9D%A2%E9%95%BF%E6%9C%9F%E6%9C%89%E6%95%88%EF%BC%8C%E5%8F%AF%E5%8F%8D%E5%A4%8D%E6%89%AB%E7%A0%81%E3%80%82&theme=story
```

## 发布验证方法

配置保存后，等待几十秒到几分钟，再检查：

1. 打开 `https://zoe-yiyi.github.io/audio-qrcode/`
2. 页面能正常显示播放器界面
3. 用手机或微信打开页面可见播放按钮和进度条
4. 页面中的下载按钮可指向音频文件

## 常见问题

### 1. 页面返回 404

可能原因：

- 还未完成首次构建
- `Build and deployment` 没有选 `main / (root)`
- 仓库不是公开仓库

建议处理：

- 刷新 `Pages` 页面查看状态
- 确认 `index.html` 在仓库根目录
- 等待 1 到 3 分钟后再次访问

### 2. 页面打开了但音频不播放

可能原因：

- 音频链接错误
- 音频文件名与链接不一致
- 微信或浏览器要求用户先点击播放

建议处理：

- 检查 `audio.m4a` 是否存在于仓库根目录
- 检查 jsDelivr 链接是否返回 200
- 手动点击播放按钮测试

### 3. GitHub Pages 已开启但样式不对

可能原因：

- 浏览器缓存旧版本页面

建议处理：

- 强制刷新页面
- 在手机端重新打开链接

## 当前项目建议

本项目建议始终保持：

- 仓库公开
- 分支使用 `main`
- 页面发布目录使用 `/ (root)`
- 音频文件名保持 `audio.m4a`

这样可以最大程度保证二维码长期可用且无需反复更换。
