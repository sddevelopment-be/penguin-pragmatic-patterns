import remarkPreset from 'remark-preset-lint-consistent'
import remarkFrontmatter from 'remark-frontmatter'
import remarkGfm from 'remark-gfm'

export default {
  plugins: [
    remarkPreset,
    [remarkFrontmatter, ['toml', 'yaml']],
    remarkGfm
  ]
}
