#!/bin/bash

VERSION=$1

if [[ -n "$VERSION" ]]; then
	echo ${VERSION}
else
    echo "argument error, provide commit, branch or tag"
	exit
fi

cd /gitian-builder/

./bin/gbuild --commit stronghands=${VERSION} ../stronghands/contrib/gitian-descriptors/gitian-linux.yml
pushd build/out
zip -r stronghands-${VERSION}-linux-gitian.zip *
mv stronghands-${VERSION}-linux-gitian.zip /stronghands/
popd

./bin/gbuild --commit stronghands=${VERSION} ../stronghands/contrib/gitian-descriptors/gitian-win.yml
pushd build/out
zip -r stronghands-${VERSION}-win-gitian.zip *
mv stronghands-${VERSION}-win-gitian.zip /stronghands/
popd

./bin/gbuild --commit stronghands=${VERSION} ../stronghands/contrib/gitian-descriptors/gitian-osx.yml
pushd build/out
zip -r stronghands-${VERSION}-osx-gitian.zip *
mv stronghands-${VERSION}-osx-gitian.zip /stronghands/
popd

echo "build complete, files are in /stronghands/ directory"
