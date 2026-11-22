# Script de instalacao de plugins para o Antigravity
param (
    [string]$PluginName = "",
    [switch]$All = $false,
    [switch]$InstallSkillsOnly = $false
)

$targetPluginsDir = Join-Path $HOME ".gemini\config\plugins"
$targetSkillsDir = Join-Path $HOME ".gemini\config\skills"
$currentDir = $PSScriptRoot

if (-not (Test-Path $targetPluginsDir)) {
    New-Item -ItemType Directory -Force -Path $targetPluginsDir | Out-Null
}
if (-not (Test-Path $targetSkillsDir)) {
    New-Item -ItemType Directory -Force -Path $targetSkillsDir | Out-Null
}

$pluginsSourceDir = Join-Path $currentDir "plugins"

if (-not (Test-Path $pluginsSourceDir)) {
    Write-Error "Diretório de plugins não encontrado: $pluginsSourceDir"
    exit 1
}

function Install-SinglePlugin($name) {
    $src = Join-Path $pluginsSourceDir $name
    if (-not (Test-Path $src)) {
        Write-Warning "Plugin não encontrado: $name"
        return
    }
    
    if ($InstallSkillsOnly) {
        $skillsPath = Join-Path $src "skills"
        if (Test-Path $skillsPath) {
            Get-ChildItem -Directory $skillsPath | ForEach-Object {
                $destSkill = Join-Path $targetSkillsDir $_.Name
                Copy-Item -Path $_.FullName -Destination $destSkill -Recurse -Force
                Write-Host "  [+] Skill instalada: $($_.Name)" -ForegroundColor Green
            }
        } else {
            Write-Host "  [-] Nenhuma skill encontrada em $name" -ForegroundColor Yellow
        }
    } else {
        $dest = Join-Path $targetPluginsDir $name
        Copy-Item -Path $src -Destination $dest -Recurse -Force
        Write-Host "[✓] Plugin instalado com sucesso: $name em $dest" -ForegroundColor Green
    }
}

if ($All) {
    Write-Host "=== Instalando todos os plugins adaptados para o Antigravity ===" -ForegroundColor Cyan
    Get-ChildItem -Directory $pluginsSourceDir | ForEach-Object {
        Install-SinglePlugin $_.Name
    }
    Write-Host "`nTodos os plugins foram processados com sucesso!" -ForegroundColor Cyan
} elseif ($PluginName) {
    Install-SinglePlugin $PluginName
} else {
    Write-Host "Uso:" -ForegroundColor Yellow
    Write-Host "  .\install-plugin.ps1 -PluginName <nome-do-plugin>"
    Write-Host "  .\install-plugin.ps1 -All"
    Write-Host "  .\install-plugin.ps1 -All -InstallSkillsOnly"
    Write-Host "`nPlugins disponíveis:"
    Get-ChildItem -Directory $pluginsSourceDir | Select-Object -ExpandProperty Name | ForEach-Object { Write-Host " - $_" }
}
