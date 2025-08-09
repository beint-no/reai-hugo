---
title: "SEO and PPC search ads"
description: "Best practices for SEO and SEM. Keyword research, naming conventions, redirects and more."
---

Search engine optimization and related PPC ads are one of the most important part of marketing at [Famme](https://famme.no).

Search engine optimization and related PPC ads are one of the most important part of marketing at Famme.

In this onboarding document we will go through the following for SEO:

1. The most important SEO resources to learn from
2. The motivation behind improving SEO
3. Keyword research and how to improve ranking
4. How to write “blog posts for SEO”
5. Redirects best practices
6. Coverage report in GSC
7. Naming conventions
8. Multi country and language SEO - Translations and domains
9. Video SEO
10. Deduplication and consolidation of content
11. Click through rates - Meta title and description improvements
12. Structured data
13. Page experience and UX - effect on rankings

<!--more-->

### PPC

- How much is traffic worth?
- How does PPC work?
- Margins
- Bid types
- Brandjacking
- Negative keywords

### SEO resources

#### Docs

Every other blog post on the internet is rephrasing the Google docs, familiarize yourself with Google’s own docs:

- [Search Console documentation](https://search.google.com/search-console/about)
- [Google’s SEO documentation](https://developers.google.com/search/docs/beginner/seo-starter-guide)
- [Shopify SEO docs](https://help.shopify.com/en/manual/promoting-marketing/seo/seo-overview)

Since we use Shopify as our E-commerce platform, knowing how SEO works for the Shopify platform is important.

### Blogs

The official documentation is important, but some blogs are also worth reading. For blogs:

- https://contentdistribution.com/how-google-works/

### Software you will use

If you work on the Norwegian page, you will get access to:

- Search console: https://search.google.com/search-console?resource_id=sc-domain%3Afamme.no

After access is given you have to “confirm ownership”. If you work on the danish site the url above has to replace famme.no with fammestore.dk.

- Google ads: ads.google.com
- Semrush: Semrush.com
- Google analytics: http://analytics.google.com/
- Shopify analytics

## SEO motivation - Why increase organic traffic?
We want to increase the relevant organic traffic to Famme’s site. Example of relevant traffic:

- Women searching for leggings
- Women searching for crop tops
Example of non-relevant traffic:

- Men/Women searching for iphone 12
- Men/Women searching for how to ski
The last could become relevant if we started selling ski equipment / ski clothing, since people learning to ski are more likely to buy clothes for skiing.

 

We want to increase the amount of impressions and clicks from relevant people.

As of this writing, you can see that the amount of impressions has increased from July to August. This can be attributed to two factors:

- We got a new theme that was much faster. Google likes faster sites
- We wrote more in depth and keyword-focused product and collection descriptions
- We started writing blog posts
- We linked internally strategically between pages.
So let’s start getting more relevant impressions, and thus clicks.

## Keyword research
What do we sell? Clothing. What do we have most of? Leggings. What are people searching for related to leggings? Google keywordplanner has the answer:

 

We have done some keyword research and saved the search terms with the highest search volume to a keyword plan.

People are also searching for “Nike tights” and “Gymshark tights”, but those are not relevant for us. In general we will only be interested in non-branded searches. But for Google ads it might be relevant to target customer’s searching for competitors. It might also be relevant to make comparison articles to “steal” branded traffic.

So we have the keywords. Now we need to have content on our site to tell Google we are relevant for that keyword.

Note that one can also talk about targeting search intent. If people look for “svart tights”, “svart treningstights”, “sort tights”. The person is looking for the same thing. We do not need to make separate content for all those search terms.

Ranking one page for one of these terms should rank nr 1 on every term ideally. At the moment we rank nr 1 for:

“scrunch tights”
“scrunch tights norge”
Which both has the same search intent for people living in Norway.

Let’s take a look at the first page for the most searched for term:

 

Every page ranking on the first page is a collection page, except “test blog”. That makes sense. If I look for training leggings I probably want to see many leggings to find one relevant for me. If I searched for something more specific like a training leggings with scrunch and pockets in color red, then it would make sense to show me a specific product page. But for a generic product category you have less chance of ranking a single product, simply because it is less relevant.

To find out what page Google thinks is most relevant for a search term for a given site, we use the site: filter.

treningstights site:famme.no
 

Google also thinks that the “tights” and “treningstights” collection pages is most relevant for the search term, which is consistent with the result on the first page.

Our goal is to rank nr 1 on this search term and related terms, but let’s start by finding the current ranking using Google search console:

https://search.google.com/search-console/performance/search-analytics?resource_id=sc-domain%3Afamme.no&query=*treningstights
 

If we use some regex to filter out those queries that are interesting, we can see something interesting:

Before we did consistent work on the content on our website, we did not even have impressions for a search term critical to our business.

That should be an eye opener for the importance of search engine optimization.

"|" means or and ^ means starts with, $ means endswith. 
https://support.google.com/webmasters/answer/7576553#regex_filter
^treningstights$|treningstights dame
 

To improve ranking, the following should be done:

- Find out what kind of page ranks for the search term. In this case it is a collection page
- Improve the collection page, does it have a relevant description, image and alt text on image
- For the collection page, are the products in it relevant, does the product have the keyword in the product description?
- Do we link the collection page “close” to the home page, it should be 1 click from the home page if the page is relevant
- Do we have other content, like blog posts, on the site relevant to the search term. If we do not have it, make it. A website that has written in depth about a topic should have more authority than a website with only a collection page.
- Link internally between relevant pages. The collection description can link to the blog posts for instance and the blog post can link to the collection page If relevant, link from other blog posts to the new blog posts.
- After going through all those steps for a search intent, the page is much more likely to rank after some time.

## Blog posts for SEO
Why write blogs?
The reason Famme writes blog posts, is to drive relevant traffic to the website.

We earn money by selling clothes to women, thus if we get a lot of men looking for beard accessories on our website, even if we had one million of them, we would probably not earn much more. It is better to get 100 women interested in sportswear, than 1 million irrelevant men on our website.

Having this in mind, every blog posts should try to maximize relevant traffic to our website.

Relevant traffic for Famme is, in prioritized order:

- Women who are ready to buy clothing that we offer
- Women who might buy in the future. That is almost all women
- Driving traffic for women looking for leggings, is more important than women looking for bags or dresses, as we do not have that in our inventory.

Example of blog article types:

- What is X?
- 10 best X
- X: 10 models tested
- How to do X?

### Searchers intent - Informational Vs. Transactional queries
(source: https://yoast.com/search-intent/)
Search intent (or user intent, audience intent) is the term used to describe the purpose of an online search. It’s the reason why someone conducts a specific search.
Writing good blog posts for SEO is a challenge in psychology. Which person is most ready to buy leggings, a person searching for:

- Leggings
- Maternity leggings
- Best leggings for workout
- Leggings winter
- How to wash leggings
- Famme leggings
It is not easy to answer that question, but a person looking for how to wash leggings probably has leggings, and are not in the immediate need to buy. But answering the question for the person might create a lead that might purchase in the future, thus it is relevant to have a blog article about it.

When choosing what to write about, we have to take into account:

- Search volume for a specific phrase/word
- Searchers intent
If the searchers intent is something we can answer and implies relevant traffic, and the search has high volume, then we can potentially have high relevant traffic to our website by best answering the searcher’s intent

### Blog Structure
Google analyzes the html on the page, as with everything in life, if it is structured in a consistent and logical way, it is easier to find and understand. Google needs to understand what the text is about, and thus certain structures will be better than others.

Most principles learned in school about structuring text applies to blog posts as well. For instance to split the text in paragraphs with meaningful titles.

All articles should be structured into logical paragraphs and all or most of these elements:

- Links, to external sites is also good if relevant to the article. But always to internal pages.
- lists
- If the artice is long, linking to relevant parts in the content table
- Bold important words
- Images and a big plus with videoes as well
To rank higher than others you need to:

- Writing higher-quality content than other pages currently ranking
- Optimizing that content to be more relevant to the keyword we want to rank for
- Use internal links
- Identifying things they didn’t cover that they should have
- Identifying room for improvement in terms of angle. Should they have provided more detail, or maybe less detail in a particular section?
### Header tags
If we write about maternity leggings, having “maternity leggings” as the most prominent h1 header makes sense.

“Subcategories” should have h2,h3 headers etc.

 

### External and internal linking
If you write about a topic, and link to other pages on your site with relevant keywords, that implies that your site in general is relevant for this keyword, as you have other pages on your site about the topic.

 

It is important that you add an alt text relevant to searcher’s intent on the keyword.

Here we have linked to a product, adding an alt text “leggings for maternity” is more telling to Google than if the link text had just included the name of the product.

If relevant for answering the searcher’s needs, link to reputable sources.

 

### How NOT to link to a page
When linking internally, always link to pages that are indexed, that excludes search pages that are not indexed.

For example, earlier https://famme.no/search?type=product&q=scrunch was used to link to a page on our website from a scrunch blog article. The best thing to do here would have been to link to: https://famme.no/collections/scrunch

Which is a page we want to rank on Google, and we need to tell Google: “We think this page is important, therefore we link to it.”

If you go to: https://famme.no/robots.txt

One can see that: Disallow: /search

That means that search queries are not indexed on Google. Doing internal links to search is thus not good.

### Relative linking Vs. absolute linking - multi language SEO
We have to “Shopify backends” for Famme. One is for our Norwegian customers, where we ship from Norway, the other is for all other customers:

You can see we have four domains:

- fammesportswear.com
- famme.se
- fammestore.dk
- famme.fi
Using our Scrunch leggings article as an example:

- https://fammesportswear.com/blogs/news/what-is-scrunch-leggings -> english
- https://fammestore.dk/blogs/news/what-is-scrunch-leggings -> Danish
- https://famme.se/blogs/news/what-is-scrunch-leggings -> Swedish
Note that since we have not translated the blog article as of this writing, the fammestore.dk blog will still be in english, as that is the default when no translation is available.

Let’s say you want to internally link to a product. There are two approaches:

Relative link
If you browse the blog from fammesportswear.com, clikcing the link takes you to fammesportswear.com/products/scrunch-tights.

If you browse from fammestore.dk, the link takes you to fammestore.dk/products/scrunch-tights.

 

Absolute link
A normal SEO mistake is to use an absolute link. This will force users on fammestore.dk and famme.se onto the english fammesportswear.com when following the link. That is bad for user experience and might confuse customers.

To summarize: Always use relative linking on a multi-language domain

### Include images and videos
A picture says a thousand words, and Google knows that images help people learn and that it probably makes the article more useful for the reader.

Try to add at least one image that helps the user, ideally “answering” their search somehow. If the person is looking for specific products, as will often be the case for Famme, adding product images and linking to them will often be useful.

Remember to add image alt/link text that does not simply regurgitate the product name, but explains what you are linking to. Examples:

Sport bra with high X
squatproof leggings (instead of essential leggings)
t-shirt with stink protection (instead of texture t-shirt, just an example)
### File names
When uploading files to a CMS, content management system, be very careful with the filename. Google explicitely writes in the documentation that filenames are used as “signals” / hints as to what the content is about. So it does not matter if you use Wordpress, Shopify or another CMS, for all pages, theme, blogs, always rename the file to describe what it is about.

For product photos it is often sufficient with the product name. For an image used as a cover for an article about the best running leggings, best-running-leggings.jpg is more relevant than screenshot-2021.jpg.

In Shopify when you upload a file to use in the theme editor, blog posts or pages you find the files here:

https://famme-international.myshopify.com/admin/settings/files

We have a lot of badly named files, everything from non-renamed screenshots to just stupid names like “test.jpg” that has stuck as it was not renamed after testing.

Always use hyphen as seperator between words. Never underscore.

## Redirects best practices
Eliminate 404 with relevant 301
As of this writing https://famme.no/products/bordeaux-elevate-vortex-leggings leads to a page:

Siden finnes ikke (Page does not exist)
Having a lot of 404s are obviously not a good quality sign of your website. Some 404 should exist, it is not necessary to eliminate all, that is an [SEO anti-pattern you should read more about here.](https://yoast.com/seo-anti-patterns-301-redirect-all-your-404s-to-your-homepage/)

The goal is to redirect to other pages that is relevant. For the leggings above, we actually do still have it, but the url has changed.

In Shopify it is easy to create a [URL redirect, look at this help page.](https://help.shopify.com/en/manual/online-store/menus-and-links/url-redirect#create-a-url-redirect)

/products/bordeaux-elevate-vortex-leggings -> /products/seamless-elevate-vortex-tights
The next time Google crawls this URL it no longer returns 404, but redirects to the relevant product.

## Google console coverage report
Go to https://search.google.com/search-console.
Find Coverage in the left menu under Index
Filter on Excluded
There are now a lot of different subcategories of excluded [explained here from Google](https://support.google.com/webmasters/answer/7440203#forbidden)
More has to be written about this… How should we use this in famme?. 404 report etc. is probably most relevant to look at. Not indexed pages for finding bad content.

## Naming conventions
Product text
Keep product text short
Detailed information should be in blog posts. For example linking to the “what is seamless” article when “seamless” is used as keyword
Have at least one bullet list with USP / important information
Use bold on certain text to make it easier to read. It should be easier to extract all necessary information from the bolded keywords
### Collection guidelines
Only use automatic collections, these are collections where products are dynamically added or removed based on rules.

For instance a collection could be all products with “Leggings” in title. If you add a new product with that substring in the name, it will automatically be added to the collection.

#### File naming guidelines

- Only use lowercase letters in file names
- Only use hyphens to separate words
### Images
Images should be named like this:

#### Image in articles
Either in text or featured image: ARTICLE_NAME-TEXT_DESCRIBING_PICTURE

For example beste-treningstights-scrunch-tights.jpg for an article about best training leggings 2021 where scrunch tights is depicted.

#### Product images
Product images should be named the same as the product title with hyphens.

#### Collection images
collection.jpg with hyphens between words is good enough

### Website
{location}-{image type}-{something describing image}

for example homepage-banner-4flex-jeans.jpg, homepage-banner-scrunch-leggings.jpg etc.

For other banners for landing pages: {landing page name}-{something describing the image}

4flex-landingpage-stretchy-jeans.jpg, for a picture showcasing the stretch of the jeans.

## Multi domain and language SEO
Translations on the Shopify platform
To rank on Google in more countries and create a better customer experience, translating store content is crucial.

There are two “places” to put translations:

- On a CCTLD = Country code top level domain
- On a path, by putting a path country prefix after the domain name
### CCTLD - country domains
Famme has several CCTLDs:

- famme.no
- famme.se
- famme.fi
- fammestore.dk
- fammesportswear.com
Each domain should have its own translation. The language should be Swedish on famme.se, danish on fammestore.dk etc.

### Country path
For countries where we do not have a CCLTD, we can have translations on another path.

- /de for German
- /fr for French
- /es for Spanish
What would be the url for Vortex leggings for different language versions:

- https://fammesportswear.com/de/products/vortex-leggings-2
- https://fammesportswear.com/es/products/vortex-leggings-2
- https://fammesportswear.com/fr/products/vortex-leggings-2
- https://fammestore.dk/products/vortex-leggings-2
- https://famme.se/de/products/vortex-leggings-2
Note that the path, often called the “handle” in Shopify documentation, is the same, only the domain or path prefix is different.

The path might be different for famme.no, but that is because that store is on another Shopify store / Shopify backend. That means the Norwegian store is not translated, it has only one language version, Norwegian.

Our two backends:

Norwegian store (yes, name makes no sense): https://famme-international.myshopify.com
International store: https://famme-eur.myshopify.com
### Domain setup shopify
### Translations
Translations are stored in several places. But most are stored in the locales folder in the theme files.

The naming convention is LANG.json, so da.json contains the translations for Danish language.

Most theme text is stored in the locales folder in .json files. But you will not find product descriptions email templates and many other texts in the locales folder. Shopify stores translations of resources like:

Product
Collection
Navigation
The full list of resources.

 

There is no native GUI as of this writing for translations. But several apps have a user interface for storing and retrieving translations from Shopify, we use the app “translate my store”.

Translation app functionality
Manual translation
You can manually translate each resource type, for example collection titles.

Automated translation
Be careful with automated translation, it should only be used for certain resouce types. For example “Vortex leggings” should not be translated to “virvel tights”, but “Vortex tights” should be fine.

Translation results are OK for product and collection descriptions , but probably quite a few bad translations. Should be easy to spot for Danish and Swedish if it sounds stupid

Resource types to auto-translate:

Navigation. Often works with a few mistakes
Product descriptions
Collection title and descriptions. NOT meta descriptions and meta titles, so do not translate everything under the collection resource type. “advanced filter” must be used in the app.
Online store theme
Article, Blog and page can be risky. Important pages like return and exchanges should probably be verified with a native speaker.
Video SEO - Shopify or YouTube hosted videos
There are two ways to upload videos to Shopify:

Hosted on Shopify
When uploading to Shopify there is a limit of 60 seconds, so either speed up the video,while preserving or removing pitch, or clip unnecessary parts out.

 

Hosted on YouTube. This is what we should always use in Famme since Google ranks YT hosted videos higher
Hosting on YouTube should be fine. In the YouTube description include a link to the product. The video can be unlisted, so it does not show up in search results if we want to hide it.

 

Deduplication and consolidation of content
We do not only want to have relevant content. We want to not have irrelevant content. Obviously it is harder to find something relevant when there is a lot of “noise” on the site.

If we are trying to rank for sportswear, but write about soap operas. Google might wonder, just like a person visiting our page, what is this page about?

We need to make it easy for Google to understand what the page is about and avoid confusion.

Remove irrelevant content
Blog posts about SEO just summarizes what Google says in their documentation in most cases. The best and most accurate information is thus SEO documentation directly from Google.

To avoid irrelevant content from “polluting” the SERP (search engine result pages), there are several things to do. Crawlers, like Google’s web crawler, works in such a way that they can selectively choose to index pages or not. That can be because you “tell Google” not to crawl a page or that Google for some reason decides the page should not be indexed because it is not “that important”.

What can we do to decrease irrelevance:

Avoid duplicate content
Use robots.txt to avoid crawling of duplicate or unimportant resources. See Famme’s robots.txt at famme.no/robots.txt
No-index non-important pages that do not need to be available on SERP
Consolidate articles
Remove unnecessary information
Practical examples
Avoiding duplicate content
For product description, do not copy one product description to another product. Try to vary the text even if the leggings have a lot of the same properties
No collection texts should be equal, if they are equal or similar, could it be 1 collection?
For blog posts, do not write about the same thing in two separate articles unless you have a very good reason to. It is better to link to the article with the duplicate information
Robots.txt
All Shopify stores has a robots.txt file, for instance famme.no/sitemap.xml, that blocks crawlers from indexing cart pages and search results. Indexing and showing on the SERP a search for “test” on famme.no is not valuable to anyone, since searches vary wildly, it makes sense to not index searches.

Removing non-ranking and consolidating articles
This requires some thought and research.

What pages are too similar?
Are some pages answering the same search intent? If yes, can they be merged or rewritten?
When is it time to remove a page?
Product pages and collection pages
Product pages cannot seldom be merged or removed without good reason. Famme has consolidated all colors of a product into one url, many stores have all colors as separate products, which can lead to duplicate content issues and cannibalization of rankings.

When a product is discontinued it is important to setup a redirect to a similar product, or just hide the product from collection pages but still keep the product on the page. This is especially important for products ranking and getting organic traffic. A user landing on 404 can mean lost sales.

For collection pages, redirecting is also important if you delete the collection or rename the collection handle.

Using search console to find consolidation / deleting ideas
So ultimately, we want traffic. If a page is not getting traffic, we should consider deleting it. Let’s try to go page type by page type to see if we find poor performing pages.

Search for the following in search console in a period of 3-6 months:

page contains ‘products’. All product pages contains ‘product’ in the URL
page contains ‘collection’
page contains ‘blog’
page contains ‘page’
That covers all major page types on the Shopify platform interesting for SEO. Also, to avoid branded searching ‘polluting’ the analysis, do a query does not contain famme|femme|fanme negative regex search.

Let’s start with analyzing the blogs.

For Famme, as of this writing, our best performing articles that is getting traffic for non-branded searches is an article about maternity leggings.

If a blog posts have been up for more than a month and not getting impressions, one has to consider:

Deleting it, it is not relevant
Merging it with an existing article
Improving it
If you go to this link: https://search.google.com/search-console/performance/search-analytics?resource_id=sc-domain%3Afamme.no&page=*blog&breakdown=page&num_of_months=3

And sort by impressions, you will see candidates for deletion. Ask yourself, are you answering anyone’s questions with this article?

If the article is newly written, give it some time, else delete, consolidate or improve the article.

Sometimes the URLs has changed, so a blog article might perform better than what it looks like if you look at an old url structure for the blog post.

The same process can be done with collection pages and product pages, but instead of merging and deleting, it is more likely to try to improve the product description and internal linking to the product.

Are we missing high volume keywords from the descriptions? Do we link to the products from relevant blog articles? etc.

See what Google has not indexed - What Google thinks is not relevant
Go to the coverage report in GSC and choose “excluded”, here you can find “Crawled - not currently indexed” URLs.

In many cases you can find new articles / pages that Google has not yet indexed. If a page stays here for a long time Google might evaluate that page as non-relevant / not important.

Click through rates
Content that is already ranking at the first page, might get few clicks if the click through rate is bad. Click through rate is proportional to position in the SERP. To increase the click through rate, we can do two things:

Improve the page to rank higher, Google already thinks these articles are somehwat useful / relevant, so ranking 1st place is not impossible
Improve the meta description and title to improve CTR
To improve the CTR based on title and desceription changes, we need to understand the psychology behind what makes people click. If people look to compare products, then “best i test” and similar might trigger people. For transactional searches “Free shipping” and similar USPs might be useful to write. Google “Zalando” and look at the description texts, they are “keywordstuffed” with “gratis frakt & retur” and similar.

How much is traffic worth?
When paying for something, you get value back. Often the value is intangible, sometimes it is tangible. In marketing we often want to spend money to get money back. And we want more money than we spent.

It can often be hard to calculate ROI, return on investment, as there are a lot of costs that marketers might not be aware of. Product cost, shipping cost, customer service cost etc. There are too many variables to take everything into account, so one should focus on the most important factors.

How to get the value of a visitor
Assumptions:

Average order value including shipping is 600 NOK
Site conversion rate: 3.5%.
Average cost is 200, including shipping of products, product cost etc. COGS = cost of goods.
VAT is 25%, so to remove it, multiple by 0.8 from incl VAT prices
If every visitor had the same 3.5% chance of converting, each visitor is worth:

(price * exclude_vat_factor - COGS) * conversion_rate
(600*0.8 - 200) * 0.035 = 9.8 
That means we can pay 9.8 kr to get a visitor on our website, and we will be break even. If you can double your conversion rate, or your margins, you can pay 2X for each visitor.

How does this relate to AD spend
On Google search and shopping ads, you pay per click, i.e per visitor. Knowing how much you can pay for each click / visitor, is crucial to not wasting money.

Google ads - key takeaways
Google shopping and search ads
Search ads dispalys above organic search results in the search tab in Google
Google shopping ads shows above search ads when people do product searches
How much should you pay? - Max cost per click(CPC)
Some questions to keep in mind:

What is the conversion rate of the customer?
What is the expected conversion value of the customer?
What is the lifetime value of the customer?
So you might think: It is impossible to find the exact conversion rate. That is true, but you can still give an estimate that is a good guess. So our conversion rate in general is about 4%. But a person specifically looking for a scrunch leggings and googling it, I would say at least is average in terms of conversion rate, while a person looking for “men’s leggings” is less than average likely to convert.

Compare some searches:

Nike leggings Vs. Famme leggsings -> Famme makes this more likely to convert
Leggings with cotton Vs. Leggings with scrunch -> We do not have cotton leggings. Scrunch wins
White leggings Vs. Blue leggings -> We do not have white leggings at the moment, Blue wins
Seamless leggings Vs. Leggings -> Seamless leggings is something we have A LOT of, while just "Leggings" 
could be relevant or irrelevant, therefore we should be willing to pay more for the seamless search
In general: More specific searches that are “guaranteed” to be relevant, we should pay more for.

How to find bad performing search keywords
Look at conv value / cost. If it is low, and there are many clicks, you must ask if there is a mismatch between the search and the product you try to sell, or if the landing page is simply bad.


Brandjacking
As a brand, we cannot “naturally” rank for branded search terms other than search queries containing “Famme”. We do not sell Nike, Adidas or Gymshark, therefore we cannot rank for “gymshark tights” on a product or collection page.

But, a search like “Gymshark tights” is actually very relevant. The person is probably looking for a leggings that is quite similar to what we have, and they can get it much cheaper and with better shipping and service than at Gymshark. Therefore trying to get the traffic for branded search terms is relevant.

Read this article about brand jacking for some real world examples.

NB! Important to not mix brand jacking articles together with other articles we have. It can be put under a separate blog “merker” / “brands” instead of under a product category blog or similar.

To see results of brand jacking at Famme, go to search console and filter on queries containing “gymshark”.

Examples for Famme competitors
Replace “brand” with Gymshark, Adidas, Icaniwill and other similar brands.

brand rabattkode / brand discount
brand review
brand tights
brand , for instance gymshark flex leggings, fitjeans 360 etc.
brand Norge / brand in general for countries we are targeting
brand retur
brand kundeservice
brand outlet
Om brand / about brand
All those above could be H2 section headers

For instance:

h2 Gymshark flex leggings

Gymshark flex leggings is a seamless tights....
Then include a link to the seamless tights famme collection.

Writing a brand jacking article and using ads to drive traffic
If you want to drive organic traffic to your website, then why not* drive paid traffic as well? Assuming the traffic is relevant it has a conversion rate higher than 0, and thus the bid should be higher than 0. The higher conversion rate you think a page has, the more you can bid in general. People searching for other brands are less likely to convert than people searching for your brand. It can be hard to know if a brand search is less likely to convert than a generic term, that will probably depend upon brand. The closer our brand is to another brand, it makes sense to assume that the conversion rate is higher. Also, since brands may carry different product types, the “brand X” searches may differ in conversion rate.

Some examples:

Arcteryx searches are less likely to convert than Gymshark searches.
Arcteryx turtights is less likely to convert than Arcteryx treningstights since we do not have turtights at the moment. At least not what is showing up in search when googling turtights.
Icaniwill searches is more likely to convert than generic Nike searches. We have a higher overlap in customer with Icaniwill
