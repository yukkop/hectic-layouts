#!/bin/sh

if [ "$LAYOUT_GROUP" = '' ]; then
	export LAYOUT_GROUP=de-ru
fi

if [ "$LAYOUT_GROUP" = 'us-ru' ]; then
	export LAYOUT_GROUP=de-ru
	setxkbmap -layout 'de,ru' -option 'grp_led:scroll'
elif [ "$LAYOUT_GROUP" = 'de-ru' ]; then
	export LAYOUT_GROUP=us-ru
	setxkbmap -layout 'us,ru' -option 'grp_led:scroll'
fi
