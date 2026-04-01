#!/bin/bash

# Ensure gh cli is installed and authenticated
if ! command -v gh &> /dev/null
then
    echo "GitHub CLI (gh) could not be found. Please install it and run 'gh auth login' before executing this script."
    exit 1
fi

echo "Creating GitHub issues for Thin Content Expansion tasks..."

# Issue H8a: Vibe Coding
gh issue create \
  --title "[H8a] Expand Thin Content: Vibe Coding Is Here" \
  --body "Expand the 'Vibe Coding Is Here' post based on the action items in \`content/thin-content-expansion-list.md\`.

**Action Items:**
- [ ] Add practical vibe coding tool comparison (Cursor, Replit, Lovable).
- [ ] Create a step-by-step starter tutorial.
- [ ] Link Karpathy's original quote to the source.
- [ ] Break content into 5–7 named sections with H2 headings.
- [ ] Add 3–5 contextual in-body links to related content.
- [ ] Add an FAQ section with 3–5 structured Q&A at the end.
- [ ] Include at least 2–3 external linked citations.
- [ ] Add affiliate disclosure block.
- [ ] Verify all image alt texts.
- [ ] Confirm meta description length and title tags.

**Target Word Count:** 1,800+ words" \
  --label "content,enhancement,high-priority"

# Issue H8b: Boring Apps
gh issue create \
  --title "[H8b] Expand Thin Content: Boring Apps, Real Money" \
  --body "Expand the 'Boring Apps, Real Money' post based on the action items in \`content/thin-content-expansion-list.md\`.

**Action Items:**
- [ ] Add a worked case study of a real app rebuilt with this strategy.
- [ ] Add real App Store revenue data with sources (Sensor Tower, data.ai) linked properly.
- [ ] Link Greg Eisenberg's app playbook to his newsletter or X thread.
- [ ] Link the '\$10M mobile apps' claim to a reliable source.
- [ ] Add 3–5 contextual in-body links to related content.
- [ ] Add an FAQ section with 3–5 structured Q&A at the end.
- [ ] Include at least 2–3 external linked citations.
- [ ] Add affiliate disclosure block.
- [ ] Verify all image alt texts.
- [ ] Confirm meta description length and title tags.

**Target Word Count:** 1,800+ words" \
  --label "content,enhancement,high-priority"

# Issue H8c: 90-Day Plan
gh issue create \
  --title "[H8c] Expand Thin Content: 90-Day Bootstrapped Hustle Plan" \
  --body "Expand the '90-Day Bootstrapped Hustle Plan' post based on the action items in \`content/thin-content-expansion-list.md\`.

**Action Items:**
- [ ] Replace the generic phase framework with actual numbers from the author's own experience. Provide personal specifics as suggested by the title 'my plan.'
- [ ] Add 3–5 contextual in-body links to related content.
- [ ] Add an FAQ section with 3–5 structured Q&A at the end.
- [ ] Include at least 2–3 external linked citations.
- [ ] Add affiliate disclosure block.
- [ ] Verify all image alt texts.
- [ ] Confirm meta description length and title tags.

**Target Word Count:** 1,500+ words" \
  --label "content,enhancement,high-priority"

# Issue H8d: EmpireValuation
gh issue create \
  --title "[H8d] Expand Thin Content: EmpireValuation" \
  --body "Expand the 'EmpireValuation' post based on the action items in \`content/thin-content-expansion-list.md\`.

**Action Items:**
- [ ] Add a source citation for the 30–45x multiple claim (e.g., Flippa, Empire Flippers published data).
- [ ] Expand the tool walkthrough with screenshots.
- [ ] Add 3–5 contextual in-body links to related content.
- [ ] Add an FAQ section with 3–5 structured Q&A at the end.
- [ ] Include at least 2–3 external linked citations.
- [ ] Add affiliate disclosure block.
- [ ] Verify all image alt texts.
- [ ] Confirm meta description length and title tags.

**Target Word Count:** 1,500+ words" \
  --label "content,enhancement,high-priority"

echo "Issues created successfully."
