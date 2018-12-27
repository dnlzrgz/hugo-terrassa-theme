# Terrassa - Hugo Theme

Terrassa is a simple, fast and responsive theme for Hugo with a strong focus on accessibility made from scratch.

![Hugo Terrassa theme screenshot](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/images/screenshot.png)

## Theme features

- Coherent responsive design.
- Consistent design throughout the entire site.
- Classic navigation menu in large screen sizes.
- Hamburger navigation menu in small screen sizes.
- Great accessibility.
- Customizable call to action on the home page.
- Contact form.
- Ready for blogging.

And much more.

## Warning

This theme is still under development. And that means two things:

1. It's under **active** development.
2. There are still some little details to be improved. Nothing important, however.

## PostCSS

> In the near future this will be completely optional.

For CSS I have made the decision to use [PostCSS](https://postcss.org/) instead of [Hugo Pipes](https://gohugo.io/hugo-pipes/introduction/). So for now, to use this theme you need to have [NodeJS](https://nodejs.org) and [npm](https://npmjs.com) installed.

## Installation

To install Terrassa run the followings command inside your Hugo site:

```bash
$ cd themes
$ git clone https://github.com/danielkvist/hugo-terrassa-theme.git terrassa
```

And now run:

```bash
$ cd terrassa
$ npm install
```

Back to your Hugo site directory open the *config.toml* file and add the following line:

```toml
theme = "terrassa"
```

And that's it.

> For more information about the *config.toml* file read the [official documentation](https://gohugo.io/getting-started/configuration/).

## Content

> If you have any doubts about the following instructions feel free to take a look at the content folder of the *exampleSite* or look at the [official documentation](https://gohugo.io/content-management/).

Terrassa includes two base archetypes (learn more about archetypes [here](https://gohugo.io/content-management/archetypes/)):
* A *default* archetype for content such as blogs posts.
* A *page* archetype for pages like the About page.

So be careful. Creating a new site with Hugo also creates a default archetype that replaces the one provided by Terrassa.

### Home and Single pages

To create your home page run the following command inside your Hugo site:

```bash
$ hugo new _index.md -k page
```

Or to create another page:

```bash
$ hugo new example.md -k page
```

You'll get something like this inside your content folder.

```markdown
---
title: ""
draft: true
description: ""
menu: main
weight: 0
---
```

> On all but the main page the title is displayed.

Some properties are used as follows:
* *title*: is the name that will be displayed in the menu. In the rest of the single pages the main title of the content.
* *description*: in the case of the home page the description is not shown. In the rest of the single pages it is shown as a subtitle.
* *weight*: sets the order of the items in the menu.

### Blog or List pages

To create a Blog or a page with a similar structure follow these steps:

```bash
$ hugo new posts/_index.md -k page
```

> In this case it is only necessary to set, if wanted, the title and the weight in the *_index.md*.

To add a new posts run the following command:

```bash
$ hugo new posts/bad-example.md
```

Inside this file (and anyone using Terrassa's default archetype) you'll find something like this:

```markdown
---
title: "Bad example"
date: 2018-12-27T21:09:45+01:00
publishDate: 2018-12-27T21:09:45+01:00
author: "John Doe"
draft: true
description: ""
tags: []
---
```
The title and description are used as the main title and subtitle respectively.

> You can find more information about each parameter in the [official documentation](https://gohugo.io/content-management/front-matter/).

Then, the corresponding section will show a list of cards with the title, the date, a summary of the content (truncated to 480 words) and a list of labels if any.

![Hugo Terrassa theme Blog section screenshot](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/images/blog-screenshot.png)

### Contact

For the contact page follow these instructions:

```bash
$ hugo new contact/_index.md -k page
```

The title and description will be used as the main title and subtitle respectively with a contact form.

## Config

For the configuration check the [config.toml](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/exampleSite/config.toml) of the *exampleSite* and the [official documentation](https://gohugo.io/getting-started/configuration/) to see all the options.

## Font Awesome

Terrassa uses the [Font Awesome](https://fontawesome.com/) icons through a CDN. Something that for the moment affects the performance of the page and that I'll try to fix soon.

## Docker

You can, if you know, use Docker to test Terrassa locally.

## Make

Shame on me.  
I hope to learn more about makefiles soon and improve as soon as possible.