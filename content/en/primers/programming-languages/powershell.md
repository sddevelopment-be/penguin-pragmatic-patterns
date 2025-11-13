+++
title = "PowerShell Primer"
subtitle = "Task automation and configuration management through composable cmdlets"
aliases = ["powershell-primer", "programming-languages/powershell"]
author = "Stijn Dejongh"
outputs = ['html', 'rss', 'json']
date = "2025-11-13T22:00:00+00:00"
tags = ["programming", "powershell", "primer", "reference", "automation", "windows"]
summary = """
PowerShell is a task automation framework combining a command-line shell and scripting language built on .NET. 
It emphasizes object-oriented pipelines over text streams, enabling composable automation through cmdlets that 
pass structured data between commands.
"""
+++

## 1. Language Philosophy

PowerShell was designed by Microsoft to modernize Windows administration and automation. Unlike traditional Unix shells that process text streams, PowerShell treats everything as .NET objects, enabling richer composition and discoverability.

- **Object pipelines.** Commands pass structured objects (not text) down the pipeline, preserving type information and eliminating parsing fragility.
- **Verb-Noun consistency.** Cmdlets follow strict naming (`Get-Process`, `Stop-Service`) that makes the API self-documenting and discoverable.
- **Discoverability first.** Built-in `Get-Help`, `Get-Command`, and `Get-Member` cmdlets turn the shell into an interactive learning environment.
- **Cross-platform evolution.** PowerShell Core (6+) runs on Linux and macOS, treating Windows as one deployment target among many.
- **Configuration as code.** Desired State Configuration (DSC) treats infrastructure setup as declarative, idempotent scripts.

Use PowerShell for Windows administration, CI/CD automation on Microsoft stacks, and cross-platform scripting where .NET integration provides value.

