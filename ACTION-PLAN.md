# SEO Action Plan: fthustler.wordpress.com
        2 **Overall SEO Health Score: 44 / 100**
        3 **Priority:** Critical → High → Medium → Low
        4 **Generated:** March 28, 2026
        5
        6 ---
        7
        8 ## CRITICAL — Fix Immediately (Legal Risk + Highest Trust Impact)
        9
       10 ### C1. Add FTC Affiliate Disclosure to Every Post
       11 **Impact:** Trust / Legal | **Effort:** 30 min total | **Category:** Content Quality
       12
       13 Every page on the site contains affiliate sidebar placements and/or in-body affiliate links (David Allen Capital, ROK Financia
          l, GoKapital, chatGPT GPT referrals, bit.ly affiliate URLs) with **zero disclosure language**. This is an FTC Endorsement Guid
          es violation and a Google link spam risk.
       14
       15 **Action:**
       16 1. Add this block at the very top of every post body, before the first paragraph:
       17    > *"Disclosure: This post contains affiliate links. Full-Time Hustler may earn a commission if you click through and make a
           purchase, at no extra cost to you."*
       18 2. Fix the grammatical error in the standard author bio: "On a mission **is** to help" → "On a mission **to** help"
       19
       20 ---
       21
       22 ### C2. Add `rel="nofollow sponsored"` to All Affiliate Links
       23 **Impact:** Technical (Link Spam Penalty Risk) | **Effort:** 1–2 hrs | **Category:** On-Page
       24
       25 All affiliate/commercial links are missing required `rel` attributes. Google's link spam policies require `rel="sponsored"` or
           `rel="nofollow sponsored"` on all paid/affiliate links.
       26
       27 **Action:**
       28 - In the WordPress block editor, edit each external affiliate link.
       29 - In the Link panel, check "Mark as sponsored" (if available) or manually add `rel="nofollow sponsored"` via the HTML editor.
       30 - Priority links to fix: `cs4000.me` links (DAC enrollment with `sponsorid=` parameters), `distilledfunding.com`, all `bit.ly`
           shortened affiliate links, `aiwithkyle.com` (if affiliate).
       31 - Replace `bit.ly` links in post body with the direct destination URL where possible.
       32
       33 ---
       34
       35 ## HIGH — Fix Within 1 Week
       36
       37 ### H1. Add Alt Text to All Content Images
       38 **Impact:** SEO (Image Search) + Accessibility | **Effort:** 2–3 hrs | **Category:** Images / On-Page
       39
       40 11/17 homepage images and 6/7 post images have `alt=""`. Google Image Search cannot index any of these images. This affects fe
          atured image carousels in Google Discover and organic image search.
       41
       42 **Action:**
       43 1. Go to Media Library in WordPress admin.
       44 2. For each image: click → add descriptive Alt Text (e.g., `"Claude AI computer-use interface showing browser automation"` not
           just `"image1"`).
       45 3. Also edit alt text inline in each post's block editor by clicking the image → Alt Text field.
       46 4. Start with the most-trafficked posts.
       47
       48 ---
       49
       50 ### H2. Write Custom Meta Descriptions for All Posts
       51 **Impact:** CTR (Click-Through Rate) | **Effort:** 2 hrs | **Category:** On-Page
       52
       53 The homepage meta description is only 38 chars (the tagline). Posts 1 and 2 auto-generate 360+ char excerpts that appear trunc
          ated mid-sentence in SERPs.
       54
       55 **Action (if Jetpack SEO is available):**
       56 1. Edit each post → SEO section → write a custom description of 140–155 characters.
       57 2. **Homepage:** "Full-Time Hustler is your guide to building a side hustle into a full-time business — covering AI tools, ent
          repreneurship, finance, and real estate." (153 chars)
       58 3. **Post 1 (Claude):** "Claude can now operate your entire computer autonomously. Here's what that actually means for entrepr
          eneurs, agency owners, and solopreneurs in 2026." (149 chars)
       59 4. **Post 2 (Boring Apps):** "The best mobile app opportunity isn't building something new — it's rebuilding what's broken. He
          re's the $10M playbook for boring utility apps." (143 chars)
       60
       61 ---
       62
       63 ### H3. Shorten Title Tags to Under 60 Characters
       64 **Impact:** SERP Appearance / CTR | **Effort:** 1 hr | **Category:** On-Page
       65
       66 All 4 sampled posts exceed 60 characters and are truncated in Google with "…". The " – Full-Time Hustler" brand suffix (20 cha
          rs) is the primary cause.
       67
       68 **Action:**
       69 - Use Jetpack SEO to set a separate "SEO Title" (different from the post title).
       70 - Drop the brand suffix on interior posts, or abbreviate to " – FTH".
       71 - Example revisions:
       72   - "Claude Can Now Control Your Entire Computer" → `Claude Now Controls Your Computer — What It Means` (49 chars)
       73   - "Boring Apps, Real Money: The AI Strategy Behind $10M Mobile Apps" → `Boring Apps Make Real Money: The AI Strategy` (44 ch
          ars)
       74
       75 ---
       76
       77 ### H4. Fix the 404 Unicode Slug in Sitemap
       78 **Impact:** Crawl Health | **Effort:** 15 min | **Category:** Technical
       79
       80 One URL in the sitemap uses mathematical Unicode characters as the slug and returns a 404. Search engines wasting crawl budget
           on 404s in sitemaps is a quality signal.
       81
       82 **Action:**
       83 1. Identify the post in WordPress admin (URL contains `%f0%9d%99%8f`).
       84 2. Either republish with a clean ASCII slug, or delete the post permanently.
       85 3. Regenerate the sitemap (Jetpack Settings → Traffic → Sitemaps).
       86
       87 ---
       88
       89 ### H5. Fix Google Search Console Sitemap Submission
       90 **Impact:** Indexation | **Effort:** 10 min | **Category:** Technical
       91
       92 `/sitemap_index.xml` returns a 404. If this URL is submitted to GSC, it silently fails.
       93
       94 **Action:**
       95 1. Open Google Search Console → Sitemaps.
       96 2. Remove any submission pointing to `/sitemap_index.xml`.
       97 3. Add: `https://fthustler.wordpress.com/sitemap.xml`
       98 4. Add: `https://fthustler.wordpress.com/news-sitemap.xml`
       99
      100 ---
      101
      102 ### H6. Update OG Image to Minimum 1200×630px
      103 **Impact:** Social Share Appearance | **Effort:** 30 min | **Category:** Technical
      104
      105 The homepage Open Graph image is 200×200px. Facebook, LinkedIn, and X require 1200×630px for proper link preview display. Curr
          ently the site shows a tiny degraded thumbnail when shared socially.
      106
      107 **Action:**
      108 1. Create a 1200×630px branded image (use Canva or similar).
      109 2. WordPress.com → Appearance → Customize → Site Identity → Site Icon / Social Image.
      110 3. Also add a non-empty `og:image:alt` (descriptive text for the social image).
      111 4. Add Twitter Card meta tags to the homepage (Jetpack SEO → Social → Twitter Cards).
      112
      113 ---
      114
      115 ### H7. Build a Proper Author / About Page
      116 **Impact:** E-E-A-T | **Effort:** 2–3 hrs | **Category:** Content Quality
      117
      118 Zero on-page author credentialing exists on any post. Google's QRG rates trust lower when YMYL-adjacent content (business fina
          nce, AI tools) has no verifiable author credentials.
      119
      120 **Action:**
      121 1. Create an "About Jason Feimster" page with:
      122    - Years in entrepreneurship
      123    - Companies/ventures built (verifiable names/URLs)
      124    - Specific outcomes achieved (numbers, not vague claims)
      125    - LinkedIn profile link
      126    - Any media mentions, speaking, or third-party coverage
      127 2. Link this page from every post's byline (edit the author profile in WordPress admin → Author URL).
      128 3. Fix the bio grammatical error: "On a mission **to** help visionary entrepreneurs…"
      129
      130 ---
      131
      132 ### H8. Expand Thin Content Posts
      133 **Impact:** Rankings / Content Quality | **Effort:** 2–3 hrs each | **Category:** Content
      134
      135 4 of 6 audited posts fall below the 1,500-word minimum. Thin posts in competitive entrepreneurship/AI niches lose to longer, m
          ore comprehensive competitors.
      136
      137 **Posts to expand (priority order):**
