#!/bin/bash

# ==============================================================================
# GitHub Project & Issues Generator: Full-Time Hustler SEO Audit
# ==============================================================================
# This script uses the GitHub CLI (`gh`) to automatically generate a Project V2
# board, custom fields, and Issues based on the fthustler.wordpress.com SEO
# Action Plan.
#
# Requirements:
# 1. GitHub CLI installed (`brew install gh` or https://cli.github.com/)
# 2. Authenticated with `gh auth login`
# 3. Required Scopes: `gh auth refresh -s project` (if project commands fail)
#
# Usage: ./setup-github-project.sh
# ==============================================================================

set -e

# --- Configuration ---
REPO_OWNER=$(gh repo view --json owner -q ".owner.login")
REPO_NAME=$(gh repo view --json name -q ".name")
PROJECT_TITLE="Full-Time Hustler SEO Action Plan"

echo "============================================================"
echo "🚀 Creating GitHub Project & Issues for $REPO_OWNER/$REPO_NAME"
echo "============================================================"

# --- 1. Create the GitHub Project ---
echo "Creating Project V2..."
PROJECT_ID=$(gh project create --owner "$REPO_OWNER" --title "$PROJECT_TITLE" --format json -q '.id')
PROJECT_URL=$(gh project view "$PROJECT_ID" --owner "$REPO_OWNER" --format json -q '.url')
echo "✅ Project created: $PROJECT_URL"

# --- 2. Create Custom Fields ---
echo "Creating Custom Fields..."

# Priority (Single Select)
PRIORITY_FIELD_ID=$(gh project field-create "$PROJECT_ID" --owner "$REPO_OWNER" --name "Priority" --data-type SINGLE_SELECT --single-select-options "Critical,High,Medium,Low" --format json -q '.id')
echo "✅ Created Priority field"

# Category (Single Select)
CATEGORY_FIELD_ID=$(gh project field-create "$PROJECT_ID" --owner "$REPO_OWNER" --name "Category" --data-type SINGLE_SELECT --single-select-options "Content Quality,On-Page,Technical,Images,Schema,GEO,Performance" --format json -q '.id')
echo "✅ Created Category field"

# Effort (Single Select)
EFFORT_FIELD_ID=$(gh project field-create "$PROJECT_ID" --owner "$REPO_OWNER" --name "Effort" --data-type SINGLE_SELECT --single-select-options "Low,Medium,High" --format json -q '.id')
echo "✅ Created Effort field"

# Impact (Text)
IMPACT_FIELD_ID=$(gh project field-create "$PROJECT_ID" --owner "$REPO_OWNER" --name "Impact" --data-type TEXT --format json -q '.id')
echo "✅ Created Impact field"

# --- Helper Function: Create Issue & Add to Project ---
create_issue() {
  local title="$1"
  local body="$2"
  local priority="$3"
  local category="$4"
  local effort="$5"
  local impact="$6"

  echo "Creating Issue: $title..."

  # Create the issue
  ISSUE_URL=$(gh issue create --title "$title" --body "$body" --repo "$REPO_OWNER/$REPO_NAME")

  # Extract Issue Node ID (needed for Project V2 API)
  ISSUE_ID=$(gh issue view "$ISSUE_URL" --json id -q '.id')

  # Add Issue to Project
  ITEM_ID=$(gh project item-add "$PROJECT_ID" --owner "$REPO_OWNER" --url "$ISSUE_URL" --format json -q '.id')

  # Set Custom Fields
  # Status is automatically handled by GitHub Projects default 'Status' field

  # Priority
  gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$PRIORITY_FIELD_ID" --single-select-option "$priority" > /dev/null

  # Category
  gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$CATEGORY_FIELD_ID" --single-select-option "$category" > /dev/null

  # Effort
  gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$EFFORT_FIELD_ID" --single-select-option "$effort" > /dev/null

  # Impact
  gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$IMPACT_FIELD_ID" --text "$impact" > /dev/null

  echo "  ✅ Added to Project with custom fields."
}

# --- 3. Create Issues ---
echo "============================================================"
echo "Creating Issues from ACTION-PLAN.md..."
echo "============================================================"

