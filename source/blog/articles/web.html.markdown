---
title: Webdesign adaptatif
date: 2013-12-04
page_title: Comment concevoir un design adaptatif ?
---

It's no secret that mobile web traffic will soon leave desktop traffic in the dust — sooner than you think. In the US alone, mobile accounts for 20% of web traffic . More than half of all traffic in Asia and Africa comes from mobile. On top of that, there are thousands upon thousands of devices that can be used to access the Web. Designing responsive websites that work across all devices is how we can rise to meet this challenge.

Ce n'est un secret pour personne, le trafic de l'Internet mobile sera bientôt quitter trafic de bureau dans la poussière - plus tôt que vous le pensez. Aux États-Unis, il représente les comptes mobiles pour 20% du trafic web. Plus de la moitié de tout le trafic en Asie et en Afrique provient de mobile. En plus de cela, il ya des milliers et des milliers de dispositifs qui peuvent être utilisés pour accéder au Web. Conception de sites Web adaptés qui fonctionnent sur tous les appareils est de savoir comment nous pouvons relever ce défi.


Responsive Design, a term coined by Ethan Marcotte , allows you to build one fluid site that can shrink or stretch to fit any screen size on any device. With fluid grids, flexible images and media queries, we don't have to whip up a separate, mobile-dedicated website. We only have to build one, which is a time saver. We can rapidly prototype and move quickly into production code.

Designing responsively enables us to build for four corners, no matter the size, rather than one specific device.

Four-corners
The Perks of Designing Responsively

There are many benefits to responsive design. Here are a few of them :
Future Friendly
Designing responsive sites allows you to be prepared for devices that don't even exist yet because you've already ensured that your product will scale to any four corners.

The Three Tenets of Responsive Design

When Ethan Marcotte coined the term Responsive Design, he also come up with three tenets that hold true to this day.
Grid_sketch
Fluid Grid
A flexible, fluid grid that isn't fixed and is easily adaptable to any screen size.

Flexible_images_sketch
Flexible Media
Media that isn't fixed-width pixels and can be proportionally resized by the browser.

Media_queries_sketch
Media Queries
Allows us to select specific styles based on certain device characteristics and classes.

Getting Fluid with the Grid

It's the foundation for your responsive designs.
The term grid brings to mind rigidity, an inflexible and stagnant system that doesn't bend or move. However, grid systems have a variety of helpful benefits.

Yet, when it comes to responsive design, we aren't talking about an old school 960px-locked grid. What we need is a fluid grid, one that is flexible and based upon percentages rather than pixels. Columns determine the width of where content is placed, whereas the content will determine the height. This type of grid can scale up or down, depending on the screen size of the device it's being displayed on.

As Ethan Marcotte has put it , a flexible foundation is crucial for responsive design to be effective.

Building_zurbian
Benefits of Building With The Grid

Build with the grid puts your design at a huge advantage :
Uniform
Uniformity
A grid ensures consistency between webpages, reducing CSS coding errors. It also helps with reliable HTML placement.

Less
Less Code
With a grid system, you're not coding from scratch, which saves a lot of time. Another boon is that the grid makes iterating faster and easier.

Structure
Structural Control
A grid not only allows us to organize elements, but also offers control over the visual and structure of the page.

Grid Concepts

Here are a few concepts that you should be familiar with when it comes to a responsive grid.
Box Model
A box model is part of a browser. We recommend using box-sizing to change the type of box model a browser uses. This allows for backwards compatibility with older browsers.

Source Ordering
Source ordering allows you to have the order of your mobile site and your markup be different from the grid on your page.

Semantic Grids
With a semantic grid, you can attach grid properties to elements in your markup that are semantically correct. A semantic grid requires a preprocessor, such as Sass or Less.

Nesting
A fluid grid allows for sub-grids within the existing grid — or nesting. This allows for more complex and visually interesting layouts.

Offsets
Offsets allow for additional space between columns in a row. Offsets are essential to ensure consistent legibility and that coveted breathing room.

Examples of Some Heavy Griding

One Flexible Image to Rule Them All

Flexible images aren't locked in fixed pixels.
Images_sketch
What we mean to say, of course, is flexible media, which includes images and videos, that can adapt depending on the screen size. This type of media doesn't depend on static pixels or fixed sizing.

