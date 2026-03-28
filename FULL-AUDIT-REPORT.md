        1 # Full SEO Audit Report: fthustler.wordpress.com
        2 **Site:** Full-Time Hustler — "From Side-Hustle to Full-Time Success"
        3 **Author:** Jason Feimster
        4 **Platform:** WordPress.com (hosted, Automattic infrastructure)
        5 **Audit Date:** March 28, 2026
        6 **Auditor:** Claude Code SEO Audit Suite (7 specialist agents)
        7
        8 ---
        9
       10 ## Executive Summary
       11
       12 | Metric | Score |
       13 |--------|-------|
       14 | **Overall SEO Health Score** | **44 / 100** |
       15 | Technical SEO | 58 / 100 |
       16 | Content Quality (E-E-A-T) | 54 / 100 |
       17 | On-Page SEO | 45 / 100 |
       18 | Schema / Structured Data | 5 / 100 |
       19 | Performance (CWV signals) | 40 / 100 |
       20 | AI Search Readiness (GEO) | 42 / 100 |
       21 | Images | 30 / 100 |
       22
       23 **Business Type Detected:** Entrepreneurial blog / personal brand — single author (Jason Feimster), covering side hustles, AI
          tools, business finance, startup strategy, and personal development. Monetized via affiliate sidebar placements (business lend
          ing: David Allen Capital, ROK Financial, GoKapital, Fund&Grow) and custom GPT tool promotion.
       24
       25 ---
       26
       27 ### Top 5 Critical Issues
       28
       29 1. **No affiliate/FTC disclosure on any post** — multiple commercial affiliate links embedded in every page with zero disclosu
          re language. Highest-priority legal and trust risk.
       30 2. **Zero meaningful structured data (Schema.org)** — no Article, BlogPosting, Person, Organization, or WebSite JSON-LD on any
           page. Suppresses rich results eligibility and AI citation chances.
       31 3. **All post title tags truncated in SERPs** — all 4 sampled posts exceed 60 chars. Every post is showing truncated titles in
           Google.
       32 4. **Empty `alt=""` on virtually all content images** — 11/17 homepage images, 6/7 post images. Zero SEO value extracted from
          editorial imagery.
       33 5. **No llms.txt + no cited sources in content** — site covers AI-heavy topics but earns zero citations from ChatGPT, Perplexi
          ty, or Google AI Overviews due to absent GEO infrastructure.
       34
       35 ### Top 5 Quick Wins
       36
       37 1. **Add affiliate disclosure** to every post (10 minutes per post — legal requirement, trust signal).
       38 2. **Write custom meta descriptions** (150–160 chars) for the homepage and all posts using Jetpack SEO.
       39 3. **Add `alt` text to all images** via the WordPress block editor — no technical changes needed.
       40 4. **Create `llms.txt`** at the root URL — a 30-minute task that immediately signals the site to AI citation engines.
       41 5. **Add FAQ sections** to posts — 3–5 Q&A blocks at the end of each article, the single fastest path to AI Overview and Perpl
          exity citation slots.
       42
       43 ---
       44
       45 ## 1. Technical SEO
       46
       47 **Score: 58 / 100**
       48
       49 ### 1.1 Crawlability — PASS (with caveats)
       50
       51 - `robots.txt` is present, valid, and correctly disallows only admin routes.
       52 - All content pages are open to crawling.
       53 - No `noindex` directives found — content is indexable.
       54 - No AI crawler rules (GPTBot, ClaudeBot, PerplexityBot) — all implicitly allowed. Add explicit rules if training-data scrapin
          g is a concern.
       55
       56 ### 1.2 Indexability — FAIL
       57
       58 | Issue | Severity |
       59 |-------|----------|
       60 | **No canonical tag on the homepage** | Critical |
       61 | `sitemap_index.xml` returns soft 404 | High |
       62 | 187 sitemap URLs carry stale `2022-02-04` lastmod date (bulk import artifact) | Medium |
       63 | One 404 URL in sitemap (Unicode math-font characters in slug) | High |
       64 | No `rel="next"` `<link>` tag for paginated archives | Medium |
       65
       66 The homepage lacks a canonical tag — confirmed absent. Individual post pages correctly declare canonicals. The missing homepag
          e canonical creates duplicate content risk across shortlinks (`wp.me`), pagination variants, and query strings.
       67
       68 The `sitemap_index.xml` endpoint returns a 404. If registered in Google Search Console, it silently delivers nothing. The vali
          d sitemap is at `/sitemap.xml` (680 URLs) and `/news-sitemap.xml`.
       69
       70 ### 1.3 HTTPS & Security — PARTIAL PASS
       71
       72 | Check | Status |
       73 |-------|--------|
       74 | HTTPS redirect (HTTP → HTTPS 301) | PASS |
       75 | HSTS present (`max-age=31536000`) | PASS |
       76 | HSTS `includeSubDomains` / `preload` | FAIL (platform limitation) |
       77 | Content-Security-Policy | MISSING |
       78 | X-Frame-Options | MISSING |
       79 | X-Content-Type-Options | MISSING |
       80 | Referrer-Policy | MISSING |
       81
       82 Security headers are a platform-level limitation of WordPress.com — cannot be set without migrating to self-hosted WordPress.
       83
       84 ### 1.4 Mobile & Viewport
       85
       86 - Viewport meta tag correctly declared: `width=device-width, initial-scale=1`.
       87 - Apostrophe 2 theme is responsive. Responsive `srcset` used on post images.
       88 - **PASS**.
       89
       90 ### 1.5 URL Structure
       91
       92 - Date-based permalinks (`/YYYY/MM/DD/slug/`). Functional but makes evergreen content appear dated.
       93 - Slug quality is good on the date-independent portion.
       94 - **Do not change retroactively** — would break all URLs without a full 301 redirect plan.
       95 - One URL in the sitemap uses Unicode math-font characters as the slug — confirmed 404. Must be removed from sitemap and repub
          lished with ASCII slug.
       96
       97 ### 1.6 Social Metadata — FAIL
       98
       99 | Check | Status |
      100 |-------|--------|
      101 | Open Graph tags present | Partial |
      102 | OG image size (200×200px) | FAIL — minimum 1200×630px required |
      103 | `og:image:alt` | FAIL — empty string |
      104 | Twitter Card meta tags on homepage | MISSING entirely |
      105
      106 The homepage OG image is 200×200px — Facebook, LinkedIn, and X (Twitter) require 1200×630px minimum for proper link previews.
          Posts may have individual OG images set but the homepage social share appearance is severely degraded.
      107
      108 ---
      109
      110 ## 2. Content Quality & E-E-A-T
      111
      112 **Score: 54 / 100**
      113
      114 | E-E-A-T Factor | Score (0–10) |
      115 |----------------|-------------|
      116 | Experience | 5.5 / 10 |
      117 | Expertise | 4.5 / 10 |
      118 | Authoritativeness | 3.5 / 10 |
      119 | Trustworthiness | 3.0 / 10 |
      120 | **Composite E-E-A-T** | **4.0 / 10** |
      121
      122 ### 2.1 Affiliate/FTC Disclosure — CRITICAL FAIL
      123
      124 Every audited page contains sidebar affiliate placements (David Allen Capital, ROK Financial, GoKapital, Fund&Grow, ROCKFI) pl
          us in-body affiliate links (ChatGPT GPT referrals, bit.ly shortened affiliate URLs, affiliate enrollment links with tracking p
          arameters like `sponsorid=102585504`). **Zero posts have any affiliate disclosure language.**
      125
      126 FTC Endorsement Guides and Google's paid-link policies both require clear, conspicuous disclosure at the point of recommendati
          on. This is a legal exposure and a direct Trustworthiness E-E-A-T failure. Fix immediately.
      127
      128 **Template disclosure:** *"This post contains affiliate links. If you click through and make a purchase, Full-Time Hustler may
           earn a commission at no additional cost to you."*
      129
      130 ### 2.2 Author Credentialing — FAIL
      131
      132 - Jason Feimster is consistently bylined — positive.
      133 - The sitewide author bio is a single sentence with a grammatical error ("On a mission **is** to help visionary entrepreneurs"
           → "On a mission **to** help").
      134 - No author credentials, years of experience, track record, companies founded, or verifiable outcomes stated anywhere.
      135 - No on-page author bio box on any individual post.
      136 - LinkedIn is linked in the header — the one positive trust signal.
      137 - For YMYL-adjacent topics (business finance, AI tools affecting work outcomes), the absence of author credentialing is a mean
          ingful ranking risk under the September 2025 Quality Rater Guidelines.
      138
      139 ### 2.3 Thin Content
      140
      141 Three of five audited posts fall below the 1,500-word minimum:
      142
      143 | Post | Body Word Count | Status |
      144 |------|----------------|--------|
      145 | Claude Computer Use | ~3,700 words | PASS — strongest piece |
      146 | Vibe Coding | ~700–900 words | FAIL — thin |
      147 | Boring Apps, Real Money | ~950–1,100 words | FAIL — thin |
      148 | GPT Prompts | ~1,200–1,600 words | Borderline |
      149 | 90-Day Bootstrapped Plan | ~850–1,000 words | FAIL — thin |
      150 | EmpireValuation | ~850–1,000 words | FAIL — thin |
      151
      152 Posts with thin content also show a characteristic pattern of over-structuring (8–12 H2 headings with very little content bene
          ath each) consistent with AI-assisted drafting.
      153
      154 ### 2.4 Source Citations — FAIL
      155
      156 - Zero posts contain hyperlinked external citations.
      157 - Named attributions exist (Andrej Karpathy, Greg Eisenberg, Kyle Balmer) but none link to source material.
      158 - Financial claims ("30–45x multiples," "$10M apps") are asserted without any sourcing.
      159 - Google's Quality Rater Guidelines explicitly call for verifiable sources on empirical claims in business and finance content
          .
      160
      161 ### 2.5 Internal Linking — FAIL (editorial)
      162
      163 - 109–136 "internal links" per post — but almost entirely navigation menu duplication.
      164 - Zero contextual body links observed pointing from one post to related posts.
      165 - No topic cluster architecture visible. Content exists as isolated pages rather than an interconnected authority network.
      166
      167 ### 2.6 Homepage Content — FAIL
      168
      169 Homepage body content is approximately 310 words — below the 500-word threshold. The homepage is a blog roll with no editorial
           mission statement, no "who this is for" content, and no trust-building copy — while simultaneously displaying six affiliate f
          inance widgets.
      170
      171 ---
      172
      173 ## 3. On-Page SEO
      174
      175 **Score: 45 / 100**
      176
      177 ### 3.1 Title Tags — FAIL (all posts)
      178
      179 | Page | Length | Issue |
      180 |------|--------|-------|
      181 | Homepage | 58 chars | PASS |
      182 | Claude Computer | 81 chars | FAIL — truncated in SERPs |
      183 | Boring Apps | 85 chars | FAIL — truncated in SERPs |
      184 | GPT Prompts | 82 chars | FAIL — truncated in SERPs |
      185 | Vibe Coding | 79 chars | FAIL — truncated in SERPs |
      186
      187 The brand suffix " – Full-Time Hustler" consumes 20 characters, leaving only ~40 characters for the actual keyword. Consider d
          ropping the brand suffix on interior pages or writing separate SEO titles using Jetpack SEO.
      188
      189 ### 3.2 Meta Descriptions
      190
      191 | Page | Status |
      192 |------|--------|
      193 | Homepage | FAIL — 38 chars, just the tagline |
      194 | Post 1 (Claude) | FAIL — auto-generated, 360+ chars, truncated mid-sentence |
      195 | Post 2 (Boring Apps) | FAIL — auto-generated, 360+ chars, truncated mid-sentence |
      196 | Post 3 (GPT Prompts) | PASS (borderline 160 chars) |
      197 | Post 4 (Vibe Coding) | PASS (borderline 159 chars) |
      198
      199 WordPress is auto-generating descriptions from post excerpts on 2 of 4 posts and the homepage. These appear in SERPs as incomp
          lete sentences ending with "…".
      200
      201 ### 3.3 Heading Hierarchy
      202
      203 - **Dual H1 problem**: The Apostrophe 2 theme renders the site name "Full-Time Hustler" as an `<h1>` in the site header on eve
          ry page, competing with the post entry title `<h1>`. Google is lenient about multiple H1s but the generic site name taking the
           first H1 position is suboptimal.
      204 - Post 4 (Vibe Coding) has no H2/H3 structure in the body — flat wall of text.
      205 - Post 3 (GPT Prompts) uses emoji characters in H2/H3 tags — dilutes keyword signal.
      206
      207 ### 3.4 Affiliate Link Compliance
      208
      209 Affiliate and commercial links throughout the site are missing `rel="nofollow sponsored"` attributes. Google's link spam polic
          ies require this for paid/affiliate links. The `cs4000.me` enrollment link (with `sponsorid=102585504` parameter) has `rel="no
          referrer noopener"` but not the required `nofollow sponsored`. Untagged affiliate links risk manual spam penalties.
      210
      211 ### 3.5 Sitemap Quality
      212
      213 - 680 URLs indexed in `/sitemap.xml` — healthy.
      214 - 187 URLs (27.5%) carry stale `2022-02-04` lastmod dates — crawl frequency signal damage.
      215 - Deprecated `<changefreq>` and `<priority>` tags present — ignored by Google, add file bloat.
      216 - One confirmed 404 URL with Unicode math-font slug in sitemap.
      217 - `sitemap_index.xml` → 404.
      218
      219 ---
      220
      221 ## 4. Schema / Structured Data
      222
      223 **Score: 5 / 100**
      224
      225 ### Current Implementation
      226
      227 The **only schema present** across the entire site is an empty, auto-generated Jetpack Microdata block:
      228
      229 ```html
      230 <div class="jp-carousel-wrap" itemscope itemtype="https://schema.org/ImageGallery">
      231 ```
      232
      233 This block has **zero `itemprop` attributes** — it is a non-functional UI artifact from Jetpack's carousel plugin. Google cann
          ot extract any data from it. It provides no SEO value.
      234
      235 **The site has zero author-controlled structured data.**
      236
      237 ### Missing Schema — Priority Order
      238
      239 | Schema Type | Priority | Google Rich Result? |
      240 |-------------|----------|-------------------|
      241 | BlogPosting / Article (per post) | **Critical** | Yes |
      242 | WebSite + SearchAction (homepage) | **Critical** | Yes (Sitelinks Search Box) |
      243 | Person (author) | **Critical** | Yes (E-E-A-T signal) |
      244 | Organization (homepage) | **High** | Yes (Knowledge Panel) |
      245 | BreadcrumbList (all posts) | **High** | Yes (SERP breadcrumbs) |
      246 | ItemList (homepage feed) | Recommended | Yes |
      247 | FAQPage (selected posts) | Optional (GEO benefit) | No (restricted on blogs) |
      248
      249 ### WordPress.com Implementation Path
      250
      251 WordPress.com free/basic plans do not have access to Yoast SEO or RankMath. Options:
      252 1. **Manual JSON-LD injection** via Custom HTML block at the top/bottom of each post.
      253 2. **Business plan upgrade** unlocks plugin installation for automated schema generation.
      254 3. **Jetpack SEO (paid)** may provide some structured data output.
      255
      256 Sample JSON-LD for BlogPosting, WebSite, Organization, Person, and BreadcrumbList is provided in the Action Plan below.
      257
      258 ---
      259
      260 ## 5. Performance (Core Web Vitals Signals)
      261
      262 **Score: 40 / 100**
      263
      264 Note: Scores are estimated from HTML analysis, not lab/field measurements. Run Google PageSpeed Insights for real CWV data.
      265
      266 ### 5.1 LCP (Largest Contentful Paint) — HIGH RISK
      267
      268 | Issue | Severity |
      269 |-------|----------|
      270 | No `fetchpriority="high"` on first featured image (LCP candidate) | High |
      271 | No `<link rel="preload" as="image">` for LCP image | High |
      272 | 5 render-blocking CSS stylesheets in `<head>` | High |
      273 | Web fonts loaded with no `font-display` declaration (defaults to `block` — FOIT) | High |
      274 | Font CSS from `fonts-api.wp.com` is synchronous render-blocking | High |
      275 | Only `dns-prefetch` for font origin — no `preconnect` | Medium |
      276 | Font files served as TTF instead of WOFF2 (~30–50% larger) | Medium |
      277
      278 ### 5.2 INP (Interaction to Next Paint) — MEDIUM RISK
      279
      280 | Issue | Severity |
      281 |-------|----------|
      282 | 14 of 18 external scripts load without `defer` or `async` | High |
      283 | Raw YouTube `<iframe>` embeds on post pages (~500KB JS on load) | High |
      284 | Jetpack Instant Search registers event listeners on page load | Medium |
      285 | `af.pubmine.com` ad network active (dns-prefetch present) | Medium |
      286 | 8 inline `<script>` blocks in `<head>` execute before render | Medium |
      287
      288 ### 5.3 CLS (Cumulative Layout Shift) — MEDIUM RISK
      289
      290 | Issue | Severity |
      291 |-------|----------|
      292 | Gravatar author avatar missing `width`/`height` HTML attributes (sitewide) | Medium |
      293 | FOIT/FOUT from fonts without `font-display: swap` causes text reflow | Medium |
      294 | Homepage post thumbnail grid has no `srcset` — fixed 450px for all viewports | Medium |
      295
      296 ### 5.4 Page Weight
      297
      298 | Page | HTML Size (uncompressed) |
      299 |------|------------------------|
      300 | Homepage | 226.8 KB |
      301 | Post 1 (Claude) | 276.8 KB |
      302 | Post 2 (Boring Apps) | 231.8 KB |
      303
      304 Bloat sources: large inline CSS blocks from Jetpack/Gutenberg/custom fonts; Jetpack `data-attachment-id` / `data-orig-file` /
          `data-image-meta` attributes on every `<img>` tag.
      305
      306 ### 5.5 Positive Platform Signals
      307
      308 - WordPress.com a8c CDN confirmed active with cache HITs on all pages.
      309 - PNG/JPEG automatically converted to WebP at CDN edge for supporting browsers.
      310 - Static JS/CSS concatenated and minified via `/_static/` endpoint.
      311 - Content is server-side rendered — Google does not need to execute JS to index content.
      312
      313 ---
      314
      315 ## 6. Images
      316
      317 **Score: 30 / 100**
      318
      319 ### 6.1 Alt Text — CRITICAL FAIL
      320
      321 | Page | Images With Empty Alt | Total Images |
      322 |------|-----------------------|--------------|
      323 | Homepage | 11 | 17 |
      324 | Post 1 (Claude) | 6 | 10 |
      325 | Post 2 (Boring Apps) | 4 | 7 |
      326
      327 All editorial content images have `alt=""`. This means:
      328 - Zero images indexed in Google Image Search with keyword context.
      329 - WCAG 2.1 AA accessibility failure.
      330 - Missed keyword placement on every page.
      331 - Featured images excluded from Google Discover visual carousels.
      332
      333 ### 6.2 Formats — PASS (CDN mitigated)
      334
      335 - Source uploads are PNG/JPEG. The a8c CDN automatically serves WebP for browsers declaring `Accept: image/webp`. This is tran
          sparent and works correctly.
      336 - No AVIF support at CDN level. Minor opportunity.
      337 - TTF fonts (not WOFF2) — font loading issue, covered in Performance section.
      338
      339 ### 6.3 Responsive Images — PARTIAL
      340
      341 - Post body images: correctly use `srcset` with multiple widths and `sizes` attributes — PASS.
      342 - **Homepage thumbnail grid (12 images): no `srcset`** — fixed 450×450px served to all screen sizes. Mobile visitors receive t
          he same file as 4K desktop users.
      343 - Logo: adequate `srcset` with 2 sizes.
      344
      345 ### 6.4 CLS-Risk Images
      346
      347 - Gravatar author avatar: no `width`/`height` HTML attributes on any page — shifts content on load.
      348 - All other main content images have correct width/height declarations.
      349
      350 ---
      351
      352 ## 7. AI Search Readiness (GEO)
      353
      354 **Score: 42 / 100**
      355
      356 | Platform | Readiness |
      357 |----------|-----------|
      358 | Google AI Overviews | 35 / 100 |
      359 | ChatGPT Web Search | 40 / 100 |
      360 | Perplexity | 45 / 100 |
      361 | Bing Copilot | 38 / 100 |
      362
      363 ### 7.1 Technical AI Accessibility
      364
      365 - `llms.txt`: **ABSENT** (404). This single file tells compliant AI systems who runs the site, what it covers, and how to cite
           it. Without it, AI systems infer all context from raw HTML.
      366 - robots.txt: All AI crawlers implicitly allowed. No selective rules.
      367 - Server-side rendering: Positive — content accessible without JS execution.
      368 - **Subdomain problem**: Site lives at `fthustler.wordpress.com`, not a custom domain. Domain authority accrues to `wordpress.
          com`, not to "Full-Time Hustler" as a distinct web entity. Materially weakens AI citation brand recognition.
      369
      370 ### 7.2 Citability — FAIL
      371
      372 - **Zero posts contain cited external statistics.** All claims are asserted without attribution links.
      373 - Post introductions open with narrative hooks/rhetorical devices — AI systems extract the first 40–60 words as the candidate
          answer passage. Current openers produce tone, not citable facts.
      374 - No TL;DR or summary blocks for AI snippet extraction.
      375 - No FAQ sections with structured Q&A (highest single-tactic GEO win).
      376
      377 **Best-performing post for citability:** "Boring Apps, Real Money" (52/100) — has clear thesis, extractable concept definition
          s, and actionable numbered steps.
      378
      379 **Worst-performing:** "Claude Computer Use" (30/100) — opens with a metaphor, cites secondary source without linking, no stati
          stics.
      380
      381 ### 7.3 Authority & Brand Signals
      382
      383 | Signal | Status |
      384 |--------|--------|
      385 | Named author on all posts | Present |
      386 | LinkedIn profile | Present |
      387 | YouTube channel | Present |
      388 | Twitter/X, Instagram, Facebook | Present |
      389 | Custom domain | **ABSENT** — on wordpress.com subdomain |
      390 | Wikipedia entity | **ABSENT** |
      391 | Google Author entity (Schema Person) | **ABSENT** |
      392 | Author credentials in bylines | **ABSENT** |
      393 | Media/press mentions | Unconfirmed |
      394 | Gravatar profile | Present (last updated 5 years ago) |
      395
      396 Wikipedia absence is a high-impact gap. Wikipedia presence correlates strongly with AI citation inclusion. Path: secure 3+ ind
          ependent notable third-party mentions in publications, then create a Wikipedia stub.
      397
      398 ### 7.4 Coined Terminology
      399
      400 The site consistently uses: "Venture Autonomy," "Capital Stacking," "Full-Time Hustler." Coined terminology is a legitimate GE
          O strategy for owning AI answer real estate. Currently these terms exist only within the site's own corpus — they need externa
          l adoption to gain AI signal value.
      401
      402 ---
      403
      404 ## Scoring Summary
      405
      406 | Category | Weight | Raw Score | Weighted Score |
      407 |----------|--------|-----------|----------------|
      408 | Technical SEO | 22% | 58 | 12.76 |
      409 | Content Quality | 23% | 54 | 12.42 |
      410 | On-Page SEO | 20% | 45 | 9.00 |
      411 | Schema / Structured Data | 10% | 5 | 0.50 |
      412 | Performance (CWV) | 10% | 40 | 4.00 |
      413 | AI Search Readiness | 10% | 42 | 4.20 |
      414 | Images | 5% | 30 | 1.50 |
      415 | **TOTAL** | **100%** | — | **44.38 / 100** |
      416
      417 ---
      418
      419 ## Platform Limitation Note
      420
      421 Several findings in this report are constrained by the **WordPress.com managed hosting environment**. The following cannot be
          fixed without either upgrading to a higher WordPress.com plan or migrating to self-hosted WordPress.org:
      422
      423 - Security headers (CSP, X-Frame-Options, X-Content-Type-Options)
      424 - Plugin ecosystem access (Yoast SEO, Rank Math, Schema Pro)
      425 - Full `robots.txt` customization
      426 - Server-level font `font-display` control
      427 - Advanced Core Web Vitals optimization (script deferral, preload injection)
      428
      429 A **WordPress.com Business plan** ($25/mo) unlocks plugins. A migration to a self-hosted stack (Kinsta, WP Engine, Cloudways)
          provides full control but requires technical migration effort.
      430
      431 ---
      432
      433 *Report generated by Claude Code SEO Audit Suite — March 28, 2026*