# CRITICAL
create_issue "C1. Add FTC Affiliate Disclosure to Every Post" \
  "Every page on the site contains affiliate placements with zero disclosure language. This is an FTC Endorsement Guides violation and a Google link spam risk.\n\n**Action:**\n1. Add this block at the very top of every post body: *\"Disclosure: This post contains affiliate links. Full-Time Hustler may earn a commission if you click through and make a purchase, at no extra cost to you.\"*\n2. Fix the grammatical error in the standard author bio." \
  "Critical" "Content Quality" "Low" "Trust / Legal"

create_issue "C2. Add rel=\"nofollow sponsored\" to All Affiliate Links" \
  "All affiliate/commercial links are missing required rel attributes.\n\n**Action:**\n- Edit each external affiliate link.\n- Mark as sponsored or manually add \`rel=\"nofollow sponsored\"\`.\n- Priority links: \`cs4000.me\`, \`distilledfunding.com\`, \`bit.ly\`, \`aiwithkyle.com\`.\n- Replace \`bit.ly\` links with direct destination URLs where possible." \
  "Critical" "On-Page" "Medium" "Technical (Link Spam Penalty Risk)"

# HIGH
create_issue "H1. Add Alt Text to All Content Images" \
  "Homepage and post images have \`alt=\"\"\`. Google Image Search cannot index any of these images.\n\n**Action:**\n1. Go to Media Library and add descriptive Alt Text.\n2. Edit alt text inline in each post's block editor.\n3. Start with the most-trafficked posts." \
  "High" "Images" "Medium" "SEO (Image Search) + Accessibility"

create_issue "H2. Write Custom Meta Descriptions for All Posts" \
  "The homepage meta description is too short, and posts auto-generate 360+ char excerpts.\n\n**Action:**\n1. Edit each post → SEO section → write a custom description of 140–155 characters." \
  "High" "On-Page" "Medium" "CTR (Click-Through Rate)"

create_issue "H3. Shorten Title Tags to Under 60 Characters" \
  "Post titles exceed 60 characters and are truncated in Google.\n\n**Action:**\n- Set a separate \"SEO Title\" dropping the brand suffix on interior posts, or abbreviate to \" – FTH\"." \
  "High" "On-Page" "Low" "SERP Appearance / CTR"

create_issue "H4. Fix the 404 Unicode Slug in Sitemap" \
  "One URL in the sitemap uses mathematical Unicode characters as the slug and returns a 404.\n\n**Action:**\n1. Identify the post (%f0%9d%99%8f).\n2. Republish with clean ASCII slug or delete.\n3. Regenerate sitemap." \
  "High" "Technical" "Low" "Crawl Health"

create_issue "H5. Fix Google Search Console Sitemap Submission" \
  "/sitemap_index.xml returns a 404.\n\n**Action:**\n1. Open GSC.\n2. Remove submission for \`/sitemap_index.xml\`.\n3. Add: \`sitemap.xml\` and \`news-sitemap.xml\`." \
  "High" "Technical" "Low" "Indexation"

create_issue "H6. Update OG Image to Minimum 1200×630px" \
  "The homepage Open Graph image is 200×200px.\n\n**Action:**\n1. Create 1200×630px branded image.\n2. Upload to Site Identity.\n3. Add \`og:image:alt\`.\n4. Add Twitter Card meta tags." \
  "High" "Technical" "Low" "Social Share Appearance"

create_issue "H7. Build a Proper Author / About Page" \
  "Zero on-page author credentialing exists.\n\n**Action:**\n1. Create \"About Jason Feimster\" page with specific credentials, outcomes, and links.\n2. Link from every post's byline." \
  "High" "Content Quality" "Medium" "E-E-A-T"

create_issue "H8. Expand Thin Content Posts" \
  "4 of 6 audited posts fall below the 1,500-word minimum.\n\n**Action:**\nExpand \"Vibe Coding\", \"Boring Apps\", \"90-Day Plan\", and \"EmpireValuation\" to hit target word counts with structured data." \
  "High" "Content Quality" "High" "Rankings / Content Quality"

# MEDIUM
create_issue "M1. Add Structured Data (Schema JSON-LD) to All Posts" \
  "The site has zero meaningful structured data.\n\n**Action:**\nAdd WebSite JSON-LD to homepage and BlogPosting JSON-LD to all posts." \
  "Medium" "Schema" "High" "Rich Results / AI Citations"

create_issue "M2. Add FAQ Sections to Every Post" \
  "FAQ sections are the fastest path to AI Overview snippets.\n\n**Action:**\nAdd 3–5 Q&A blocks (50-120 words) at the end of each article." \
  "Medium" "GEO" "Medium" "AI Overviews / Perplexity Citations"

