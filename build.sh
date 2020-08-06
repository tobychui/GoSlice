# /bin/sh
echo "Building darwin"
#GOOS=darwin GOARCH=386 go build
#mv aroz_online build/aroz_online_macOS_i386
GOOS=darwin GOARCH=amd64 go build
mv GoSlice GoSlice_macOS_amd64

echo "Building Linux"
GOOS=linux GOARCH=amd64 go build
mv GoSlice GoSlice_linux_amd64
GOOS=linux GOARCH=arm go build
mv GoSlice GoSlice_linux_arm
GOOS=linux GOARCH=arm64 go build
mv GoSlice GoSlice_linux_arm64

echo "Building windows"
GOOS=windows GOARCH=amd64 go build
mv GoSlice.exe GoSlice_windows_amd64.exe

echo "Completed"
