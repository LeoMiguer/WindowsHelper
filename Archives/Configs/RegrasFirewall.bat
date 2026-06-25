@echo off
setlocal EnableDelayedExpansion

set fim=78

set f1="C:\Program Files\Adobe\Adobe Photoshop 2026\convert.exe"
set f2="C:\Program Files\Adobe\Adobe Photoshop 2026\CRWindowsClientService.exe"
set f3="C:\Program Files\Adobe\Adobe Photoshop 2026\flitetranscoder.exe"
set f4="C:\Program Files\Adobe\Adobe Photoshop 2026\node.exe"
set f5="C:\Program Files\Adobe\Adobe Photoshop 2026\Photoshop.exe"
set f6="C:\Program Files\Adobe\Adobe Photoshop 2026\PhotoshopPrefsManager.exe"
set f7="C:\Program Files\Adobe\Adobe Photoshop 2026\pngquant.exe"
set f8="C:\Program Files\Adobe\Adobe Photoshop 2026\sniffer.exe"
set f9="C:\Program Files\Adobe\Adobe Photoshop 2026\XPUInfoIPC.exe"
set f10="C:\Program Files\Adobe\Adobe Photoshop 2026\Required\Droplet Template.exe"
set f11="C:\Program Files\Adobe\Adobe Photoshop 2026\Required\CEP\CEPHtmlEngine\CEPHtmlEngine.exe"
set f12="C:\Program Files\Adobe\Adobe Photoshop 2026\Required\DynamicLinkMediaServer\amecommand.exe"
set f13="C:\Program Files\Adobe\Adobe Photoshop 2026\Required\DynamicLinkMediaServer\dynamiclinkmanager.exe"
set f14="C:\Program Files\Adobe\Adobe Photoshop 2026\Required\DynamicLinkMediaServer\dynamiclinkmediaserver.exe"
set f15="C:\Program Files\Adobe\Adobe Photoshop 2026\Required\DynamicLinkMediaServer\ImporterREDServer.exe"

set f16="C:\Program Files\Adobe\Adobe After Effects 2024\Adobe Analysis Server.exe"
set f17="C:\Program Files\Adobe\Adobe After Effects 2024\AdobeCrashReport.exe"
set f18="C:\Program Files\Adobe\Adobe After Effects 2024\Advanced3DModelConverter.exe"
set f19="C:\Program Files\Adobe\Adobe After Effects 2024\aerender.exe"
set f20="C:\Program Files\Adobe\Adobe After Effects 2024\AfterFX.exe"
set f21="C:\Program Files\Adobe\Adobe After Effects 2024\crashpad_handler.exe"
set f22="C:\Program Files\Adobe\Adobe After Effects 2024\CRLogTransport.exe"
set f23="C:\Program Files\Adobe\Adobe After Effects 2024\CRWindowsClientService.exe"
set f24="C:\Program Files\Adobe\Adobe After Effects 2024\dynamiclinkmanager.exe"
set f25="C:\Program Files\Adobe\Adobe After Effects 2024\GPUSniffer.exe"
set f26="C:\Program Files\Adobe\Adobe After Effects 2024\ImporterREDServer.exe"
set f27="C:\Program Files\Adobe\Adobe After Effects 2024\LogTransport2.exe"
set f28="C:\Program Files\Adobe\Adobe After Effects 2024\TeamProjectsLocalHub.exe"
set f29="C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\CEPHtmlEngine\CEPHtmlEngine.exe"
set f30="C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\com.adobe.frameio\bin\FrameioHelper.exe"
set f31="C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\Plug-ins\Effects\mochaAE\MochaAE.bundle\Contents\Win64\mochaui\bin\crashpad_handler.exe"
set f32="C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\Plug-ins\Effects\mochaAE\MochaAE.bundle\Contents\Win64\mochaui\bin\mocha4ae_adobe.exe"
set f33="C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\Plug-ins\Format\ProImport\Supporting Files\Automatic Duck.exe"

set f34="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\Adobe Crash Processor.exe"
set f35="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\AIMonitor.exe"
set f36="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\AIRobin.exe"
set f37="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\AISafeModeLauncher.exe"
set f38="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\AISniffer.exe"
set f39="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\CRLogTransport.exe"
set f40="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\CRWindowsClientService.exe"
set f41="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\Illustrator.exe"
set f42="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\LogTransport2.exe"
set f43="C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\CEPHtmlEngine\CEPHtmlEngine.exe"

