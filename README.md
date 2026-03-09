# AWS Jam Records

This repository is organized for multiple AWS Jam records over time.

Each session lives in its own folder under `records/`, so future entries such as `KFC05`, `KFC06`, and later rounds can be added without reshaping the repository again.

## Layout

- `records/`
  - `KFC04/`
    - `AWS Jam 学习与复盘手册.tex`
    - `AWS Jam 学习与复盘手册.pdf`
    - `build_manual.ps1`
    - `sources/tex/`
    - `sources/pdf/`
    - `build/` (ignored)

## Current sessions

- `KFC04`: fourth AWS Jam record, including the integrated handbook and the original source materials.

## Build

```powershell
cd .\records\KFC04
powershell -ExecutionPolicy Bypass -File .\build_manual.ps1
```
