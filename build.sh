export DDK_PATH=/usr/local/Ascend/nnrt/latest
export NPU_HOST_LIB=/usr/local/Ascend/nnrt/latest/runtime/lib64/stub

g="$1"
locate="$2"
if [[ ${locate}"X" == "X" ]];then
    locate="."
fi
rm -rf build
mkdir -p build/intermediates/host
cd build/intermediates/host
cmake ../../../src -DCMAKE_CXX_COMPILER=${g} -DCMAKE_SKIP_RPATH=TRUE
make
cd ../../../out
mv main ${locate}/msame
