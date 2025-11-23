# Tech Writing for Techies (TWFT)

A multi-platform course to teach the basics of technical writing to non-writers in software development environments. The course is designed with the needs of non-native speakers of English in mind. It also _tries_ not to be boring. (Results may vary.)

You can access the course on GitHub Pages starting at the [course overview](https://asrfs.github.io/Tech-Writing-for-Techies/output/html/00-00-course-overview.html).

The content is created and maintained in AsciiDoc format, structured so that it can be rendered into html explanatory materials, or into HTML5 slides using reveal.js. The slides can then be used for video or in-person presentations of the detailed content (in which case the html files are speaker notes).


## Repository file structure

```
TWFT
|--- .bundle
|--- content            <- this is where all the information lives
|    |--- images        <- used by all the content
|    |--- modules       <- course content: nodes in AsciiDoc, tagged by output format
|    |    |--- common
|    |    |    |--- concepts     <- foundational concepts for the whole course
|    |    |    |--- course       <- information about the course itself
|    |    |    |--- snippets     <- any text that's used in more than once 
|    |    |--- editing-deep-dive <- module containing several topics
|    |    |    |--- instructions <- nodes about this topic
|    |    |    |---etc.
|    |    |--- etc.
|--- css
|    |--- plain.css     <- used to style .html output
|    |--- slides.css    <- used to style reveal.js slides
|--- output
|    |--- html          <- course pages, ready to use
|    |--- slides        <- course slides, ready to use
|--- pages              <- control pages assembling nodes into topic pages
|    |--- exercises     <- .adoc files containing student exercises
|    |--- utilities     <- structural included in multiple topic files
|--- scripts            <- scripts for generating html pages and slides
```

### The content directory

Like the course, the content directory is divided into four stand-alone **modules**:

1. Common (containing introductory material and key concepts)
2. The writing process
3. Editing deep-dive
4. Writing in English (as a non-native speaker)

Each module is made up of **topics**. Topics in turn are made up of **nodes** - individual .adoc files, each covering one aspect of a particular topic. All content on specific area, such as passive-voice sentences, is in its own node.

Content in nodes uses tags (`html` and `slide`) to control what will parts appear in html pages, slides, or both. The tagging can be quite intricate to avoid duplicating text - if you start messing with ctags, check your work!


### The pages directory

`/pages/` controls how the nodes in the content directory are assembled into the topics pages/slides. Each page is made up of AsciiDoc include directives pointing to the appropriate nodes in the content folder. The includes us [conditional processing](https://docs.asciidoctor.org/asciidoc/latest/directives/conditionals/), controlled by a *ctag* variable (short for _content tag_) which determines what output format the content is being built for.

Excercises are stored in `/pages/exercises/` (although they do contain actual content). Each exercise file is a self-contained .adoc file intended only for html publication.

`pages/utilities/` contains small .adoc files with common parameters to be included in the topic or exercise pages.

## Building the training materials.

The `/scripts` directory contains Python 3 scripts to build the slides and html pages.

### HTML pages

The HTML page build script uses Asciidoctor in ruby. See [the Asciidoctor documentation](https://docs.asciidoctor.org) for how to install it.

The script builds both the html pages and the exercises. It should run without errors.

### Slides

Each slide deck is a single html5 page built using [reveal.js](https://revealjs.com/), styled with `css/slides.css`. This css file is heavily modified from an [example](https://github.com/bentolor/java9to13/blob/master/docs/css/presentation.css) created by Benjamin Schmid.

To create the slides, you must use Asciidoctor's reveal.js [Ruby setup](https://docs.asciidoctor.org/reveal.js-converter/latest/setup/ruby-setup/) for reveal.js.

**NOTE**: It's also possible to install reveal.js using Asciidoctor's [Node/JS setup](https://docs.asciidoctor.org/reveal.js-converter/latest/setup/node-js-setup/) or [standalone executable](https://docs.asciidoctor.org/reveal.js-converter/latest/setup/standalone-executable/). If you do this, you will need to change the command in `scripts/slide_builder.py` based on the appropriate guidance from the Asciidoctor-js setup pages.

The slide build script will include four "section title out of sequence" warnings where I used level 4 headings on slides to get the right font size and alignment. It's a hack. I'm terrible at css.

## License

Tech Writing for Techies © 2023 by Abi Sutherland is licensed under CC BY-NC-SA 4.0

This means:
* You can reuse it, but you must give me credit.
* You can distribute, remix, adapt, and build upon the material in any medium or format, for noncommercial purposes only.
* If others modify or adapt the material, they must license the modified material under identical terms.