138 *See `content/thin-content-expansion-list.md` for the full compiled checklist of action items for each post.*
139 1. **"Vibe Coding Is Here"** (~700–900 words → target 1,800+): Add practical vibe coding tool comparison (Cursor, Replit, Lovable), a step-by-step starter tutorial, and Karpathy's original quote linked to source.
140 2. **"Boring Apps, Real Money"** (~950–1,100 words → target 1,800+): Add a worked case study of a real app rebuilt with this strategy, real App Store revenue data with sources (Sensor Tower, data.ai).
141 3. **"90-Day Bootstrapped Hustle Plan"** (~850–1,000 words → target 1,500+): Replace the generic phase framework with actual numbers from the author's own experience. If the title says "my plan," the content must deliver personal specifics.
142 4. **"EmpireValuation"** (~850–1,000 words → target 1,500+): Add source citation for the 30–45x multiple claim (Flippa, Empire Flippers published data). Expand tool walkthrough with screenshots.
      142
      143 ---
      144
      145 ## MEDIUM — Fix Within 30 Days
      146
      147 ### M1. Add Structured Data (Schema JSON-LD) to All Posts
      148 **Impact:** Rich Results / AI Citations | **Effort:** 4–6 hrs | **Category:** Schema
      149
      150 The site has zero meaningful structured data. This blocks rich result eligibility and suppresses AI citation potential.
      151
      152 **Implementation (via Custom HTML block in WordPress editor):**
      153
      154 Add this to the homepage (in a Custom HTML block or via theme header):
      155 ```json
      156 {
      157   "@context": "https://schema.org",
      158   "@type": "WebSite",
      159   "name": "Full-Time Hustler",
      160   "url": "https://fthustler.wordpress.com",
      161   "description": "From Side-Hustle to Full-Time Success — covering entrepreneurship, AI tools, side hustles, and finance.",
      162   "potentialAction": {
      163     "@type": "SearchAction",
      164     "target": "https://fthustler.wordpress.com/?s={search_term_string}",
      165     "query-input": "required name=search_term_string"
      166   }
      167 }
      168 ```
      169
      170 Add to every blog post:
      171 ```json
      172 {
      173   "@context": "https://schema.org",
      174   "@type": "BlogPosting",
      175   "headline": "POST TITLE HERE",
      176   "description": "META DESCRIPTION HERE",
      177   "url": "POST URL HERE",
      178   "datePublished": "YYYY-MM-DD",
      179   "dateModified": "YYYY-MM-DD",
      180   "author": {
      181     "@type": "Person",
      182     "name": "Jason Feimster",
      183     "url": "https://fthustler.wordpress.com/author/fthustler/"
      184   },
      185   "publisher": {
      186     "@type": "Organization",
      187     "name": "Full-Time Hustler",
      188     "url": "https://fthustler.wordpress.com"
      189   },
      190   "mainEntityOfPage": {
      191     "@type": "WebPage",
      192     "@id": "POST URL HERE"
      193   }
      194 }
      195 ```
      196
      197 **Priority:** If upgrading to WordPress.com Business plan, install Rank Math — it will automate BlogPosting, BreadcrumbList, a
          nd WebSite schema across the entire site.
      198
      199 ---
      200
      201 ### M2. Add FAQ Sections to Every Post
      202 **Impact:** AI Overviews / Perplexity Citations | **Effort:** 45 min per post | **Category:** GEO
      203
      204 FAQ sections are the single fastest path to AI Overview snippet inclusion and Perplexity citation. Add 3–5 Q&A blocks at the e
          nd of each article.
      205
      206 **Format:**
      207 - Questions should match exact search queries users type ("What is vibe coding?", "How much do boring app developers make?")
      208 - Each answer: 50–120 words, self-contained, directly responsive.
      209 - Do not hedge — give direct answers.
      210
      211 **Example for Vibe Coding post:**
      212 > **What is vibe coding?**
      213 > Vibe coding is a programming approach where you describe what you want in plain English and let AI tools (Cursor, GitHub Cop
          ilot, Claude) write the actual code. Coined by Andrej Karpathy in early 2025, it shifts the developer's role from writing synt
          ax to directing intent. Non-technical founders use it to build functional apps without learning a programming language.
      214
      215 If on a Business plan, add FAQPage schema markup to these sections.
      216
      217 ---
      218
      219 ### M3. Create `llms.txt`
      220 **Impact:** AI Citation Readiness | **Effort:** 30–60 min | **Category:** GEO
      221
      222 The `llms.txt` standard allows AI systems to understand your site without parsing raw HTML. Every compliant LLM search system
          benefits from this file.
      223
      224 **Create a page or file at** `fthustler.wordpress.com/llms.txt` with:
      225 ```
      226 # Full-Time Hustler
      227
      228 > From Side-Hustle to Full-Time Success. Practical guide for entrepreneurs,
      229 > indie hackers, and solopreneurs building businesses with AI and bootstrapped capital.
      230
      231 ## Author
      232
      233 Jason Feimster — entrepreneur, content creator, and AI tools practitioner.
      234 LinkedIn: https://www.linkedin.com/in/jason-vc/
      235 YouTube: https://www.youtube.com/c/jasonfeimster
      236
      237 ## Content Focus
      238
      239 - AI tools for entrepreneurs and solopreneurs
      240 - Side hustle to full-time business strategy
      241 - Business funding, loans, and capital for startups
      242 - No-code and vibe coding for non-technical founders
      243 - Real estate investing and personal finance
      244
      245 ## Key Articles
      246
      247 - https://fthustler.wordpress.com/2026/03/26/claude-can-now-control-your-entire-computer/
      248 - https://fthustler.wordpress.com/2026/01/27/boring-apps-real-money/
      249 - https://fthustler.wordpress.com/2025/05/12/vibe-coding/
      250 ```
      251
      252 On WordPress.com, create a page with the slug `llms` and set it to plain text format, or contact WordPress.com support to serv
          e a static text file at that path.
      253
      254 ---
      255
      256 ### M4. Build Contextual Internal Links Between Posts
      257 **Impact:** Topical Authority / Crawl Depth | **Effort:** 1–2 hrs | **Category:** On-Page
      258
      259 Currently zero contextual body links connect posts to each other. All 109–136 "internal links" per page are navigation duplica
          tes.
      260
      261 **Action:**
      262 - Edit each post and add 3–5 in-body links to related content.
      263 - Use descriptive anchor text (not "click here" or "read more").
      264 - Priority link clusters:
      265   - Claude Computer → Vibe Coding, GPT Prompts, AI Tools posts
      266   - Boring Apps → Vibe Coding, EmpireValuation
      267   - 90-Day Plan → EmpireValuation, Capital Stacking / funding posts
      268
      269 ---
      270
      271 ### M5. Fix Stale Sitemap `lastmod` Dates
      272 **Impact:** Crawl Frequency | **Effort:** 30 min | **Category:** Technical
      273
      274 187 URLs (27.5% of sitemap) carry `2022-02-04` lastmod dates — a bulk import artifact. These pages appear stale to Googlebot.
      275
      276 **Action:**
      277 1. Jetpack → Settings → Traffic → Sitemaps → regenerate.
      278 2. If that doesn't clear the dates, make a trivial edit (add a space, save) on the most important posts with stale dates to fo
          rce an updated modified timestamp.
      279 3. Focus on posts published after February 2022 that cover high-value topics.
      280
      281 ---
      282
      283 ### M6. Add H2 Structure to Vibe Coding Post
      284 **Impact:** Heading Hierarchy / Rankings | **Effort:** 30 min | **Category:** On-Page
      285
      286 The Vibe Coding post has no H2/H3 section structure in the body. This is a flat wall of text from Google's perspective.
      287
      288 **Action:**
      289 - Edit the post and break content into 5–7 named sections with H2 headings.
      290 - Suggested H2s: "What Is Vibe Coding?", "How It Differs from Traditional Development", "Best Tools for Vibe Coding in 2026",
          "Who Should Learn Vibe Coding?", "How to Get Started Today"
      291
      292 ---
      293
      294 ### M7. Add Sources/Citations to All Named Claims
      295 **Impact:** E-E-A-T / AI Citability | **Effort:** 1 hr per post | **Category:** Content
      296
      297 Zero posts hyperlink to source material. AI citation engines strongly prefer content with named, linked sources.
      298
      299 **Action (for each post):**
      300 - Karpathy "most important language is English" quote → link to his original X post or paper.
      301 - Greg Eisenberg's app playbook → link to his newsletter or X thread.
      302 - "$10M mobile apps" / "30–45x multiples" → link to Sensor Tower, Empire Flippers, or Flippa published data.
      303 - Every future post: include at least 2–3 external linked citations.
      304
      305 ---
      306
      307 ### M8. Expand Homepage with Editorial Content Block
      308 **Impact:** E-E-A-T / Bounce Rate | **Effort:** 45 min | **Category:** Content
      309
      310 Homepage body is ~310 words (mostly a blog roll). Add a 300–400 word editorial block above the post feed:
      311 - Who Jason Feimster is (specifics, not vague mission statement)
      312 - What the blog covers and who it's for
      313 - Why the reader should trust it
      314 - Link to the About page
      315 - Link to the most important resource/category
      316
      317 ---
      318
      319 ## LOW — Backlog (Polish / Long-Term)
      320
      321 ### L1. Migrate to Custom Domain
      322 **Impact:** Brand Authority / AI Citation Recognition | **Effort:** High | **Category:** Technical/GEO
      323
      324 `fthustler.wordpress.com` accrues domain authority to `wordpress.com`, not to the "Full-Time Hustler" brand entity. Moving to
          `fthustler.com` (or similar) consolidates all brand signals under a single authoritative domain.
      325
      326 WordPress.com supports custom domain mapping. The `fthustler.com` domain was listed in the Gravatar profile — verify if it's r
          egistered and available to connect.
      327
      328 ---
      329
      330 ### L2. Add `fetchpriority="high"` to LCP Images
      331 **Impact:** Core Web Vitals (LCP) | **Effort:** Medium (requires theme/plan access) | **Category:** Performance
      332
      333 The first featured post thumbnail on every page (the LCP element) lacks `fetchpriority="high"`. On WordPress.com, this require
          s either a child theme edit or a paid plan.
      334
      335 **Workaround:** If the block editor is used, you can sometimes edit the image block's HTML directly and add `fetchpriority="hi
          gh"` to the `<img>` tag.
      336
      337 ---
      338
      339 ### L3. Replace YouTube Embeds with Facades
      340 **Impact:** INP / Page Load Speed | **Effort:** Medium | **Category:** Performance
      341
      342 Raw YouTube iframes load ~500KB of JS on page load. Replace with a static thumbnail + "play" button that loads the iframe only
           on click. Several WordPress plugins handle this (WP YouTube Lyte), but require Business plan access on WordPress.com.
      343
      344 ---
      345
      346 ### L4. Add `preconnect` for Font Origins
      347 **Impact:** LCP (font load latency) | **Effort:** Low | **Category:** Performance
      348
      349 Currently only `dns-prefetch` is used for `fonts-api.wp.com`. Add to theme header (if plan permits):
      350 ```html
      351 <link rel="preconnect" href="https://fonts-api.wp.com" crossorigin>
      352 <link rel="preconnect" href="https://fonts.wp.com" crossorigin>
      353 ```
      354
      355 ---
      356
      357 ### L5. Build Wikipedia Entity Presence
      358 **Impact:** AI Citation Authority | **Effort:** Very High (weeks-months) | **Category:** GEO
      359
      360 Wikipedia presence strongly correlates with AI citation inclusion. Path:
      361 1. Get mentioned in 3+ independent, notable publications (tech blogs, business media, podcast show notes with links).
      362 2. Those references become the notability basis for a Wikipedia stub on Jason Feimster or Full-Time Hustler.
      363
      364 ---
      365
      366 ### L6. Remove Tag Archive Links from Primary Navigation
      367 **Impact:** Crawl Budget / Thin Content | **Effort:** Low | **Category:** Technical
      368
      369 The main navigation exposes 50+ tag and category links including thin tag archives (`/tag/ai-tools/`, `/tag/ai-news/`). These
          pages are auto-generated with thin, duplicate content. Remove lower-value tags from the nav and replace with links to high-val
          ue evergreen posts or pillar pages.
      370
      371 ---
      372
      373 ### L7. Pursue External Brand Mentions
      374 **Impact:** Authoritativeness (E-E-A-T) / AI Citation | **Effort:** Ongoing | **Category:** GEO
      375
      376 Reddit communities (r/entrepreneur, r/sidehustle, r/AItools) and niche newsletters have high correlation with AI citation rate
          s. Share content and participate in these communities. Pursue podcast appearances and guest posts in entrepreneurship/AI publi
          cations.
      377
      378 ---
      379
      380 ## Prioritized Quick-Win Checklist
      381
      382 Copy this checklist to track progress:
      383
      384 - [ ] **C1** — Add affiliate disclosure to all posts
      385 - [ ] **C2** — Add `rel="nofollow sponsored"` to affiliate links
      386 - [ ] **H1** — Add alt text to all images (Media Library + inline edit)
      387 - [ ] **H2** — Write custom meta descriptions (homepage + all posts)
      388 - [ ] **H3** — Shorten all post title tags to under 60 chars
      389 - [x] **H4** — Fix 404 Unicode-slug URL in sitemap
      390 - [x] **H5** — Fix Google Search Console sitemap submission
      391 - [ ] **H6** — Update OG image to 1200×630px + add Twitter Card tags
      392 - [ ] **H7** — Build proper About/Author page with credentials
      393 - [ ] **H8** — Expand thin content posts (Vibe Coding, Boring Apps, 90-Day Plan, EmpireValuation)
- [x] **M1** — Add BlogPosting + WebSite JSON-LD to all posts/homepage
      395 - [ ] **M2** — Add FAQ sections (3–5 Q&As) to every post
      396 - [ ] **M3** — Create `llms.txt` at root URL
      397 - [ ] **M4** — Add 3–5 contextual internal links per post
      398 - [x] **M5** — Fix stale 2022-02-04 lastmod dates in sitemap
      399 - [ ] **M6** — Add H2 heading structure to Vibe Coding post
      400 - [ ] **M7** — Add hyperlinked citations to all named claims and statistics
      401 - [ ] **M8** — Write 300–400 word editorial block on homepage
      402
      403 ---
      404
      405 *Action Plan generated by Claude Code SEO Audit Suite — March 28, 2026*
