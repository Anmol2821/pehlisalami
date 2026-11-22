# Pehli Salami

A free practice platform for Indian defence aspirants: NDA, CDS, AFCAT, CGCAT, INET and the SSB.

- **Written practice:** subject-wise and chapter-wise sets with instant answers and explanations, plus timed full mock papers with negative marking. Maths, numerical, reasoning and physics numericals are generated from templates with computed answers; GK, science, English and defence questions come from a curated bank.
- **SSB practice:** OIR, PPDT, TAT, WAT, SRT, Self Description, GD, GPE, lecturette and a PIQ-based interview, at board timings.
- **Briefing Room:** daily current affairs (defence, borders, geopolitics, AI, national) and evergreen GD and lecturette topics, filterable by day, week and month.

## Layout

| Path | What it is |
| --- | --- |
| `site/artifact.html` | Source of the live Claude artifact (no document skeleton; the artifact host adds it). |
| `site/index.html` | The same page wrapped as a standalone HTML document for ordinary hosting. |
| `site/bank.json` | Curated question bank loaded by the page. |
| `content/question-bank/build_bank.py` | Source of the curated bank. Run it from that folder to validate and rebuild `site/bank.json`. |
| `content/articles/` | Briefing Room articles (one JSON document each). |
| `content/current-affairs-questions/` | Current-affairs MCQs (one JSON document each). |

The live prototype reads articles and current-affairs questions from the artifact's database, which a daily scheduled task updates. The JSON files here are the seed copies.

### Article format

```json
{"date":"YYYY-MM-DD","kind":"current|static","cat":"defence|borders|geopolitics|ai|national|gd|lecturette",
 "title":"","summary":"","body":["paragraph", "## Subheading", "- bullet\n- bullet"],
 "pros":[],"cons":[],"interview":[],"sources":[{"t":"Outlet","u":"https://..."}]}
```

### Current-affairs question format

```json
{"date":"YYYY-MM-DD","q":"","o":["A","B","C","D"],"a":0,"e":"explanation"}
```

## Roadmap (Hostinger launch)

- OTP login (phone or email) and one active device per account
- Server-side database for users, attempts and the growing question bank
- Daily content pipeline committing to this repository and deploying
- Payments through Razorpay (needs a merchant account with KYC in the owner's name) when paid offerings launch

Not affiliated with UPSC, the Indian Armed Forces or the Indian Coast Guard.
