#!/bin/bash

SDK="MacOSX10.9.sdk"

[ -d ${SDK} ] && rm -rf ${SDK}
rsync -a /Volumes/Xcode/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/${SDK} .

find ${SDK} -name '.DS_Store' | xargs rm

rm -rf ${SDK}/usr/share/man

find ${SDK} -type f | sort | while read f; do gsha1sum "$f"; done >${SDK}.shasums
mv ${SDK}.shasums ${SDK}/

find ${SDK} \
  | grep -v 'usr/share/man' \
  | sort \
  | gtar --no-recursion --mode='u+rw,go+r-w,a+X' --owner=0 --group=0 -c -T - \
  | gzip -9n >./${SDK}.tar.gz

gsha1sum ${SDK}.tar.gz
