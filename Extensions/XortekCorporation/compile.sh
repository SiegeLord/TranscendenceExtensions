#!/bin/bash

set -x
set -e

wine TransCompiler.exe /input:/home/siege/Documents/Transcendence/Extensions/XortekCorporation/SiegeLordLibrary.xml /output:Extensions/sl_library.tdb
wine TransCompiler.exe /input:/home/siege/Documents/Transcendence/Extensions/XortekCorporation/SiegeLordXortekCorporationExt.xml /output:Extensions/xortek_corporation.tdb /entities:Extensions/sl_library.tdb
wine TransCompiler.exe /input:/home/siege/Documents/Transcendence/Extensions/XortekCorporation/SiegeLordGarnetPlayerShipExt.xml /output:Extensions/garnet_playership.tdb /entities:Extensions/sl_library.tdb
