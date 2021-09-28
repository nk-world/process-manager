if (!(Test-Path Variable:PSScriptRoot)) { $PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent }
$path = join-path "$psscriptroot" "..\apps\gsudo\current\gsudo.exe"
if($myinvocation.expectingInput) { $input | & $path  @args } else { & $path  @args }
