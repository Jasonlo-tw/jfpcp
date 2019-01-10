# README

Introduction:
This is a mockup of JumpFromPaper (abbreviation as "JFP" below) official site (https://www.jumpfrompaper.com/) for practicing to build website and demonstrate related skills, like Rails itself, HTML, CSS & Bootstrap...etc.
The main point of this work is "cart" functionality, i.e. browsing products, put them into cart and then checkout. Static pages are mostly redirected to JFP site.
There are still functionalities in plan or neglected in this version, please see the section "next-stage plan" below and comments in source code as "TODO" and "FIXME".

For wireframe, please see the Figma link below.
https://www.figma.com/file/NhsGjjpm1kVPbTrA0LELmWk3/JFP-website-wireframe?node-id=0%3A1

\*Please note, as the specs may change during the process, wireframe differs with the result for many parts.

---

Quick Start:
For recruiters to easier evaluate my skills, please see the processes below.

1. Browse to "/collections" via "SHOP" link in navbar.
   As this is for demo only, there's only three collections: "Art Baby Collection", "Classic Collection" and "Color Me In Collection" with "All Products" also available.

2. Choose the product you may like and read the descriptions.
   If you are interested to buy any of them, click "ADD TO CART".

3. The flash message shows "Added to cart", then you can go to cart via the link above "(number) items in cart" at upper-right corner or continue browsing other products.

4. In "Shopping Cart" page, you can see the products added. You can either modify the quantity of each item form dropdown (unlike the original version, which updates immediately without refreshing, same for subtotal) or "Remove" the item (needs refresh).

5. As you are satisfied with the cart content, please click "CHECK OUT". You'll be directly to contact info page.

6. When you are done with the contact info, please "Continue to shipping method". If you leave any field (except for "Apartment... (optional)") blank, the flash message shows "Please check your info" and you need to complete it.

7. Please confirm the order detail. If you have any comments for this order, please fill it in "Comments" box. Then you can "Confirm Order".

8. The order is sent to the server and the Paypal link is shown; the link is for demonstration only and not implemented yet. You can check the order status from the link "Check order" at upper-right corner, just above "cart".

9. You'll be redirected to "Check order" page. Please fill in your email for order and "Submit" to search for your orders.

10. Your order(s) will be listed by order number. You can check the order content and either "Cancer Order" if the process is in "Payment pending", or "Contact Service" and you'll be redirect to contact page.

---

Project Specs:

Ruby version: 2.4.1
Rails version: 5.1.6.1
Development system: Ubuntu 16.04 (WSL) + Windows 10
Editor: Visual Studio Code
Production server: Heroku

Rails configurations:

- webpacker with Vue (planned to use Vue on some pages, but end up only wrote some Vanilla JS, not even jquery)
- Bootstrap-sass
- DB: SQLite for development, PostegreSQL for production
- template language: erb

---

Definition of "User"

- Anyone that is interested in JumpFromPaper products. They may want to browse product infos and buy items from this site.
- Interviewers who evaluate my skill level.

---

Next-stage Plans:
As the focus is on "cart" function, there are many functions skipped in original JFP site; in addition, there's are some thoughts to make the original site better (which is supported by Shopify). I'm listing them below by categories "skipped" (functions that JFP site has but I skipped) and "improvements" (functions that may make the site better).

Skipped:

- Member account
  In the original plan, this will be implemented with gem "Devise". However as the member function of JFP site is relatively simple, which can be almost simplified to order checking, this function is replaced with checking by email. Besides I'll implement account functionality in next work without Devise.
- Product tagging
  Besides "collections", products are categorized by backpack, shoulder bag, purse... etc., and tagged with "black", "cross body", "gift under \$100"... etc for user to filter products. This is skipped because it's relatively simple as I imagined: just add a column or subtable "tags" in "products" table and filter by tags. Implementing this function makes me learn relatively less stuff, in addition I need to find tags for each product, which is too time-consuming.
- Sort by
  Likewise, users may hope to filter products by selling amount, on-shelf time... etc. Of course it's easy to add these attributes and calculate them from related actions (like adding "selling amount" on checkout), yet the cost-effectiveness is relatively low for a novice backend developer like above mentioned (proposed solution: just use case-when control structure to conditionally sort the products).
- Search
  Indeed it's even faster than filters when you know the product name, just type and Rails will deliver the product page for you. However, once again, as the focus is on "cart" and this logic is simply matching the input with product name (yes I thought of using Elasticsearch, but why all the hassle for configuration just for a simple function?), I choose to skip it.
- Pagination
  I planned to implement this with Bootstrap instead of Kaminari or will-paginate gem. However as I want to focus on backend, this is not the point.
- Paypal sandbox
  Surely I can learn a lot from implementing this API (hey, there's many companies mention "experience with API implementaion" in their job descriptions!) and make clear the process from sending request to API server, receiving the respond and then manipulating the order data, yet the whole process depends too much on JS, it may be faster for me to put it aside for now and ask for help from seniors later.
- Social buttons
  Maybe it can be easily implemented by plugins or gems, but let's just focus on "cart" first.
- Mailer
  Yes it's a very useful functionality for E-commerce site, and many teaching materials would talk about it for its usefulness like "為你自己學 Ruby on Rails" or "Agile Web Development with Ruby on Rails", but once again, let's just focus...
- Recently Viewed and You May Also Like
  Actually I don't really know how to implement them. For "recently viewed", maybe it's about recording the product pages and make it a parameter in session[]. And maybe recommendation engine is built in Shopify. Let's just skip.
- Customer Reviews
  In Wes Bos's "Javascript 30" course, I did learn how to manipulate HTML tags with event listeners. But that's mostly about frontend and simply creating records at backends. Skip.

Improvements:

- i18n globalization
  For a company targeting global market, it's sure thing to support i18n functionality.
- Admin
  Admin can edit the contents of the whole site, like publishing blog posts, putting products onshelf... etc.
- Sales report generator
  I can definitely learn a lot from making it, and it is needed by markting and sales departments. However a e-commerce company would often integrate it like Shopify does, is there practical need to rebuild the wheels?

---

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
