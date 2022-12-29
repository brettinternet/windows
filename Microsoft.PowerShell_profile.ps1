Import-Module posh-git

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# General

# Source: https://superuser.com/a/1560192
function Relaunch-Admin {
  Start-Process -Verb RunAs (Get-Process -Id $PID).Path
  exit
}
Set-Alias psadmin Relaunch-Admin

# Git

function ga {
	git add $args
}
function gaa {
	git add --all $args
}
function gs {
	git status $args
}
function gss {
	git status -s $args
}
function gc {
	git commit -v $args
}
function gc! {
	git commit -v --amend $args
}
function gwch {
	git whatchanged -p --abbrev-commit --pretty=medium $args
}
# Source: https://github.com/gluons/powershell-git-aliases
function Get-Git-CurrentBranch {
	git symbolic-ref --quiet HEAD *> $null

	if ($LASTEXITCODE -eq 0) {
		return git rev-parse --abbrev-ref HEAD
	} else {
		return
	}
}
function guc {
	$CurrentBranch = Get-Git-CurrentBranch

	git pull origin $CurrentBranch
}
function gpc {
	$CurrentBranch = Get-Git-CurrentBranch

	git push origin $CurrentBranch
}
function gunwip {
	Write-Output $(git log -n 1 | Select-String "--wip--" -Quiet).Count
	git reset HEAD~1
}
function gwip {
	git add -A
	git rm $(git ls-files --deleted) 2> $null
	git commit --no-verify -m "--wip-- [skip ci]"
}
