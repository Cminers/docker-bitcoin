#!/bin/bash
set -e

testAlias+=(
	[bitcoind:focal]='bitcoind'
)

imageTests+=(
	[bitcoind]='
		rpcpassword
	'
)