create_issue "M3. Create llms.txt" \
  "The llms.txt standard allows AI systems to understand your site.\n\n**Action:**\nCreate a page/file at \`fthustler.wordpress.com/llms.txt\` based on the provided template." \
  "Medium" "GEO" "Low" "AI Citation Readiness"

create_issue "M4. Build Contextual Internal Links Between Posts" \
  "Zero contextual body links connect posts to each other.\n\n**Action:**\nAdd 3–5 in-body links to related content per post with descriptive anchor text." \
  "Medium" "On-Page" "Medium" "Topical Authority / Crawl Depth"

create_issue "M5. Fix Stale Sitemap lastmod Dates" \
  "187 URLs carry 2022-02-04 lastmod dates.\n\n**Action:**\n1. Regenerate sitemap.\n2. Make trivial edits to force an updated modified timestamp on important posts." \
  "Medium" "Technical" "Low" "Crawl Frequency"

create_issue "M6. Add H2 Structure to Vibe Coding Post" \
  "The Vibe Coding post has no H2/H3 structure.\n\n**Action:**\nBreak content into 5–7 named sections with H2 headings." \
  "Medium" "On-Page" "Low" "Heading Hierarchy / Rankings"

create_issue "M7. Add Sources/Citations to All Named Claims" \
  "Zero posts hyperlink to source material.\n\n**Action:**\nAdd external hyperlinked citations to all named claims and statistics." \
  "Medium" "Content Quality" "Medium" "E-E-A-T / AI Citability"

create_issue "M8. Expand Homepage with Editorial Content Block" \
  "Homepage body is ~310 words.\n\n**Action:**\nAdd a 300–400 word editorial block above the post feed explaining the blog's purpose, author, and key resources." \
  "Medium" "Content Quality" "Low" "E-E-A-T / Bounce Rate"

# LOW
create_issue "L1. Migrate to Custom Domain" \
  "Accrue domain authority to the brand entity.\n\n**Action:**\nMap the custom domain \`fthustler.com\` via WordPress.com." \
  "Low" "Technical" "High" "Brand Authority / AI Citation"

create_issue "L2. Add fetchpriority=\"high\" to LCP Images" \
  "LCP element lacks fetchpriority=\"high\".\n\n**Action:**\nEdit the image block HTML and add \`fetchpriority=\"high\"\` to the img tag." \
  "Low" "Performance" "Medium" "Core Web Vitals (LCP)"

create_issue "L3. Replace YouTube Embeds with Facades" \
  "Raw YouTube iframes load ~500KB of JS.\n\n**Action:**\nReplace with static thumbnail + \"play\" button facade." \
  "Low" "Performance" "Medium" "INP / Page Load Speed"

create_issue "L4. Add preconnect for Font Origins" \
  "Improve font load latency.\n\n**Action:**\nAdd preconnect link tags for \`fonts-api.wp.com\` and \`fonts.wp.com\`." \
  "Low" "Performance" "Low" "LCP (font load latency)"

create_issue "L5. Build Wikipedia Entity Presence" \
  "Wikipedia presence correlates with AI citations.\n\n**Action:**\nGet mentioned in 3+ independent notable publications to build notability basis." \
  "Low" "GEO" "High" "AI Citation Authority"

create_issue "L6. Remove Tag Archive Links from Primary Navigation" \
  "Main navigation exposes 50+ thin tag archive links.\n\n**Action:**\nRemove lower-value tags and replace with links to high-value evergreen posts." \
  "Low" "Technical" "Low" "Crawl Budget / Thin Content"

create_issue "L7. Pursue External Brand Mentions" \
  "Reddit and niche newsletters correlate with AI citation rates.\n\n**Action:**\nShare content and participate in relevant communities." \
  "Low" "GEO" "Medium" "Authoritativeness / AI Citation"

echo "============================================================"
echo "🎉 Setup Complete!"
echo "Project URL: $PROJECT_URL"
echo ""
echo "Next Steps (Manual Config):"
echo "1. Go to the Project URL."
echo "2. Create a 'Board' view grouped by 'Status'."
echo "3. Create a 'List' view grouped by 'Priority'."
echo "4. In Project Workflows (top right corner > Workflows), enable 'Item added to Project -> Set Status to Todo'."
echo "5. Enable Insights to track velocity and priority completion."
echo "============================================================"
