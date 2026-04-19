# How to Add BlogPosting and WebSite JSON-LD Schema

The site currently has no meaningful structured data. This blocks rich result eligibility in Google and suppresses AI citation potential. To implement the Schema.org structured data, follow these instructions based on your WordPress.com plan.

## Option 1: Manual Implementation (Free/Basic Plans)

If you are on a plan that does not allow plugins, you will need to add the JSON-LD manually using a **Custom HTML block** in the WordPress editor.

1. **Homepage (`WebSite` Schema)**
   - Add a "Custom HTML" block to your homepage (either directly in the editor or via your theme header/footer if supported).
   - Wrap the JSON template in script tags:
     ```html
     <script type="application/ld+json">
     {
       "@context": "https://schema.org",
       "@type": "WebSite",
       "name": "Full-Time Hustler",
       "url": "https://fthustler.wordpress.com",
       "description": "From Side-Hustle to Full-Time Success — covering entrepreneurship, AI tools, side hustles, and finance.",
       "potentialAction": {
         "@type": "SearchAction",
         "target": "https://fthustler.wordpress.com/?s={search_term_string}",
         "query-input": "required name=search_term_string"
       }
     }
     </script>
     ```

2. **All Blog Posts (`BlogPosting` Schema)**
   - For every single blog post, open the block editor.
   - Add a "Custom HTML" block at the very top or bottom of the post content.
   - Wrap the JSON template in script tags, and **make sure to update the placeholders** (like `POST TITLE HERE`, `META DESCRIPTION HERE`, `POST URL HERE`, and the dates) with the actual details of that specific post.
     ```html
     <script type="application/ld+json">
     {
       "@context": "https://schema.org",
       "@type": "BlogPosting",
       "headline": "POST TITLE HERE",
       "description": "META DESCRIPTION HERE",
       "url": "POST URL HERE",
       "datePublished": "YYYY-MM-DD",
       "dateModified": "YYYY-MM-DD",
       "author": {
         "@type": "Person",
         "name": "Jason Feimster",
         "url": "https://fthustler.wordpress.com/author/fthustler/"
       },
       "publisher": {
         "@type": "Organization",
         "name": "Full-Time Hustler",
         "url": "https://fthustler.wordpress.com"
       },
       "mainEntityOfPage": {
         "@type": "WebPage",
         "@id": "POST URL HERE"
       }
     }
     </script>
     ```

## Option 2: Automated Implementation (WordPress.com Business Plan or higher)

If you have a WordPress.com Business plan (or decide to upgrade to it), you can install SEO plugins which will fully automate this process, saving you hours of manual data entry.

1. Install an SEO plugin such as **Rank Math** or **Yoast SEO**.
2. Run their setup wizard. These plugins will automatically generate and inject `BlogPosting`, `BreadcrumbList`, and `WebSite` schema across your entire site dynamically.
