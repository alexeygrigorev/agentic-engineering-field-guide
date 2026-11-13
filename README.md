# Agentic Engineering Field Guide

Data-driven field guide to agentic engineering: how software engineering roles, skills, and hiring change when engineers work with AI coding agents.

This is the sibling of the [AI Engineering Field Guide](https://github.com/alexeygrigorev/ai-engineering-field-guide). That guide covers the AI engineer role. This one looks at the software engineer market as a whole and tracks how it shifted over the last year.

Status: active data collection. Monthly live snapshots of software engineering job postings are collected in `data/live/`, starting with the `2026-11` snapshot (1,341 unique jobs across 15 locations).


## The Role

- [Role overview](role/) - what agentic engineering is, skills, responsibilities, and year-over-year trends (to be written from data)


## Interview Preparation

- [Interview process](interview/) - how software engineering interviews change when AI tools are allowed or expected (to be written)


## Learning Paths

- [Learning paths](learning-paths/) - how a software engineer becomes an agentic engineer (to be written)


## Portfolio

- [Portfolio guide](portfolio/) - projects that show agentic engineering skills (to be written)


## Job Market Data

- [Live snapshots](data/live/) - monthly Built In snapshots (`data_raw/2026-11-13/` has 1,341 extracted YAML postings)
- [Job market data](job-market/) - software engineer job postings by month and geography (planned pipeline)
- [Collection pipeline](job-market/_internal/PIPELINE.md) - planned multi-source pipeline; scripts in `job-market/_internal/collectors/` are placeholders


## Live Monthly Snapshots

Monthly live snapshots use the vendored Built In scraper and HTML-to-YAML extractor in `data/live/` across 6 roles (`Software Engineer`, `Software Developer`, `Backend`, `Frontend`, `Full Stack`, `Engineering Manager`) and 15 locations, sampling up to 100 unique jobs per city-month without overlap with earlier months.

Run the monthly snapshot with one command:

```bash
cd data/live && ./run_monthly.sh
```

Or pass an explicit date:

```bash
cd data/live && ./run_monthly.sh --date 2026-11-25
```

### 2026-11 Snapshot (`2026-11-13`)

1,500 listings sampled across 15 locations, deduplicated to 1,341 unique jobs and 1,341 extracted YAML files in `data/live/data_raw/2026-11-13/`.

| City | Sampled | Unique | Extracted YAML |
|---|---:|---:|---:|
| `amsterdam` | 100 | 100 | 100 |
| `austin` | 100 | 100 | 100 |
| `berlin` | 100 | 97 | 97 |
| `boston` | 100 | 100 | 100 |
| `chicago` | 100 | 99 | 99 |
| `dublin` | 100 | 72 | 72 |
| `london` | 100 | 96 | 96 |
| `munich` | 100 | 92 | 92 |
| `newyork` | 100 | 100 | 100 |
| `paris` | 100 | 86 | 86 |
| `remote` | 100 | 69 | 69 |
| `seattle` | 100 | 97 | 97 |
| `sf_bay_area` | 100 | 97 | 97 |
| `toronto` | 100 | 92 | 92 |
| `warsaw` | 100 | 44 | 44 |
| Total | 1,500 | 1,341 | 1,341 |


## [Awesome Agentic Engineering](awesome.md)

Curated resources collected while researching this guide (empty for now).


## [Webinars](webinars/)

Webinars and workshops on agentic engineering careers (none yet).
