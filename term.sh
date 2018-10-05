#!/bin/bash
CommandLines=$(cat bannerCommands | wc -l)
BannerNumber=$(((RANDOM%$CommandLines)+1))
command=$(sed $BannerNumber'!d' bannerCommands)
if [ $BannerNumber -lt 6 ];then
	textFile=bigText
elif [ $BannerNumber -gt 5 ];then
	textFile=smallText
fi
colorLines=$(cat textCol | wc -l)
colorNumber=$(((RANDOM%$colorLines)+1))
color=$(sed $colorNumber'!d' textCol)
WelcomeLines=$(cat $textFile | wc -l)
WelcomeNumber=$(((RANDOM%$WelcomeLines)+1))
text=$(sed $WelcomeNumber'!d' $textFile)
echo -e $color
$command $text