Flexible images are responsive in HTML to the width and height of a screen, as well as every pixel density from low res to retina displays. To make this happen, images are set at their max-width of 100% so that they can can rest in the grid, adjusting accordingly to a variety of screen sizes.

However, this is easy to do partway and hard to do right. Flexible images are simplest with just CSS and scaling with the grid. Harder is loading the right resources for the right device. It's possible to use hidden-classes to swap larger images for smaller ones on mobile. But both images will still load, which can muck up the performance of a page. This is something that we still have to work on to perfect.

Desktops, Tablets and Smartphones, Oh My!

Adjust page elements to your preference with media queries.
Adapting_sketch
Mobile-first
More importantly, designing mobile first means we're not building sites starting with the desktop view and gracefully degrading down to smaller devices. Going from the desktop to the mobile, we may find that not all of our content will neatly shrink down and fit. With mobile first, we can progressively enhance from a smaller screen to larger ones.

Ie_rip_sketchA huge boon for a mobile-first approach is that it takes account that some devices and browsers, like IE7, don't fully support media queries.

Developing With Media Queries

With media queries you can make your page adapt in big or small ways to a variety of criteria. Media queries are what make it possible to have a great experience, no matter what the physical hardware is like.
Media Queries and the Navigation
One common use for media queries is to make changes to your navigation. Consider a simple horizontal nav like you might find on a marketing site: Products, Team, Experience, Contact, etc. On a larger display that might work fine, but a wide nav on a smartphone will not. With media queries that check against the display width of the device, we can have a horizontal nav become vertical, for example.

/* This is the example CSS of a simple horizontal nav */
ul.nav { display: block; margin: 0; padding: 0; overflow: hidden; }
ul.nav li { float: left; padding: 0 10px; margin: 0 18px 0 0; }

/* This is a media query that checks if the window/device is less than 768px wide, basically the size of devices smaller than an iPad */

@media only screen and (max-width: 767px) {
  /* Now we can drop in new CSS for the nav that will override our previous code */
  ul.nav { margin: 12px 0; }
  ul.nav li { float: none; padding: 5px 10px; margin: 0; }
}
This is a very simple example, but the key component is the media query. We’re stating that this applies to screens (this is pretty standard and there are some other options but not widely used) and that we want the following styles to apply if the screen has a max width of 767px, basically anything less than 786px.

Media Queries and the Grid
Perhaps the most common use of media queries in responsive designs is to make changes to a typographic layout grid. Most grids are built to be desktop first — they start by creating rows and columns, sometimes that are a fixed pixel size and sometimes percentages. On small devices those columns become unreasonably slim, so the simplest solution is to abandon them on small devices and have the content simply flow down the page. A simple example might be:

/* Here would be the column size declarations for desktops - the default view */

.eight.columns { display: block; float: left; width: 66%; padding: 0 10px; }
    @media only screen and (max-width: 767px) {

    /* And here we would override all columns to be simply block-level elements */

    .columns { width: auto; float: none; padding: 0; }
}
Very simple, but very effective. Many frameworks that support responsive design do something like this by default, though some follow a mobile-first philosophy and use media queries to add the column sizes back in, rather than removing them.

Media Queries and Content Length
A final common use for media queries (and don’t get us wrong, there are a lot of uses for media queries) is to manage the readability of your content. Using media queries to increase or decrease font size, and thus increase or decrease the content length of a line, is a common practice that can really help users have a better experience with your site.

Try using media queries to change your header and paragraph sizes, line heights or even typeface. There are some interesting and handy things that can be done by experimenting in this area that we won’t get into right here.

Still Room for Improvement

We're just beginning to solve a lot of the problems with living in a multi-device world. That being said there is still plenty of room for improvement when it comes to responsive design.
Navigation
Traditionally, navigation has run horizontal to a page. But with responsive web design, navigation has to collapse vertically and not overpower the page. It also has to scale, so tons of links and nesting won't work either.

Images
Images have to be able to scale for different devices and still be large enough to handle big displays. But high-pixel images even if it's hidden can muck up a page's load since it will still load. But better solutions are on the horizon.

Tables
Making large data tables work in a responsive design can be a pain in the butt. They can't overflow and can break a responsive layout. That means you won't get to see all the data or be able to compare rows with a key column. Although, there are some solutions out there, like this one .


