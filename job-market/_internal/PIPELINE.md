# Collection Pipeline (planned)

Nothing in this pipeline runs yet. Every script is a placeholder, and the sources below are candidates until the data plan is approved.

## Overview

```
config/titles.yaml, geographies.yaml, signals.yaml
  │
  ├─ collectors/theirstack_counts.py     posting counts per month, geography, signal
  │   └─ data/counts.csv
  │
  ├─ collectors/theirstack_backfill.py   historical sample with full descriptions
  ├─ collectors/hn_whoishiring.py        Hacker News monthly threads
  ├─ collectors/builtin_listings.py      current Built In postings
  ├─ collectors/ats_boards.py            current Greenhouse, Lever, Ashby postings
  ├─ collectors/wayback_builtin.py       optional archived Built In pages
  ├─ collectors/indeed_hiring_lab.py     aggregate index CSVs
  │
  ├─ normalize.py                        every source -> one posting schema
  ├─ clean_dedup.py                      company + title + city within a month
  │   └─ data_raw/{YYYY-MM}/{source}_{id}.yaml
  │
  └─ extract_llm.py
      └─ data_structured/{YYYY-MM}/{source}_{id}.yaml
```

## Conventions

- Folders are keyed by posting month, so historical and current postings share one time axis.
- Collectors that call a paid API take `--max-credits` and default to a dry run.
- API keys come from environment variables and are never committed.

## Directory Structure

```
job-market/
├── _internal/
│   ├── collectors/        # one script per source
│   ├── config/            # titles, geographies, signals
│   ├── analysis/          # trend and skills analysis
│   ├── data/              # pipeline CSVs
│   ├── normalize.py
│   ├── clean_dedup.py
│   ├── extract_llm.py
│   └── PIPELINE.md
├── data_raw/{YYYY-MM}/
└── data_structured/{YYYY-MM}/
```
