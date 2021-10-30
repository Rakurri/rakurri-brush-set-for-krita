#!/bin/bash

SHARE=~/.local/share/krita/

function recolect_trash (){
find patterns/. -type f -printf "${SHARE}patterns/%P\n"
find brush\ tips/. -type f -printf "${SHARE}brushes/%P\n"
find V2.0\ alpha\ brush\ presets/. -type f -printf "${SHARE}paintoppresets/%P\n"
find V2.0\ experimental\ WIP\ brush\ presets/. -type f -printf "${SHARE}paintoppresets/%P\n"
}

TOREMOVE=$(recolect_trash);

while read -r line
do
    #echo "$line"
    rm "$line"
done <<< ${TOREMOVE}
