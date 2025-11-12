import js from '@eslint/js'
import globals from 'globals'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import { FlatCompat } from '@eslint/eslintrc'
import { createRequire } from 'node:module'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)
const requireFromValidation = createRequire(new URL('./validation/package.json', import.meta.url))
const cypress = requireFromValidation('eslint-plugin-cypress')
const cypressRecommended = cypress.configs.recommended ?? {}

const compat = new FlatCompat({
  baseDirectory: __dirname,
  resolvePluginsRelativeTo: path.resolve(__dirname, 'validation')
})

export default [
  {
    ignores: [
      'node_modules/**/*',
      'validation/node_modules/**/*',
      'public/**/*',
      'resources/**/*',
      'validation/cypress/screenshots/**/*',
      'validation/cypress/videos/**/*'
    ]
  },
  js.configs.recommended,
  ...compat.extends('standard'),
  {
    files: ['assets/**/*.js', 'static/**/*.js', 'validation/**/*.js'],
    languageOptions: {
      ecmaVersion: 'latest',
      sourceType: 'module',
      globals: {
        ...globals.browser,
        ...globals.node
      }
    },
    rules: {
      'no-console': 'off'
    }
  },
  {
    files: ['validation/cypress/**/*.cy.js'],
    languageOptions: {
      globals: {
        ...globals.browser,
        ...globals.node,
        ...globals.cypress
      }
    },
    plugins: {
      cypress
    },
    rules: {
      ...cypressRecommended.rules
    }
  }
]
