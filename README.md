# AWS Jam Records

This repository is organized for multiple AWS Jam records over time.

Each session lives under `records/`, so the repository root only needs to keep git metadata and shared documentation.

## Layout

- `records/`
  - `KFC04/`
    - `AWS Jam 学习与复盘手册.tex`
    - `AWS Jam 学习与复盘手册.pdf`
    - `build_manual.ps1`
    - `sources/tex/`
    - `sources/pdf/`
    - `build/` (ignored)
  - `KFC05/`
    - `README.md`
    - `challenges/`
      - `<nn-challenge-slug>/`
        - `IMG/`
        - `TEX/`
        - `PDF/`

## Current sessions

- `KFC04`: fourth AWS Jam record, including the integrated handbook and the original source materials.
- `KFC05`: challenge screenshots grouped under `records/KFC05/challenges/`, with numbered slug directories and placeholder `TEX/` / `PDF/` folders for later additions.

## Notes

- Challenge directories use a stable `nn-slug` format for ordering and Windows-safe paths.

## Build

```powershell
cd .\records\KFC04
powershell -ExecutionPolicy Bypass -File .\build_manual.ps1
```