**Authoritative References:**
- [Microsoft PowerShell Documentation](https://learn.microsoft.com/en-us/powershell/) — Official docs, language reference, best practices
- [PowerShell Style Guide (PoshCode)](https://poshcode.gitbook.io/powershell-practice-and-style/) — Community-driven conventions
- [PowerShell GitHub Repository](https://github.com/PowerShell/PowerShell) — Open-source project, issue tracking, RFCs

## 2. Syntax and Naming Conventions

PowerShell's grammar emphasizes readability and consistency through strict cmdlet naming and flexible parameter syntax.

| Element | Convention | Example |
|---------|-----------|---------|
| Cmdlets | `Verb-Noun` | `Get-ChildItem`, `Set-Location`, `Invoke-RestMethod` |
| Functions | `Verb-Noun` or descriptive | `Convert-JsonToObject`, `Test-Connection` |
| Variables | `$camelCase` or `$PascalCase` | `$taskList`, `$MaxRetries` |
| Parameters | `-PascalCase` | `-Path`, `-Recurse`, `-Force` |
| Modules | `PascalCase` | `Pester`, `PSScriptAnalyzer` |
| Script files | `.ps1` extension | `Deploy-Application.ps1` |

**Style enforcement:**
- Use [PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer) for linting and best practice validation
- Follow the [PowerShell Practice and Style Guide](https://poshcode.gitbook.io/powershell-practice-and-style/)
- Enable strict mode with `Set-StrictMode -Version Latest`

## 3. Version and Dependency Management

PowerShell has two major branches: Windows PowerShell (5.1, ships with Windows) and PowerShell Core (7+, cross-platform). Modern projects target PowerShell 7+ for consistency.

| Tool/Concept | Role | Notes |
|-------------|------|-------|
| PowerShell 7+ | Cross-platform runtime | Install via package manager or GitHub releases |
| PowerShellGet | Module installation from galleries | `Install-Module`, `Update-Module` |
| PSResourceGet | Modern replacement for PowerShellGet | Faster, more reliable (PowerShell 7.4+) |
| `#Requires` statements | Version and module dependencies | Place at script top: `#Requires -Version 7.0` |

Typical workflow:
```powershell
# Install PowerShell 7+ from https://github.com/PowerShell/PowerShell/releases
# Install modules from PowerShell Gallery
Install-Module -Name Pester -Scope CurrentUser
Install-Module -Name PSScriptAnalyzer -Scope CurrentUser

# Verify installation
$PSVersionTable
Get-Module -ListAvailable
```

## 4. Build and Packaging Tooling

PowerShell modules are the standard unit of distribution. Projects typically organize as modules with manifest files and optional build automation.

| Tool | Role | Notes |
|------|------|-------|
| Module Manifests (`.psd1`) | Metadata and versioning | Defines dependencies, exports, version |
| Plaster | Project scaffolding tool | Creates templates for modules and scripts |
| InvokeBuild / psake | Task automation frameworks | Like Make for PowerShell projects |
| Pester | Testing framework | Unit, integration, acceptance tests |

Reference layout:
```
MyModule/
├── MyModule.psd1              # Module manifest
├── MyModule.psm1              # Root module file
├── Public/
│   ├── Get-Something.ps1
│   └── Set-Something.ps1
├── Private/
│   └── HelperFunction.ps1
├── Tests/
│   ├── MyModule.Tests.ps1
│   └── Integration.Tests.ps1
├── build.ps1                  # Build automation
└── README.md
```

## 5. Testing Frameworks

[Pester](https://pester.dev/) is the canonical testing framework for PowerShell, supporting unit, integration, and acceptance testing with BDD-style syntax.

```powershell
# Example Pester test
Describe 'Get-Task' {
    It 'returns all tasks when no filter specified' {
        $result = Get-Task
        $result | Should -HaveCount 5
    }
    
    It 'filters by status correctly' {
        $result = Get-Task -Status Completed
        $result | Should -All { $_.Status -eq 'Completed' }
    }
}
```

Run tests:
```powershell
Invoke-Pester -Path ./Tests -Output Detailed
```

## 6. Programming Idioms

### 6.1 Object-Oriented Idioms
PowerShell supports classes (5.0+) but encourages composing functions and cmdlets over deep inheritance.

```powershell
class Task {
    [string]$Name
    [string]$Status = 'Pending'
    
    [void]Complete() {
        $this.Status = 'Completed'
    }
}

$task = [Task]@{ Name = 'Deploy' }
$task.Complete()
```

### 6.2 Functional Programming Idioms
PowerShell pipelines naturally support functional composition through `ForEach-Object`, `Where-Object`, and `Select-Object`.

```powershell
# Transform and filter in pipeline
Get-ChildItem -Path ./logs -Filter *.log |
    Where-Object { $_.LastWriteTime -gt (Get-Date).AddDays(-7) } |
    ForEach-Object { Get-Content $_.FullName } |
    Select-String -Pattern "ERROR"
```

### 6.3 Imperative Programming Idioms
Scripts often use imperative flow for orchestration and error handling.

```powershell
# Deployment orchestration
try {
    Write-Host "Starting deployment..."
    
    $config = Get-Content ./config.json | ConvertFrom-Json
    $connection = Test-Connection -ComputerName $config.Server -Quiet
    
    if (-not $connection) {
        throw "Cannot reach server"
    }
    
    Invoke-DeploymentSteps -Config $config
    Write-Host "Deployment complete"
}
catch {
    Write-Error "Deployment failed: $_"
    exit 1
}
```

## 7. Workspace Bootstrap

**Prerequisites:**
- PowerShell 7+ installed
- Git for version control
- PSScriptAnalyzer and Pester modules

**Project structure:**
```
project/
├── build.ps1                  # Build automation
├── MyModule/
│   ├── MyModule.psd1
│   ├── MyModule.psm1
│   └── Public/
├── Tests/
└── .vscode/                   # Editor integration
    └── settings.json
```

**Common Makefile equivalent (build.ps1):**
```powershell
param(
    [ValidateSet('Build', 'Test', 'Lint', 'Clean')]
    [string]$Task = 'Build'
)

switch ($Task) {
    'Lint' {
        Invoke-ScriptAnalyzer -Path ./MyModule -Recurse
    }
    'Test' {
        Invoke-Pester -Path ./Tests -Output Detailed
    }
    'Build' {
        # Module build steps
    }
    'Clean' {
        Remove-Item ./Output -Recurse -Force -ErrorAction SilentlyContinue
    }
}
```

## 8. Quickstart Setup (Cross-platform)

### Windows:
```powershell
# Install PowerShell 7+ (if not present)
winget install Microsoft.PowerShell

# Install essential modules
Install-Module -Name Pester -Scope CurrentUser -Force
Install-Module -Name PSScriptAnalyzer -Scope CurrentUser -Force
```

### Linux/macOS:
```bash
# Install PowerShell 7+ via package manager
# Ubuntu/Debian:
sudo apt-get install -y powershell

# macOS:
brew install powershell/tap/powershell

# Then install modules
pwsh -Command "Install-Module -Name Pester -Scope CurrentUser -Force"
pwsh -Command "Install-Module -Name PSScriptAnalyzer -Scope CurrentUser -Force"
```

## 9. First-Time Verification Checklist

```powershell
# Verify PowerShell version (should be 7+)
$PSVersionTable.PSVersion

# Verify modules installed
Get-Module -Name Pester, PSScriptAnalyzer -ListAvailable

# Run linter on sample script
Invoke-ScriptAnalyzer -Path ./sample.ps1

# Run sample test
Invoke-Pester -Path ./Tests/Sample.Tests.ps1

# Verify help system
Get-Help Get-Process -Full
```

## 10. Appendix

**Official Documentation:**
- [PowerShell Documentation](https://learn.microsoft.com/en-us/powershell/)
- [About Topics](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about) — Language concepts
- [PowerShell Gallery](https://www.powershellgallery.com/) — Module repository

**Learning Resources:**
- [PowerShell in a Month of Lunches](https://www.manning.com/books/learn-powershell-in-a-month-of-lunches) — Systematic introduction
- [PowerShell Practice and Style Guide](https://poshcode.gitbook.io/powershell-practice-and-style/)
- [Pester Documentation](https://pester.dev/)

**Common Pitfalls:**
- **Version confusion:** Windows ships with 5.1; modern projects need 7+
- **Execution policy blocks:** Use `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
- **Object vs. text:** Don't format output mid-pipeline; keep objects flowing
- **Error handling:** Use `-ErrorAction Stop` to make errors terminating in try/catch

**Editor Configuration:**
- [PowerShell Extension for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
- [PowerShell Tools for Visual Studio](https://github.com/adamdriscoll/poshtools)
