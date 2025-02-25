carthage update
cp -r Carthage/Build/iOS/Mixpanel.framework .

mkdir sharpie_output
cd sharpie_output

sharpie bind -n MixpanelLib -sdk iphoneos ../Mixpanel.framework/Headers/MixpanelType.h ../Mixpanel.framework/Headers/MixpanelPeople.h ../Mixpanel.framework/Headers/MixpanelGroup.h ../Mixpanel.framework/Headers/Mixpanel.h ../Mixpanel.framework/Headers/MPTweakStore.h -scope ../Mixpanel.framework/Headers -c -F .
#sharpie bind -framework Mixpanel.framework -sdk iphoneos

cd ..
cp sharpie_output/ApiDefinitions.cs ApiDefinition.cs

rm -rf sharpie_output