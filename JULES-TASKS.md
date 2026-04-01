# Jules Execution Checklist: Full-Time Hustler SEO Action Plan

This document contains a sequential checklist of ready-to-use prompts. You can copy each prompt one by one and paste it to Jules to execute the tasks outlined in the `ACTION-PLAN.md`.

The tasks are ordered by priority (Critical, High, Medium, Low) to ensure the most impactful changes are handled first.

## CRITICAL — Fix Immediately (Legal Risk + Highest Trust Impact)

- [ ] **C1. Add FTC Affiliate Disclosure to Every Post**
  ```text
  @jules Please execute task C1 from the ACTION-PLAN.md: Add the FTC Affiliate Disclosure to the top of every post body, before the first paragraph. Also, fix the grammatical error in the standard author bio ("On a mission is to help" -> "On a mission to help").
  ```

- [ ] **C2. Add `rel="nofollow sponsored"` to All Affiliate Links**
  ```text
  @jules Please execute task C2 from the ACTION-PLAN.md: Add `rel="nofollow sponsored"` to all affiliate and commercial links in the posts (e.g., cs4000.me, distilledfunding.com, bit.ly, aiwithkyle.com). Where possible, replace bit.ly links with the direct destination URL.
  ```

## HIGH — Fix Within 1 Week

- [ ] **H1. Add Alt Text to All Content Images**
  ```text
  @jules Please execute task H1 from the ACTION-PLAN.md: Add descriptive Alt Text to all images in the Media Library and update the inline image blocks in the posts to include this alt text. Start with the most-trafficked posts.
  ```

- [ ] **H2. Write Custom Meta Descriptions for All Posts**
  ```text
  @jules Please execute task H2 from the ACTION-PLAN.md: Write custom meta descriptions for all posts and the homepage as outlined in the action plan (around 140-155 characters).
  ```

- [ ] **H3. Shorten Title Tags to Under 60 Characters**
  ```text
  @jules Please execute task H3 from the ACTION-PLAN.md: Shorten all post title tags to under 60 characters by dropping or abbreviating the brand suffix. Provide me with a list of the updated titles when finished.
  ```

- [ ] **H4. Fix the 404 Unicode Slug in Sitemap**
  ```text
  @jules Please execute task H4 from the ACTION-PLAN.md: Identify the post with the 404 Unicode slug (%f0%9d%99%8f), clean its ASCII slug or permanently delete it if necessary, and then regenerate the sitemap.
  ```

- [ ] **H5. Fix Google Search Console Sitemap Submission**
  ```text
  @jules Please execute task H5 from the ACTION-PLAN.md: Provide instructions on how I can update the Google Search Console sitemap submission (removing `/sitemap_index.xml` and adding `/sitemap.xml` and `/news-sitemap.xml`), or perform it if you have access to the necessary configuration.
  ```

- [ ] **H6. Update OG Image to Minimum 1200×630px**
  ```text
  @jules Please execute task H6 from the ACTION-PLAN.md: Update the Open Graph image to a minimum of 1200x630px. Add a non-empty `og:image:alt` tag and ensure Twitter Card meta tags are added to the homepage.
  ```

- [ ] **H7. Build a Proper Author / About Page**
  ```text
  @jules Please execute task H7 from the ACTION-PLAN.md: Build a proper "About Jason Feimster" page with credentials, years in entrepreneurship, specific outcomes, LinkedIn link, and media mentions. Link this page from every post's byline and ensure the bio grammatical error is fixed.
  ```

- [ ] **H8. Expand Thin Content Posts**
  ```text
  @jules Please execute task H8 from the ACTION-PLAN.md: Expand the thin content posts ("Vibe Coding Is Here", "Boring Apps, Real Money", "90-Day Bootstrapped Hustle Plan", "EmpireValuation") to reach the target word counts and add the specific sections outlined in the action plan. We can do this one post at a time if you prefer.
  ```

## MEDIUM — Fix Within 30 Days

