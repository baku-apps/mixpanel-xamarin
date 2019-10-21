#xbuild /p:Configuration="Release" /t:Build Mixpanel.sln
msbuild Mixpanel.csproj -property:Configuration=Release

mv bin/Release/Mixpanel.dll Mixpanel.dll
