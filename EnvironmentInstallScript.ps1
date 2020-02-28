if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

Write-Host "MODO ADM ";
Write-Host " ";
Write-Host " ";
Write-Host "... INICIANDO CONFIGURACAO ..." -foregroundcolor "magenta";



$chocoAtivo = choco -v;

if($chocoAtivo){
	Write-Host " ";
	Write-Host "Chocolatey Ativo";
	Write-Host " ";
}
else{
	Write-Host " ";
	Write-Host "Chocolatey Inativo";
	Write-Host " ";
	Write-Host "INICIANDO INSTALACAO CHOCOLATEY" -foregroundcolor "magenta";

	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

	Write-Host " ";

}

cinst -y vlc git googlechrome firefox notepadplusplus.install lightshot server-jre10 python3 googlechrome vscode nodejs-lts winrar figma lunacy vscode robo3t spotify insomnia-rest-api-client sublimetext3

Write-Host "PACOTES INSTALADOS: "
Write-Host " ";
choco list -l



Write-Host " ";
Write-Host " ";
Write-Host " ";
Write-Host "           " " By GabrielBriks - @GitHub" "                         Grato em ajudar...";


Read-host
