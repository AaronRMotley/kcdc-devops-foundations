# Instructor Materials — DO NOT PUBLISH AS-IS

This folder contains complete solutions for every lab. Two options before making the repo public:

**Option A (recommended): keep solutions on checkpoint branches only.**
Run the script below to create the four checkpoint branches, then delete this folder from `main`:

```bash
./create-checkpoints.sh          # creates checkpoint/lab-1..4-complete branches
git rm -r .instructor
git commit -m "chore: move solutions to checkpoint branches"
git push origin main
```

**Option B: leave it.** Some instructors prefer solutions visible; attendees who copy-paste only
cheat themselves. Your call.

## What the checkpoint branches contain
| Branch | Cumulative state |
|---|---|
| `checkpoint/lab-1-complete` | main + attendee entry pattern in CONTRIBUTORS.md |
| `checkpoint/lab-2-complete` | + `.github/workflows/ci.yml` |
| `checkpoint/lab-3-complete` | + `infra/*.tf` + `.github/workflows/infra.yml` |
| `checkpoint/lab-4-complete` | + `.github/workflows/deploy.yml` |

## Remaining pre-publish checklist
- [ ] Replace `@YOUR-GITHUB-HANDLE` in `.github/CODEOWNERS`
- [ ] Replace `<INSTRUCTOR-ORG>` / `<SHORT-URL>` placeholders in `labs/README.md` and `pre-requisites/README.md`
- [ ] Set up a short URL (e.g. via your link shortener) pointing at this repo
- [ ] Run the full dress rehearsal from `labs/README.md` on a clean subscription
