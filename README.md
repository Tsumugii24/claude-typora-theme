# Claude Typora Theme

> Chinese README: [README_zh-CN.md](./README_zh-CN.md)

A self-contained Claude-inspired Typora theme with bundled local fonts, light and dark variants, sidebar refinements, source-view controls, integrated window details, and table rules tuned for Typora rendering.

This project is based on the Claude Typora theme by [blaxisomu](https://github.com/blaxisomu/CLAUDE-Typora), with local modifications for font packaging, readability, sidebar controls, and table rendering.

## Features

- **Light and dark themes**: `claude.css` and `claude-dark.css`.
- **Bundled local fonts**: the theme loads fonts from `claude_fonts/` and does not require a CDN.
- **Readable sidebar root**: the file tree root uses the normal UI font instead of a decorative display font.
- **Visible Typora controls**: sidebar/source-view buttons are kept available.
- **Typora table fix**: table header and body separators are explicitly applied to Typora's editor DOM.
- **Upstream V7.5 details**: includes later upstream polish such as integrated window adaptation, sidebar behavior, callouts, menu details, and table toolbar handling.

## Preview

After installation, select **Claude** or **Claude Dark** from Typora's **Themes** menu.

## Installation

### Manual Installation

1. Download the latest release or clone this repository.
2. Open Typora.
3. Go to **Preferences -> Appearance -> Open Theme Folder**.
4. Copy these items into the Typora theme folder:
   - `claude.css`
   - `claude-dark.css`
   - `claude_fonts/`
5. Restart Typora.
6. Select **Claude** or **Claude Dark** from the **Themes** menu.

Default Typora theme folders:

| Platform | Path |
| :-- | :-- |
| Windows | `%APPDATA%\Typora\themes` |
| macOS | `~/Library/Application Support/abnerworks.Typora/themes` |
| Linux | `~/.config/Typora/themes` |

### PowerShell Installation

From a PowerShell terminal:

```powershell
irm https://raw.githubusercontent.com/Tsumugii24/claude-typora-theme/main/scripts/install.ps1 | iex
```

### Bash Installation

On macOS, Linux, Git Bash, or WSL:

```bash
curl -fsSL https://raw.githubusercontent.com/Tsumugii24/claude-typora-theme/main/scripts/install.sh | bash
```

## Included Files

```text
claude.css
claude-dark.css
claude_fonts/
docs/
scripts/
```

## Font Notes

The theme references these local font files:

- `AnthropicSansWebText.ttf`
- `AnthropicSerifWebText.ttf`
- `AnthropicMonoVariable.ttf`
- `NotoSerifSC-VariableFont_wght.ttf`

`NotoSerifSC-VariableFont_wght.ttf` is used as the CJK serif font and supports weights from 200 to 900 through a single variable font file.

See [docs/THIRD_PARTY_NOTICES.md](./docs/THIRD_PARTY_NOTICES.md) for attribution and license notes.

## Credits

- Original Claude Typora theme: [blaxisomu/CLAUDE-Typora](https://github.com/blaxisomu/CLAUDE-Typora)
- Project packaging style referenced from [shamsghi/LatexTypora](https://github.com/shamsghi/LatexTypora)
- Claude visual inspiration: [claude.ai](https://claude.ai)

## License

Theme modifications, scripts, and documentation in this repository are released under the MIT License unless otherwise noted.

Bundled fonts retain their respective licenses and ownership. See [docs/THIRD_PARTY_NOTICES.md](./docs/THIRD_PARTY_NOTICES.md).
