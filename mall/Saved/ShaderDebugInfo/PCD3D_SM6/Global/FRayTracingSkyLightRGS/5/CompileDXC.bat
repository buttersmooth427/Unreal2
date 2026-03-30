@ECHO OFF
SET DXC="C:\Program Files\Epic Games\5.6\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\5.6\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -auto-binding-space 1 -exports SkyLightRGS -enable-16bit-types -Wno-parentheses-equality -Wno-ignored-attributes -disable-lifetime-markers -T lib_6_6 -Fc RaytracingSkylightRGS.d3dasm -Fo RaytracingSkylightRGS.dxil RaytracingSkylightRGS.usf
:END
PAUSE
