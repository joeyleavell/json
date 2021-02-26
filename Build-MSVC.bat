rmdir \S \Q Build\MSVC
rmdir \S \Q Install\MSVC
cmake -D JSON_BuildTests=OFF -D CMAKE_INSTALL_PREFIX=".\Install\MSVC" -H. -BBuild\MSVC
cmake --build .\Build\MSVC --config Release
cmake --install .\Build\MSVC --config Release

mkdir ..\Extern\Json\Include\nlohmann
copy /Y .\Install\MSVC\include\nlohmann\json.hpp ..\Extern\Json\Include\nlohmann\json.hpp
