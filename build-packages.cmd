@echo off

REM Workaround for NuGet P2P reference bug.
dotnet restore Xenko.Extensions.sln
REM dotnet restore Xenko.Extensions.sln

REM does not work yet under dotnet :(
REM dotnet pack -c Release Xenko.ImGui\Xenko.ImGui.csproj
msbuild -t:pack -p:Configuration=Release Xenko.ImGui\Xenko.ImGui.csproj