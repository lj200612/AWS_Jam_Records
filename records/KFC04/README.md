# KFC04

This folder contains the fourth AWS Jam record.

## Contents

- `AWS Jam 学习与复盘手册.tex`: integrated LaTeX handbook
- `AWS Jam 学习与复盘手册.pdf`: compiled handbook
- `build_manual.ps1`: build script
- `sources/tex/`: original source `.tex` files used for consolidation
- `sources/pdf/`: original reference `.pdf` files inserted into the appendix
- `build/`: ignored intermediate build artifacts

## Build

```powershell
powershell -ExecutionPolicy Bypass -File .\build_manual.ps1
```