set f44="C:\Program Files\Adobe\Adobe Lightroom Classic\Adobe Crash Processor.exe"
set f45="C:\Program Files\Adobe\Adobe Lightroom Classic\Adobe Lightroom CEF Helper.exe"
set f46="C:\Program Files\Adobe\Adobe Lightroom Classic\CRWindowsClientService.exe"
set f47="C:\Program Files\Adobe\Adobe Lightroom Classic\HD_Deleter.exe"
set f48="C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe"
set f49="C:\Program Files\Adobe\Adobe Lightroom Classic\Helpers\DynamicLinkMediaServer\amecommand.exe"
set f50="C:\Program Files\Adobe\Adobe Lightroom Classic\Helpers\DynamicLinkMediaServer\dynamiclinkmanager.exe"
set f51="C:\Program Files\Adobe\Adobe Lightroom Classic\Helpers\DynamicLinkMediaServer\dynamiclinkmediaserver.exe"
set f52="C:\Program Files\Adobe\Adobe Lightroom Classic\Helpers\DynamicLinkMediaServer\ImporterREDServer.exe"
set f53="C:\Program Files\Adobe\Adobe Lightroom Classic\tether_nikon.lrplugin\Adobe Crash Processor.exe"
set f54="C:\Program Files\Adobe\Adobe Lightroom Classic\tether_nikon.lrplugin\CRLogTransport.exe"
set f55="C:\Program Files\Adobe\Adobe Lightroom Classic\tether_nikon.lrplugin\CRWindowsClientService.exe"
set f56="C:\Program Files\Adobe\Adobe Lightroom Classic\tether_nikon.lrplugin\tether_nikon.exe"

set f57="C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe"
set f58="C:\Program Files\Adobe\Adobe Premiere Pro 2024\AdobeCrashReport.exe"
set f59="C:\Program Files\Adobe\Adobe Premiere Pro 2024\crashpad_handler.exe"
set f60="C:\Program Files\Adobe\Adobe Premiere Pro 2024\CRLogTransport.exe"
set f61="C:\Program Files\Adobe\Adobe Premiere Pro 2024\CRWindowsClientService.exe"
set f62="C:\Program Files\Adobe\Adobe Premiere Pro 2024\dvaapprelauncher.exe"
set f63="C:\Program Files\Adobe\Adobe Premiere Pro 2024\dvaaudiofilterscan.exe"
set f64="C:\Program Files\Adobe\Adobe Premiere Pro 2024\dynamiclinkmanager.exe"
set f65="C:\Program Files\Adobe\Adobe Premiere Pro 2024\GPUSniffer.exe"
set f66="C:\Program Files\Adobe\Adobe Premiere Pro 2024\ImporterREDServer.exe"
set f67="C:\Program Files\Adobe\Adobe Premiere Pro 2024\LogTransport2.exe"
set f68="C:\Program Files\Adobe\Adobe Premiere Pro 2024\PProHeadless.exe"
set f69="C:\Program Files\Adobe\Adobe Premiere Pro 2024\TeamProjectsLocalHub.exe"
set f70="C:\Program Files\Adobe\Adobe Premiere Pro 2024\CEP\extensions\com.adobe.frameio\bin\FrameioHelper.exe"
set f71="C:\Program Files\Adobe\Adobe Premiere Pro 2024\CEPHtmlEngine\CEPHtmlEngine.exe"
set f72="C:\Program Files\Adobe\Adobe Premiere Pro 2024\PlugIns\(AfterEffectsLib)\Effects\mochaAE\MochaAE.bundle\Contents\Win64\mochaui\bin\crashpad_handler.exe"
set f73="C:\Program Files\Adobe\Adobe Premiere Pro 2024\PlugIns\(AfterEffectsLib)\Effects\mochaAE\MochaAE.bundle\Contents\Win64\mochaui\bin\mocha4ae_adobe.exe"

set f74="C:\Program Files\Adobe\Adobe Creative Cloud Experience\CCXProcess.exe"
set f75="C:\Program Files\Adobe\Adobe Creative Cloud Experience\js\node_modules\@ccx\adobe-cr\build\Release\Adobe Crash Processor.exe"
set f76="C:\Program Files\Adobe\Adobe Creative Cloud Experience\js\node_modules\@ccx\adobe-cr\build\Release\CRLogTransport.exe"
set f77="C:\Program Files\Adobe\Adobe Creative Cloud Experience\js\node_modules\@ccx\adobe-cr\build\Release\CRWindowsClientService.exe"
set f78="C:\Program Files\Adobe\Adobe Creative Cloud Experience\libs\node.exe"


for /L %%i in (1,1,%fim%) do (
echo %%i
netsh advfirewall firewall add rule name="Bloquear Entrada" dir=in action=block program=!f%%i! enable=yes
echo Regra de Entrada Aplicada!
netsh advfirewall firewall add rule name="Bloquear Saida" dir=out action=block program=!f%%i! enable=yes
echo Regra de Saída Aplicada!
cls
)

exit