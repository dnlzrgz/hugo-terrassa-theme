# Terrassa - Hugo Theme

Terrassa is a simple, fast and responsive theme for Hugo with a strong focus on accessibility made from scratch.

![Hugo Terrassa theme screenshot](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/images/screenshot.png)

## Theme features

- Coherent responsive design.
- Consistent design throughout the entire site.
- Classic navigation menu in large screen sizes.
- Hamburger navigation menu in small screen sizes.
- Great focus on accessibility.
- Customizable call to action on the home page.
- Contact form.
- Ready for blogging.

And much more.

## Installation

To install Terrassa run the followings command inside your Hugo site:

```bash
$ cd themes
$ git clone https://github.com/danielkvist/hugo-terrassa-theme.git terrassa
```

Or

```bash
$ cd themes
$ git submodule add https://github.com/danielkvist/hugo-terrassa-theme.git terrassa
```

> You can also download the last release [here](https://github.com/danielkvist/hugo-terrassa-theme/releases).

Back to your Hugo site directory open the *config.toml* file and add the following line:

```toml
theme = "terrassa"
```

And that's it.

## Archetypes

Terrassa includes three base archetypes:
* *default*: for content such as blogs posts.
* *section*: for the sections on your Home page.
* *page*: for pages like the About page.

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

You'll get something like this:

```markdown
---
title: ""
description: ""
images: []
draft: true
menu: main
weight: 0
---
```

Some properties are used as follows:
* *title*: is the name that will be displayed in the menu. In the rest of the single pages the main title of the content.
* *description*: in the case of the home page the description is not shown. In the rest of the single pages it is shown as a subtitle.
* *images*: in the case of the home page the first image is used as the background image for the hero and to share on social networks (with [Twitter Cards](https://developer.twitter.com/en/docs/tweets/optimize-with-cards/overview/abouts-cards.html) and [Facebook Graph](https://developers.facebook.com/docs/graph-api/)). In every other page or post is used only for share on social networks.
* *weight*: sets the order of the items in the menu.

## Home page Sections

To create a new section in your Home page follow the next steps:

```bash
$ hugo new sections/example.md -k section
```

You'll come across something like this:

```markdown
---
title: "Example"
description: ""
draft: true
weight: 0
---
```

The *title* is used as the title of your new section and the content is the body. At this moment the *description* is not used for anything.

The *weight* defines the order in case of having more than one section.

### Blog or List pages

To create a Blog or a page with a similar structure follow these steps:

```bash
$ hugo new posts/_index.md -k page
```

> In this case it is only necessary to set, if wanted, the *title* and the *weight* in the *_index.md*.

To add a new posts run the following command:

```bash
$ hugo new posts/bad-example.md
```

Inside this file you'll find something like this:

```markdown
---
title: "Bad example"
description: ""
date: 2018-12-27T21:09:45+01:00
publishDate: 2018-12-27T21:09:45+01:00
author: "John Doe"
images: []
draft: true
tags: []
---
```
The *title* and *description* are used as the main title and subtitle respectively.

> You can find more information about each parameter in the [official documentation](https://gohugo.io/content-management/front-matter/).

Then, the corresponding section will show a list of cards with the *title*, the *date*, a *summary of the content* (truncated to 480 words) and a list of *tags* if any.

![Hugo Terrassa theme Blog section screenshot](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/images/blog-screenshot.png)

### Contact

For the contact page follow these instructions:

```bash
$ hugo new contact/_index.md -k page
```

The *title* and *description* will be used as the main title and subtitle respectively with a contact form. The rest of the options are defined in the [config.toml](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/exampleSite/config.toml).

## Config

For the configuration check the [config.toml](https://github.com/danielkvist/hugo-terrassa-theme/blob/master/exampleSite/config.toml) of the *exampleSite* and the [official documentation](https://gohugo.io/getting-started/configuration/) to see all the options.

## Font Awesome

Terrassa uses the [Font Awesome](https://fontawesome.com/) icons through a CDN. Something that for the moment affects the performance.