- [ ] **M1. Add Structured Data (Schema JSON-LD) to All Posts**
  ```text
  @jules Please execute task M1 from the ACTION-PLAN.md: Add the WebSite structured data (Schema JSON-LD) to the homepage and the BlogPosting structured data to every blog post.
  ```

- [ ] **M2. Add FAQ Sections to Every Post**
  ```text
  @jules Please execute task M2 from the ACTION-PLAN.md: Add FAQ sections (3-5 Q&As) to the end of every post matching exact search queries, with direct 50-120 word answers.
  ```

- [ ] **M3. Create `llms.txt`**
  ```text
  @jules Please execute task M3 from the ACTION-PLAN.md: Create the `llms.txt` file at the root URL using the content specified in the action plan.
  ```

- [ ] **M4. Build Contextual Internal Links Between Posts**
  ```text
  @jules Please execute task M4 from the ACTION-PLAN.md: Edit each post to add 3-5 in-body contextual internal links to related content using descriptive anchor text. Follow the priority link clusters mentioned in the action plan.
  ```

- [ ] **M5. Fix Stale Sitemap `lastmod` Dates**
  ```text
  @jules Please execute task M5 from the ACTION-PLAN.md: Help me fix the stale 2022-02-04 lastmod dates in the sitemap by making trivial edits to important posts published after February 2022 to force an updated modified timestamp.
  ```

- [ ] **M6. Add H2 Structure to Vibe Coding Post**
  ```text
  @jules Please execute task M6 from the ACTION-PLAN.md: Edit the "Vibe Coding Is Here" post to break the content into 5-7 named sections with H2 headings as suggested in the action plan.
  ```

- [ ] **M7. Add Sources/Citations to All Named Claims**
  ```text
  @jules Please execute task M7 from the ACTION-PLAN.md: Add hyperlinked external citations to all named claims and statistics in the posts (e.g., Karpathy quote, Greg Eisenberg's playbook, mobile app revenues, multiples).
  ```

- [ ] **M8. Expand Homepage with Editorial Content Block**
  ```text
  @jules Please execute task M8 from the ACTION-PLAN.md: Expand the homepage by adding a 300-400 word editorial content block above the post feed, covering who Jason Feimster is, what the blog covers, why the reader should trust it, and relevant links.
  ```

## LOW — Backlog (Polish / Long-Term)

- [ ] **L1. Migrate to Custom Domain**
  ```text
  @jules Please guide me through task L1 from the ACTION-PLAN.md: Migrating the site from `fthustler.wordpress.com` to the custom domain `fthustler.com`.
  ```

- [ ] **L2. Add `fetchpriority="high"` to LCP Images**
  ```text
  @jules Please execute task L2 from the ACTION-PLAN.md: Add `fetchpriority="high"` to the LCP images (the first featured post thumbnail on every page) by editing the image block's HTML directly where possible.
  ```

- [ ] **L3. Replace YouTube Embeds with Facades**
  ```text
  @jules Please execute task L3 from the ACTION-PLAN.md: Replace raw YouTube iframes with static thumbnails and a "play" button facade to improve page load speed.
  ```

- [ ] **L4. Add `preconnect` for Font Origins**
  ```text
  @jules Please execute task L4 from the ACTION-PLAN.md: Add the `preconnect` link tags for `fonts-api.wp.com` and `fonts.wp.com` to the theme header if the plan permits.
  ```

- [ ] **L5. Build Wikipedia Entity Presence**
  ```text
  @jules Please outline a strategy and help me draft outreach messages for task L5 from the ACTION-PLAN.md: Building a Wikipedia entity presence by getting mentioned in 3+ independent, notable publications.
  ```

- [ ] **L6. Remove Tag Archive Links from Primary Navigation**
  ```text
  @jules Please execute task L6 from the ACTION-PLAN.md: Remove thin tag archive links (e.g., /tag/ai-tools/) from the primary navigation and replace them with links to high-value evergreen posts or pillar pages.
  ```

- [ ] **L7. Pursue External Brand Mentions**
  ```text
  @jules Please execute task L7 from the ACTION-PLAN.md: Draft sharing posts and strategies for Reddit communities and niche newsletters to pursue external brand mentions.
  ```
