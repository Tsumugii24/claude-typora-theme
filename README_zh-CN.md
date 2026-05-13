# Claude Typora 主题

> English README: [README.md](./README.md)

这是一个 Claude 风格的 Typora 主题项目，包含浅色与深色两个版本，并把主题需要的字体文件打包在本地 `claude_fonts/` 文件夹中。

本项目基于 [blaxisomu/CLAUDE-Typora](https://github.com/blaxisomu/CLAUDE-Typora)，并保留了当前本地修改：字体自包含、侧边栏与源码按钮显示、普通根目录字体、表格分割线修复，以及上游 V7.5 的窗口和侧边栏细节。

## 特性

- **浅色和深色主题**：`claude.css` 与 `claude-dark.css`。
- **本地字体自包含**：主题直接从 `claude_fonts/` 加载字体，不依赖外部 CDN。
- **更易读的侧边栏根目录**：文件树根目录使用普通 UI 字体。
- **保留 Typora 控制按钮**：不隐藏左下角侧边栏和源码相关按钮。
- **表格线修复**：补齐 Typora 编辑区实际 DOM 上的表头和表身分割线。
- **合并上游 V7.5 细节**：包含一体化窗口、侧边栏、Callout、菜单和表格工具栏等细节。

## 安装

### 手动安装

1. 下载最新 release，或克隆本仓库。
2. 打开 Typora。
3. 进入 **偏好设置 -> 外观 -> 打开主题文件夹**。
4. 将以下内容复制到 Typora 主题文件夹：
   - `claude.css`
   - `claude-dark.css`
   - `claude_fonts/`
5. 重启 Typora。
6. 在 **主题** 菜单中选择 **Claude** 或 **Claude Dark**。

默认 Typora 主题目录：

| 平台 | 路径 |
| :-- | :-- |
| Windows | `%APPDATA%\Typora\themes` |
| macOS | `~/Library/Application Support/abnerworks.Typora/themes` |
| Linux | `~/.config/Typora/themes` |

### PowerShell 安装

```powershell
irm https://raw.githubusercontent.com/Tsumugii24/claude-typora-theme/main/scripts/install.ps1 | iex
```

### Bash 安装

```bash
curl -fsSL https://raw.githubusercontent.com/Tsumugii24/claude-typora-theme/main/scripts/install.sh | bash
```

## 字体说明

主题引用以下本地字体文件：

- `AnthropicSansWebText.ttf`
- `AnthropicSerifWebText.ttf`
- `AnthropicMonoVariable.ttf`
- `NotoSerifSC-VariableFont_wght.ttf`

其中 `NotoSerifSC-VariableFont_wght.ttf` 是可变字体，单个文件支持 200 到 900 的字重。

字体归属和许可说明见 [docs/THIRD_PARTY_NOTICES.md](./docs/THIRD_PARTY_NOTICES.md)。

## 致谢

- 原始 Claude Typora 主题：[blaxisomu/CLAUDE-Typora](https://github.com/blaxisomu/CLAUDE-Typora)
- 项目结构参考：[shamsghi/LatexTypora](https://github.com/shamsghi/LatexTypora)
- Claude 视觉风格来源：[claude.ai](https://claude.ai)

## License

本仓库中的主题修改、脚本和文档默认使用 MIT License 发布，另有说明的内容除外。

内置字体保留其各自的授权和所有权，详见 [docs/THIRD_PARTY_NOTICES.md](./docs/THIRD_PARTY_NOTICES.md)。
