# 今天赚到 10 元的执行清单

目标：用 GitHub Pages 发布一个 10 元小服务，并拿到第一单。

最短路径：

1. 改 `index.html` 里的联系方式和收款方式。
2. 上传到 GitHub 并开启 Pages。
3. 把免费自测页链接发出去，再打开 `FIRST-ORDER-SPRINT.md`，照着私信 20 个人。
4. 有人付款后，用 `product/delivery-template.md` 交付。

你也可以让客户在 GitHub 仓库里点 `New issue`，用 README 体检表单提交链接。

想更快交付，就打开 `product/delivery-builder.html`，填客户链接并勾选问题，然后复制生成的报告。

## 第 1 步：先改 4 个占位信息

打开 `index.html`，替换：

- `你的微信号`
- `你的邮箱`
- `这里换成你的收款二维码说明`
- `https://github.com/your-name/github-readme-check`

如果你暂时不想放邮箱，就删掉邮箱那一行。

## 第 2 步：上传到 GitHub

1. 新建仓库：`github-readme-check`
2. 上传本文件夹所有内容。
3. 打开仓库 `Settings`。
4. 进入 `Pages`。
5. 选择 `Deploy from a branch`。
6. 选择 `main` 和 `/root`。
7. 等 1 到 3 分钟拿到网页链接。

如果你已经登录 GitHub CLI，可以在这个文件夹里运行：

```powershell
.\scripts\publish-to-github.ps1 -RepoName github-readme-check
```

## 第 3 步：发出第一条获客消息

复制这段，发到朋友圈、微信群、同学群或开发者群：

```text
我做一个 10 元小服务：帮你看一眼 GitHub 主页或项目 README，指出 3 个最影响第一印象的问题，再给你一版可以直接复制的 README 开头。

适合正在找实习、求职、做作品集、接单或准备开源项目的人。

只看一个 GitHub 链接，24 小时内交付。想试的话发我链接。
```

## 第 4 步：有人问就这样回复

```text
可以的。你把 GitHub 主页或项目 README 链接发我，然后付款 10 元。我会在 24 小时内给你：

1. 3 个最需要先改的问题
2. 一版可直接复制的 README 开头
3. 一个下一步优化建议

如果你改完后想让我再看一眼，可以免费追问 1 次。
```

## 第 5 步：交付

复制 `product/delivery-template.md`，把里面的示例内容改成对方的真实情况，然后发给客户。

## 第一单成交技巧

- 先找身边有 GitHub 的学生、求职者、程序员。
- 不要解释太多，直接说“10 元帮你看一眼，今天能交付”。
- 如果没人下单，把第一条免费给一个朋友做，拿到反馈截图后再发第二条。
- 第一单完成后，把价格改成 19 元。
