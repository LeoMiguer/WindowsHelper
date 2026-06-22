@echo off
setlocal EnableDelayedExpansion

set fim=2


set f1="CaminhoDoArquivo"
set f2="CaminhoDoArquivo"
set f3=
set f4=
set f5=
set f6=
set f7=
set f8=
set f9=
set f10=
set f11=
set f12=
set f13=
set f14=
set f15=
set f16=
set f17=
set f18=
set f19=
set f20=
set f21=
set f22=
set f23=
set f24=
set f25=
set f26=
set f27=
set f28=
set f29=
set f30=
set f31=
set f32=
set f33=
set f34=
set f35=
set f36=
set f37=
set f38=
set f39=
set f40=
set f41=
set f42=
set f43=
set f44=
set f45=
set f46=
set f47=
set f48=
set f49=
set f50=
set f51=
set f52=
set f53=
set f54=
set f55=
set f56=
set f57=
set f58=
set f59=
set f60=


for /L %%i in (1,1,%fim%) do (
netsh advfirewall firewall add rule name="Bloquear Entrada" dir=in action=block program=!f%%i! enable=yes
echo Entrada!
netsh advfirewall firewall add rule name="Bloquear Saida" dir=out action=block program=!f%%i! enable=yes
echo Saida!
)

pause