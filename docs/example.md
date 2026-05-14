# Claude Typora Theme Example

> This example file is designed for theme screenshots. It includes headings, prose, math, tables, highlights, callouts, quotes, code blocks, lists, tasks, and footnotes.

## 1. Reading Flow

Claude Typora Theme is designed for long-form Markdown writing. The layout keeps paragraphs calm, tables readable, and interface controls available while preserving a Claude-inspired visual style.

You can use **bold text**, *italic text*, `inline code`, ==highlighted text==, <u>underlined text</u>, and links such as [Typora](https://typora.io) in the same paragraph. Chinese and English text can be mixed naturally: 这是一个用于截图演示的中文段落，用来检查中英混排、加粗、行距和标点显示。

> Good typography should make structure visible without making the interface feel noisy.
>
> This quote block is useful for checking indentation, contrast, and line height.

## 2. Mathematics

Inline math should sit comfortably within text, for example $E = mc^2$, $a^2 + b^2 = c^2$, and $\alpha + \beta = \gamma$.

Block math should remain centered and readable:

$$
\nabla_\theta J(\theta)
= \mathbb{E}_{x \sim p(x)}
\left[
  \nabla_\theta \log p_\theta(x) \cdot R(x)
\right]
$$

A second example with a matrix:

$$
A =
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{bmatrix}
$$

## 3. Tables

The table below is useful for checking header rules, body row separators, alignment, and mixed-language content.

| Benchmark | Qwen3-32B | gpt-oss-120b | Claude-4.6-Opus | Spread | Saturation |
| :-- | --: | --: | --: | --: | --: |
| AIME 2025 | 76.7% | 96.7% | 96.7% | 20.0 | 80.0% |
| AIME 2026 | 83.3% | 100.0% | 100.0% | 16.7 | 83.3% |
| 中文基准测试 | 91.2% | 94.8% | 98.1% | 6.9 | 92.0% |

| Feature | Light Theme | Dark Theme | Notes |
| :-- | :--: | :--: | :-- |
| Local fonts | Yes | Yes | Loaded from `claude_fonts/` |
| Source controls | Yes | Yes | Sidebar and source-view buttons remain visible |
| Table rules | Yes | Yes | Header and body separators are both styled |
| Callouts | Yes | Yes | Supports Typora/GitHub-style alerts |

## 4. Lists and Tasks

1. Install the theme files into Typora's theme directory.
2. Restart Typora.
3. Select **Claude** or **Claude Dark** from the theme menu.
4. Open this example file and capture screenshots.

- Prose should remain readable.
- Nested information should remain visually organized.
- Code, math, tables, and quotes should not feel disconnected from the page.

- [x] Light theme screenshot
- [x] Dark theme screenshot
- [ ] Submit theme gallery pull request

## 5. Code

Inline code such as `font-family`, `@font-face`, and `border-bottom` should align well with surrounding text.

```css
@font-face {
  font-family: "Noto Serif SC";
  src: url("./claude_fonts/NotoSerifSC-VariableFont_wght.ttf") format("truetype");
  font-weight: 200 900;
  font-style: normal;
}

#write table th,
#write table td {
  border-bottom: 0.5px solid var(--table-td-border);
}
```

```python
def weighted_score(scores, weights):
    total = sum(score * weights[name] for name, score in scores.items())
    return round(total / sum(weights.values()), 2)

scores = {"quality": 92, "readability": 95, "stability": 90}
weights = {"quality": 0.45, "readability": 0.35, "stability": 0.20}
print(weighted_score(scores, weights))
```
## 6. Callouts

> [!NOTE]
> This is a note callout. It is useful for neutral supporting information.

> [!TIP]
> Use callouts to highlight workflow hints, writing advice, or small reminders.

> [!IMPORTANT]
> Important callouts should stand out clearly without overwhelming nearby content.

> [!WARNING]
> Warning callouts help draw attention to risky assumptions or breaking changes.

> [!CAUTION]
> Caution callouts are useful for destructive operations or irreversible decisions.

## 7. Footnotes and Details

Footnotes should be visible without distracting from the main article flow.[^theme-note]

<details>
<summary>Expandable detail section</summary>

This section checks Typora's rendering for native HTML details blocks. It can be used for optional notes, long references, or collapsed examples.

</details>

---

[^theme-note]: This footnote is included to test footnote spacing, hover behavior, and typography.
