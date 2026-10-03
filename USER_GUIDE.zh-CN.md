# nvimdots 中文使用手册

本文档适用于当前仓库的 `main` 分支及本机 `lua/user` 自定义层

- 配置入口: `init.lua`
- 插件管理器: `lazy.nvim`

## 1. 环境要求

### 必需

- Neovim 0.12.x
- Git
- Ripgrep (`rg`) 
- 支持图标的 Nerd Font, 推荐 `JetBrainsMono Nerd Font`

## 2. 快捷键记号

| 记号 | 含义 |
| --- | --- |
| `<Leader>` | `Space` |
| `<C-x>` | `Ctrl+x` |
| `<A-x>` | `Alt+x`; macOS 终端中通常是 `Option+x` |
| `<S-x>` | `Shift+x` |
| Normal | 普通模式 |
| Visual | 可视模式 |
| Insert | 插入模式 |
| Terminal | 终端模式 |

随时按 `Ctrl+p` 打开快捷键面板.也可执行: 

```vim
:Telescope keymaps
```

## 3. 常用快捷键

### 文件, 编辑和缓冲区

| 快捷键 | 模式 | 功能 |
| --- | --- | --- |
| `Ctrl+s` | Normal/Insert | 保存文件 |
| `Ctrl+q` | Normal/Insert | 保存并退出 |
| `Alt+Shift+q` | Normal | 强制退出 |
| `Alt+q` | Normal | 关闭当前缓冲区 |
| `Alt+i` / `Alt+o` | Normal | 下一个/上一个缓冲区 |
| `Alt+1` … `Alt+9` | Normal | 跳转到指定编号缓冲区 |
| `Space b n` | Normal | 新建缓冲区 |
| `Shift+Tab` | Normal | 打开或关闭当前折叠 |
| `Esc` | Normal | 清除搜索高亮 |
| `Space o` | Normal | 切换英文拼写检查 |
| `gc` | Normal/Visual | 行注释 |
| `gb` | Normal/Visual | 块注释 |
| `J` / `K` | Visual | 下移/上移选中行 |
| `<` / `>` | Visual | 减少/增加缩进并保持选择 |

### 文件树, 搜索和跳转


| 快捷键 | 模式 | 功能 |
| --- | --- | --- |
| `Ctrl+n` | Normal | 切换左侧文件树 |
| `Space n f` | Normal | 在文件树中定位当前文件 |
| `Space n r` | Normal | 刷新文件树 |
| `Space f f` | Normal | 查找文件 |
| `Space f p` | Normal | 搜索文本 |
| `Space f s` | Visual | 搜索选中文本 |
| `Space f g` | Normal | Git 对象搜索集合 |
| `Space f r` | Normal | 恢复上次 Telescope 搜索 |
| `Space w` | Normal/Visual | 跳转到单词 |
| `Space j` / `Space k` | Normal/Visual | 跳转到行 |
| `Space c` | Normal/Visual | 跳转到单个字符 |
| `Space C` | Normal/Visual | 跳转到两个字符 |

默认搜索后端是 Telescope.要使用 fzf, 请安装 `fzf` 并在 `lua/user/settings.lua` 设置: 

```lua
settings["search_backend"] = "fzf"
```

### 窗口和标签页

| 快捷键 | 功能 |
| --- | --- |
| `Ctrl+h/j/k/l` | 切换到左/下/上/右窗口 |
| `Alt+h/j/k/l` | 调整窗口大小 |
| `Space W h/j/k/l` | 向对应方向移动窗口 |
| `tn` | 新建标签页 |
| `tk` / `tj` | 下一个/上一个标签页 |
| `to` | 只保留当前标签页 |

### 终端

