#!/usr/bin/env python3
"""CI guard: live config is 3 cities x 6 roles, all pages, no sampling."""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import scrape_builtin_requests as s  # noqa: E402

assert sorted(s.BUILTIN_CITIES) == ["berlin", "london", "newyork"], s.BUILTIN_CITIES
assert sorted(s.ROLES) == sorted([
    "Software Engineer", "Backend", "Frontend", "Full Stack", "Software Developer", "Engineering Manager",
]), s.ROLES
src = (Path(__file__).resolve().parent / "run_monthly.py").read_text()
assert '"--sample-per-city", type=int, default=0' in src
assert '"--pages-per-role", type=int, default=0' in src
html = '<a href="?page=2">2</a><a href="?page=3">3</a>'
assert s.extract_max_page(html) == 3
print("config ok")
