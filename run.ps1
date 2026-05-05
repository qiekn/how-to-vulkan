# $env:CC = "clang"
# $env:CXX = "clang++"
# $env:CMAKE_GENERATOR = "Ninja"

$BuildDir = "build"
$ExePath = ".\build\bin\HowToVulkan.exe"

if (-not (Test-Path "$BuildDir\CMakeCache.txt")) {
    cmake -B $BuildDir
    if ($LASTEXITCODE -ne 0) {
        exit $LASTEXITCODE
    }
}

cmake --build $BuildDir
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

& $ExePath
exit $LASTEXITCODE
