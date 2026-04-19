#!/bin/bash
set -e

# Ensure gh cli is installed and authenticated
if ! command -v gh &> /dev/null
then
    echo "GitHub CLI (gh) could not be found. Please install it and run \"gh auth login\" before executing this script."
    exit 1
fi

REPO_OWNER="JFeimster"
REPO_NAME="SEO-Audit-FTH"

echo "============================================================"
echo "Creating GitHub Project: Thin Content Expansion List"
echo "============================================================"

# 1. Create the Project
PROJECT_CREATE_JSON=$(gh project create --owner "$REPO_OWNER" --title "Thin Content Expansion List" --format json)
PROJECT_ID=$(echo "$PROJECT_CREATE_JSON" | jq -r ".id")
PROJECT_URL=$(echo "$PROJECT_CREATE_JSON" | jq -r ".url")

if [ -z "$PROJECT_ID" ] || [ "$PROJECT_ID" == "null" ]; then
  echo "❌ Failed to create project. Please ensure your gh auth token has \"project\" scope."
  exit 1
fi

echo "✅ Created Project: $PROJECT_URL"

# 2. Add custom fields (Effort, Status is default)
echo "Setting up Project fields..."
STATUS_FIELD_ID=$(gh project field-list "$PROJECT_ID" --owner "$REPO_OWNER" --format json | jq -r ".fields[] | select(.name==\"Status\") | .id")

# Helper function to create issue and add to project
create_issue_and_add() {
  local title="$1"
  local url_to_expand="$2"
  local action_items="$3"
  local target_word_count="$4"

  echo "Creating Issue: $title..."

  local body="Expand the post based on the action items in \`content/thin-content-expansion-list.md\`.\n\n**URL to Expand:** $url_to_expand\n\n**Action Items:**\n$action_items\n\n**Target Word Count:** $target_word_count"

  # Create the issue
  ISSUE_URL=$(gh issue create --title "$title" --body "$body" --repo "$REPO_OWNER/$REPO_NAME" --label "content,enhancement,high-priority")
  echo "  ✅ Issue created: $ISSUE_URL"

  # Add Issue to Project
  ITEM_ID=$(gh project item-add "$PROJECT_ID" --owner "$REPO_OWNER" --url "$ISSUE_URL" --format json | jq -r ".id")
  echo "  ✅ Added to Project."
}

# --- 3. Create Issues ---
echo "============================================================"
echo "Creating Issues and adding to Project..."
echo "============================================================"

create_issue_and_add "[H8a] Expand Thin Content: Vibe Coding Is Here" \
  "https://fthustler.wordpress.com/2025/05/12/vibe-coding/" \
  "- [ ] Add practical vibe coding tool comparison (Cursor, Replit, Lovable).\n- [ ] Create a step-by-step starter tutorial.\n- [ ] Link Karpathy's original quote to the source.\n- [ ] Break content into 5–7 named sections with H2 headings.\n- [ ] Add 3–5 contextual in-body links to related content.\n- [ ] Add an FAQ section with 3–5 structured Q&A at the end.\n- [ ] Include at least 2–3 external linked citations.\n- [ ] Add affiliate disclosure block.\n- [ ] Verify all image alt texts.\n- [ ] Confirm meta description length and title tags." \
  "1,800+ words"

create_issue_and_add "[H8b] Expand Thin Content: Boring Apps, Real Money" \
  "https://fthustler.wordpress.com/2026/01/27/boring-apps-real-money/" \
  "- [ ] Add a worked case study of a real app rebuilt with this strategy.\n- [ ] Add real App Store revenue data with sources (Sensor Tower, data.ai) linked properly.\n- [ ] Link Greg Eisenberg's app playbook to his newsletter or X thread.\n- [ ] Link the \$10M mobile apps claim to a reliable source.\n- [ ] Add 3–5 contextual in-body links to related content.\n- [ ] Add an FAQ section with 3–5 structured Q&A at the end.\n- [ ] Include at least 2–3 external linked citations.\n- [ ] Add affiliate disclosure block.\n- [ ] Verify all image alt texts.\n- [ ] Confirm meta description length and title tags." \
  "1,800+ words"

create_issue_and_add "[H8c] Expand Thin Content: 90-Day Bootstrapped Hustle Plan" \
  "https://fthustler.wordpress.com/90-day-bootstrapped-plan/" \
  "- [ ] Replace the generic phase framework with actual numbers from the author's own experience. Provide personal specifics as suggested by the title 'my plan.'\n- [ ] Add 3–5 contextual in-body links to related content.\n- [ ] Add an FAQ section with 3–5 structured Q&A at the end.\n- [ ] Include at least 2–3 external linked citations.\n- [ ] Add affiliate disclosure block.\n- [ ] Verify all image alt texts.\n- [ ] Confirm meta description length and title tags." \
  "1,500+ words"

create_issue_and_add "[H8d] Expand Thin Content: EmpireValuation" \
  "https://fthustler.wordpress.com/empirevaluation/" \
  "- [ ] Add a source citation for the 30–45x multiple claim (e.g., Flippa, Empire Flippers published data).\n- [ ] Expand the tool walkthrough with screenshots.\n- [ ] Add 3–5 contextual in-body links to related content.\n- [ ] Add an FAQ section with 3–5 structured Q&A at the end.\n- [ ] Include at least 2–3 external linked citations.\n- [ ] Add affiliate disclosure block.\n- [ ] Verify all image alt texts.\n- [ ] Confirm meta description length and title tags." \
  "1,500+ words"

echo "============================================================"
echo "🎉 Setup Complete!"
echo "Project URL: $PROJECT_URL"
echo "============================================================"
