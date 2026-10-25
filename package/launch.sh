#!/bin/sh
cd "$(dirname "$0")"
export HOME="$PWD"
export LD_LIBRARY_PATH="$PWD/lib:/customer/lib:/config/lib:$LD_LIBRARY_PATH"
exec ./ioquake3 +set fs_basepath "$PWD" +set fs_homepath "$PWD"
