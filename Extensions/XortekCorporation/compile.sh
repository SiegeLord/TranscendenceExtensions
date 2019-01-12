#!/bin/bash

set -x
set -e

wine TransCompiler.exe /input:/home/siege/Documents/Transcendence/Extensions/XortekCorporation/SiegeLordLibrary.xml /output:Extensions/SiegeLordLib.tdb
wine TransCompiler.exe /input:/home/siege/Documents/Transcendence/Extensions/XortekCorporation/SiegeLordXortekCorporationExt.xml /output:Extensions/XortekCorporation.tdb /entities:Extensions/SiegeLordLib.tdb
wine TransCompiler.exe /input:/home/siege/Documents/Transcendence/Extensions/XortekCorporation/SiegeLordGarnetPlayerShipExt.xml /output:Extensions/GarnetPlayership.tdb /entities:Extensions/SiegeLordLib.tdb
