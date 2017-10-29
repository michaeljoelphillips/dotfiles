#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.commandL2optionL 1
/bin/echo -n .
$cli set repeat.initial_wait 416
/bin/echo -n .
$cli set repeat.wait 33
/bin/echo -n .
$cli set remap.optionL2commandL 1
/bin/echo -n .
/bin/echo
