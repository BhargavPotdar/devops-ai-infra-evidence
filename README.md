# DevOps → AI Infrastructure Evidence

Evidence repository for my 48-week DevOps → AI-First Infrastructure Engineer roadmap.

## Current Phase

Phase 0 — Revalidate

## Current Week

Week 1 — Foundation Audit and Setup

## Progress

- [x] Day 1 — Foundation audit
- [x] Day 2 — Rebuild script #1
- [x] Day 3 — Error handling + test
- [x] Day 4 — Finish rebuild + README
- [ ] Day 5 — Skills audit + AWS setup
- [ ] Day 6 — Rebuild script #2
- [ ] Day 7 — Rebuild script #3 + weekly review


## Week 1 — Day 4: System Health Check

### What it does
Checks disk and memory health and writes the results to a log file.

### Why I rebuilt it
Rebuilt the script from memory to validate retention of Bash/Linux scripting fundamentals.

### Before
- Basic disk and memory checks
- Limited error handling
- No basic test

### After
- Rebuilt from scratch
- Added disk-check error handling
- Added exit-status handling
- Added a basic success/failure test

### Result
The script passes the success-path test with exit status 0.
The failure path was also tested and correctly returned exit status 1.
