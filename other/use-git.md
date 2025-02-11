# **如何使用 Git ?**

**本教程并不隶属于 VHSS-Manual，只是临时存储至本项目的 other 文件夹内**

## **什么是 Git ?**

Git 是一个开源的分布式版本控制系统，由Linux之父林纳斯·托瓦兹（Linus Torvalds）在2005年
创建。它设计用于高效地处理从小型到大型项目的所有版本管理需求。Git的核心特性
在于其分布式特性，与传统的集中式版本控制系统（如SVN）不同，每个开发者的电脑上都是
一个完整的版本库，这使得开发者可以在离线状态下工作，并且方便地进行版本之间的切换和合并。

Git的工作流程包括了工作区（Workspace）、暂存区（Index或Stage）和仓库区（Repository）。
工作区是开发者直接编辑文件的地方；暂存区用于临时保存工作区的改动，以便于下一次提交；
仓库区则保存了所有的历史版本和提交信息。此外，Git还支持远程仓库（Remote），
使得团队成员可以轻松地共享和合并代码更改。

Git不仅是一个版本控制工具，它还具备内容管理系统和工作流管理的特性，为软件开发团队
提供了强大的协作能力。通过Git，开发者可以轻松追踪每一次文件的改动，回溯到历史版本，
以及在多个分支上并行开发，这极大地提高了软件开发的灵活性和效率。

参见官方网站：[Git 是什么？](https://git-scm.com/book/zh/v2/%e8%b5%b7%e6%ad%a5-Git-%e6%98%af%e4%bb%80%e4%b9%88%ef%bc%9f)

## **我该怎样上传 ?**

### **准备你的 Git**

官方下载链接：

- [Windows](https://git-scm.com/download/win)
- [Linux](https://git-scm.com/download/linux)
- [Mac](https://git-scm.com/download/mac)

网上有很多教程这里就不细讲安装过程了。几个关键字：git、安装、windows<del>毛病多</del>

**对于Windows用户，我个人推荐使用[便携携带版 Git](https://github.com/git-for-windows/git/releases/download/v2.47.1.windows.2/PortableGit-2.47.1.2-64-bit.7z.exe)**

还有！在这里必须做一个基本配置以免出现其它情况！

```git
# 设置 init 默认名称
git config --global init.defaultBranch main

# 查看是否成功
git config list | grep init.defaultBranch
```

---

首先我们要将远程(origin)代码保存至本地（假设你的系统是 Windows 且保存位置在~/Documents/下）

使用一下代码并在Git中打开:
```git
# 克隆项目至本地
git clone https://github.com/VHSchool-Survival-Manual/VHSS-Manual.git

# 解压并进入该目录
cd <名称>\

# 查看当前项目状态
git status

```

如果显示一些其他问题，先：`git pull origin main`

目前整个项目只有一个 `main` 分支，请不要擅自创建其他分支！

如果上述步骤没有任何问题那么恭喜，你已经可以开始你的编辑了!

### **上传你的更改**

记得保存你的修改并及时同步远程仓库: `git pull origin main`，然后就可以上传你的文件了！

```git
# 添加文件
git add <files>

# 添加注释
git commit -m "Aaaaaaaaa!"

# 上传
git push origin -u main
```

没有报错？那就没问题了。刷新项目网页看看有没有你的痕迹。

## **遇到问题 ?**

**先放着，问题都好说**

**Git 检测错误：`git fsck`**

## **有用的链接**

[**Git Pro**](https://git-scm.com/book/en/v2) : 就是官方的电子书，遇到问题还是复制粘贴错误到网上吧。
