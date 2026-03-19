# GitHub Token 创建说明

本文档用于说明如何为 `Zoe-yiyi/audio-qrcode` 创建临时 GitHub Token，供命令行上传文件、推送代码或执行仓库相关操作。

## 适用场景

- 通过命令行推送 `audio.m4a`、`index.html`、`qrcode-generator.html`
- 让本地 git 具备仓库写入权限
- 临时授权自动化工具操作指定仓库

## 推荐方式

优先使用 Fine-grained personal access token。

创建入口：

```text
https://github.com/settings/tokens?type=beta
```

## 创建步骤

1. 打开 GitHub Token 页面
2. 点击 `Generate new token`
3. `Token name` 填写：`audio-qrcode-temp`
4. `Expiration` 选择较短有效期，例如 `7 days`
5. `Repository access` 选择：`Only select repositories`
6. 只勾选仓库：`Zoe-yiyi/audio-qrcode`
7. 在 `Repository permissions` 中添加并设置以下权限：

### 最小可用权限

- `Contents` -> `Read and write`

这已经足够用于：

- `git push`
- 上传文件
- 更新仓库内容

### 如果还需要通过 API 开启 GitHub Pages

额外尝试添加：

- `Pages` -> `Read and write`

说明：不同 GitHub 账号或组织策略下，Pages API 权限可能仍会受限；如果 API 不能开启 Pages，可以直接在网页中手动开启。

## 不需要的权限

通常不需要勾选这些权限：

- `Actions`
- `Administration`
- `Issues`
- `Pull requests`
- `Secrets`
- `Webhooks`

## 使用建议

- 只给单仓库权限，不要给所有仓库
- 有效期尽量短
- 完成上传后立即删除 Token
- 不要把 Token 写进代码、截图、公开聊天记录或文档仓库

## 如果 Token 已经泄露

请立刻处理：

1. 打开 GitHub Token 管理页面
2. 找到已创建的 Token
3. 点击 `Delete` 或 `Revoke`
4. 如仍需使用，重新创建一个新的临时 Token

## 当前项目建议

对于本项目，推荐配置如下：

- Token 类型：Fine-grained PAT
- 仓库范围：`Only select repositories`
- 目标仓库：`Zoe-yiyi/audio-qrcode`
- 最小权限：`Contents -> Read and write`
- 可选权限：`Pages -> Read and write`
- 建议时效：`7 days`

## 备用方案

如果 Fine-grained Token 页面权限项不清楚，也可以改用浏览器手动上传文件：

1. 打开仓库上传页
2. 拖入 `audio.m4a`、`index.html`、`qrcode-generator.html`
3. 提交变更
4. 在 `Settings -> Pages` 中手动开启 Pages

## 备注

本项目当前已经完成仓库上传和 Pages 发布验证。后续如需再次自动化推送，建议重新创建一个新的临时 Token 使用。
