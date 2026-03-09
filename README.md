# AWS Jam Records

This repository contains an integrated AWS Jam study manual plus the original source materials used to build it.

## Structure

- `AWS Jam 学习与复盘手册.tex`: main LaTeX source
- `AWS Jam 学习与复盘手册.pdf`: compiled handbook
- `build_manual.ps1`: build script for the handbook
- `sources/tex/`: original source `.tex` files
- `sources/pdf/`: original reference `.pdf` files
- `build/`: ignored intermediate build artifacts

## Build

```powershell
powershell -ExecutionPolicy Bypass -File .\build_manual.ps1
```
