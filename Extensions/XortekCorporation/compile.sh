#!/bin/bash

set -x
set -e

if [[ -z "${BASE}" ]]; then
	if uname -s | grep --quiet MINGW64 ; then
		BASE=$(cygpath -w $(dirname $0))
		WINE=
	else
		BASE=$(dirname $0)
		WINE=wine
	fi
fi

${WINE} ./TransCompiler.exe /input:${BASE}/SiegeLordLibrary.xml /output:Extensions/SiegeLordLib.tdb
${WINE} ./TransCompiler.exe /input:${BASE}/SiegeLordXortekCorporationExt.xml /output:Extensions/XortekCorporation.tdb /entities:Extensions/SiegeLordLib.tdb
${WINE} ./TransCompiler.exe /input:${BASE}/SiegeLordGarnetPlayerShipExt.xml /output:Extensions/GarnetPlayership.tdb /entities:Extensions/SiegeLordLib.tdb
${WINE} ./TransCompiler.exe /input:${BASE}/SiegeLordSilverfishPlayerShipExt.xml /output:Extensions/SilverfishPlayership.tdb /entities:Extensions/SiegeLordLib.tdb
