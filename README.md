# GitHub 10 元变现包

这是一个可以直接发布到 GitHub Pages 的小型付费服务页面，用来售卖：

**10 元 GitHub 主页 / 项目 README 快速体检**

页面里已经包含一个免费的 README 自测工具。访客可以先勾选自己的页面完成度，看到分数后再下单 10 元人工体检。

你要做的事很简单：

1. 先看 `START-HERE.md`。
2. 把 `index.html` 里的收款方式和联系方式改成你的。
3. 把本文件夹上传到一个 GitHub 仓库。
4. 开启 GitHub Pages。
5. 复制 `FIRST-ORDER-SPRINT.md` 和 `product/promo-copy.md` 里的文案去发。
6. 有人付款后，按 `product/delivery-template.md` 给对方交付修改建议。

发布到 GitHub 后，别人也可以通过仓库的 Issues 提交链接。Issue 表单在 `.github/ISSUE_TEMPLATE/`。

收款后可以打开 `product/delivery-builder.html`，用交付生成器快速生成体检报告。

## 为什么这个方向适合先赚 10 元

- 客单价低，别人更容易尝试。
- 交付不复杂，看一眼对方 GitHub 主页或项目 README 就能给建议。
- GitHub Pages 免费，仓库本身就是你的案例页。
- 免费自测工具能降低陌生人下单前的犹豫。
- 你可以先接 1 单，赚到 10 元后再升级成 29 元、49 元版本。

## 需要你手动替换的地方

打开 `index.html`，搜索：

- `你的微信号`
- `你的邮箱`
- `这里换成你的收款二维码说明`
- `https://github.com/your-name/github-readme-check`

改成你自己的信息即可。

## GitHub Pages 发布步骤

1. 新建仓库，例如 `github-readme-check`。
2. 上传本文件夹里的全部文件。
3. 进入仓库 `Settings`。
4. 找到 `Pages`。
5. Source 选择 `Deploy from a branch`。
6. Branch 选择 `main` 和 `/root`。
7. 保存，等待 1 到 3 分钟。
8. GitHub 会给你一个页面链接，例如：
   `https://你的用户名.github.io/github-readme-check/`

如果你已经登录 GitHub CLI，也可以在本文件夹运行：

```powershell
.\scripts\publish-to-github.ps1 -RepoName github-readme-check
```

## 交付标准

每个 10 元订单至少交付：

- 3 条最需要改的问题。
- 1 个可直接复制的 README 开头版本。
- 1 条标题或项目描述优化建议。
- 1 条下一步行动建议。

参考 `product/delivery-template.md`。