| 快捷键 | 模式 | 功能 |
| --- | --- | --- |
| `Ctrl+\` | Normal/Insert/Terminal | 水平终端 |
| `Alt+\` | Normal/Insert/Terminal | 垂直终端 |
| `F5` | Normal/Insert/Terminal | 垂直终端 |
| `Alt+d` | Normal/Insert/Terminal | 浮动终端 |
| `Esc Esc` | Terminal | 返回普通模式 |

### LSP 和格式化

以下快捷键只在 LSP 已附加的缓冲区中生效: 

| 快捷键 | 功能 |
| --- | --- |
| `K` | 显示悬停文档 |
| `gd` | 预览定义 |
| `gD` | 跳转到定义 |
| `gh` | 查找引用 |
| `gm` | 查找实现 |
| `gr` | 文件范围重命名 |
| `gR` | 项目范围重命名 |
| `ga` | Code Action |
| `gs` | 签名帮助 |
| `g[` / `g]` | 上一个/下一个诊断 |
| `go` | 切换符号大纲 |
| `Space l i` | LSP 信息 |
| `Space l r` | 重启 LSP |
| `Space l d` | 当前文件诊断列表 |
| `Space l w` | 工作区诊断列表 |
| `Space l v` | 切换诊断虚拟行 |
| `Space l h` | 切换 Inlay Hint |
| `Alt+f` | 切换保存时格式化 |
| `Alt+Shift+f` | 手动格式化当前缓冲区 |

当前默认关闭保存时格式化.需要自动格式化时, 将 `format_on_save` 改为 `true`, 或按 `Alt+f` 临时切换

### 补全

| 快捷键 | 功能 |
| --- | --- |
| `Ctrl+n` / `Ctrl+p` | 下一个/上一个候选项 |
| `Tab` / `Shift+Tab` | 下一个/上一个候选项或跳转 snippet |
| `Enter` | 接受候选项 |
| `Ctrl+d` / `Ctrl+f` | 向上/向下滚动补全文档 |
| `Ctrl+w` | 取消补全 |

### Git

| 快捷键 | 功能 |
| --- | --- |
| `Space g g` | 打开或关闭 Lazygit |
| `Space g G` | 打开 Fugitive |
| `gps` / `gpl` | Git push / pull |
| `]g` / `[g` | 下一个/上一个 hunk |
| `Space g s` | 暂存或取消暂存 hunk |
| `Space g r` | 重置 hunk |
| `Space g p` | 预览 hunk |
| `Space g b` | 显示当前行 blame |
| `Space g d` / `Space g D` | 打开/关闭 Diffview |

### 调试

| 快捷键 | 功能 |
| --- | --- |
| `F6` | 启动或继续 |
| `F7` | 停止 |
| `F8` | 切换断点 |
| `F9` | Step Into |
| `F10` | Step Out |
| `F11` | Step Over |
| `Space d b` | 条件断点 |
| `Space d c` | 运行到光标 |
| `Space d l` | 重复上次调试 |
| `Space d o` | 打开 DAP REPL |
| `Space d C` | 关闭调试 UI |

### 多光标

| 快捷键 | 功能 |
| --- | --- |
| `Space m j` / `Space m k` | 向下/向上添加光标 |
| `Space m n` / `Space m N` | 添加下一个/上一个匹配项 |
| `Space m s` / `Space m S` | 跳过下一个/上一个匹配项 |
| `Space m m` | 添加光标 |
| `Space m d` | 删除当前光标 |
| `Space m e` | 启用多光标编辑 |
| `Space m q` | 清除全部光标 |

### Markdown, Typst 和代码运行

| 快捷键/命令 | 功能 |
| --- | --- |
| `F1` | 切换 Markdown 内联渲染 |
| `F12` | 切换 Markdown 浏览器预览 |
| `Space r` | 运行当前文件 |
| `Space r` (Visual) | 运行选中代码 |
| `:TypstPreview` | 启动 Typst 预览 |
| `:TypstPreviewStop` | 停止 Typst 预览 |

## 4. 插件和工具管理

| 快捷键/命令 | 功能 |
| --- | --- |
| `Space p h` / `:Lazy` | 打开插件管理器 |
| `Space p s` / `:Lazy sync` | 同步插件 |
| `Space p u` / `:Lazy update` | 更新插件 |
| `Space p r` / `:Lazy restore` | 按 lockfile 恢复插件 |
| `Space p c` / `:Lazy check` | 检查可用更新 |
| `:Mason` | 管理 LSP, formatter, linter 和 DAP 工具 |
| `:checkhealth` | 检查 Neovim, provider 和插件环境 |

更新建议: 

1. 提交或备份 `lua/user` 和 `lazy-lock.json`
2. 执行 `:Lazy update`
3. 重启 Neovim
4. 执行 `:checkhealth` 并验证常用语言环境
5. 出现回归时执行 `:Lazy restore`

## 5. 自定义配置

不要直接修改 `lua/core` 或 `lua/modules` 中的上游默认配置.个人设置放在 `lua/user`: 

| 路径 | 用途 |
| --- | --- |
| `lua/user/settings.lua` | 功能开关, 主题, 依赖列表, AI, 搜索等全局设置 |
| `lua/user/options.lua` | 覆盖 Neovim option |
| `lua/user/event.lua` | 自定义 autocmd |
| `lua/user/keymap/*.lua` | 自定义或替换快捷键 |
| `lua/user/plugins/*.lua` | 添加, 覆盖或禁用插件 |
| `lua/user/configs/**` | 用户插件配置函数 |
| `lua/user/snips` | 用户 snippets |

### 添加设置

先在 `lua/core/settings.lua` 查找可用项, 再在 `lua/user/settings.lua` 覆盖: 

```lua
settings["transparent_background"] = true
settings["search_backend"] = "fzf"
settings["diagnostics_level"] = "WARN"
```

### 禁用插件

```lua
settings["disabled_plugins"] = {
	"owner/plugin-name",
}
```

### 添加插件

在对应的 `lua/user/plugins/*.lua` 中返回插件表: 

```lua
local custom = {}

custom["owner/plugin-name"] = {
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("plugin-name").setup({})
	end,
}

return custom
```

修改 Lua 配置后可用以下命令检查语法和启动: 

```sh
nvim --clean --headless -c "lua for _, f in ipairs(vim.fn.glob('lua/**/*.lua', false, true)) do assert(loadfile(f), f) end" -c qa
nvim --headless -c qa
```

## 6. 语言支持

默认 bootstrap 列表包括: 

- LSP: Bash, C/C++, Go, HTML, JSON, Lua, Python (ruff, pyrefly) 
- Formatter/Linter: clang-format, gofumpt, goimports, prettier, shfmt, stylua, vint
- DAP: codelldb, delve, debugpy
- Treesitter: Bash, C/C++, CSS, Go, HTML, JavaScript/TypeScript, JSON, LaTeX, Lua, Markdown, Python, Rust, Vue, YAML 等

查看和安装工具: 

```vim
:Mason
:MasonInstall lua-language-server
:MasonInstall jdtls
:TSUpdate
```

Java 文件由用户层的 `nvim-jdtls` 配置启动.请从包含 `.git`, `mvnw` 或 `gradlew` 的项目中打开 Java 文件, 以便正确识别项目根目录

## 7. NixOS/Home Manager

`flake.nix` 暴露 `homeManagerModules.default`.示例: 

先在 flake inputs 中加入: 

```nix
inputs.nvimdots.url = "github:ayamir/nvimdots";
```

再在 Home Manager module 中加入: 

```nix
{ inputs, ... }:
{
  imports = [ inputs.nvimdots.homeManagerModules.default ];

  programs.neovim.nvimdots = {
    enable = true;
    setBuildEnv = true;
    withBuildTools = true;
    mergeLazyLock = true;
  };
}
```

`bindLazyLock` 与 `mergeLazyLock` 不能同时启用: 

- `bindLazyLock=true`: lockfile 只读, 环境最稳定, 但不能直接由 Lazy 更新
- `mergeLazyLock=true`: 合并上游和本地 lockfile, 允许保留本地插件变化

## 8. 故障排查

### 插件下载失败

```vim
:Lazy log
:Lazy sync
```

若错误包含 `git@github.com` 或 SSH 权限问题, 将 `use_ssh` 改为 `false` 后重启并重新同步

### Treesitter 报错

```sh
npm install --global tree-sitter-cli
```

然后执行: 

```vim
:TSUpdate
:checkhealth nvim-treesitter
```

### Python provider 报错

```sh
python3 -m pip install --user pynvim
```

确认 `python3` 与安装 `pynvim` 的解释器一致, 然后执行 `:checkhealth vim.provider`

### LSP 没有启动

1. 执行 `:LspInfo` 查看当前 buffer
2. 执行 `:Mason` 确认 server 已安装
3. 从项目根目录重新打开 Neovim
4. 执行 `:LspRestart`
5. 查看 `:messages` 和 LSP 日志

### Typst 预览首次启动失败

确保 Neovim 数据目录可写并允许插件下载 `tinymist`, `websocat`.也可以自行安装二进制, 并在 `lua/user/configs/tool/typst-preview.lua` 的 `dependencies_bin` 中填写绝对路径

### 图片不显示

当前配置要求: 

- ImageMagick 的 `magick` 命令可执行
- 终端支持 Kitty graphics protocol
- 非 headless 环境; 
- tmux/SSH 场景下终端能力能正确传递

不满足 Kitty 协议时, 需要在 `lua/user/configs/tool/image.lua` 中更换 `backend`

### 查看完整诊断

```vim
:checkhealth
:messages
:Lazy debug
```

命令行启动日志: 

```sh
nvim -V1nvim-startup.log
```
