## *Avatar: The Last Airbender* project: Review

* Site publication: <https://gvt5036.github.io/Avatar/>
* GitHub repo: <https://github.com/gvt5036/Avatar>
* Developers: Graesyn Tefft, Tyler Cameron, Zack Dominick, Julian Giles, Erin Mooney, Kyara Parrish
* Date of Evaluation: 2021-05-09
* Evaluated by: @ebeshero

### Research questions and project design

This team took on a challenge, one of the more ambitious and larger-scale text analysis projects we have seen in this class! In analyzing a large TV series, you took on a serious challenge for organizing and curating your scripts using regular expressions and you couldn't easily *see* the whole collection without querying it computationally. You found a way to prioritize the analysis of speeches and actions based on the quality and regular structure of your script files, and you developed an intricate project that also delivers some cleaned-up scripts to the Avatar fanbase and coding community! (That work should be something your feature a little more prominently on the site, since your cleaned-up scripts will likely interest people within and outside our DIGIT community!)

The website could really do a better job of announcing the impressive work you are sharing! The project's opening page offers a visual guide to the *Avatar: The Last Airbender* series, organizing the episodes by locations on an elaborate image map. While the page welcomes us to explore it does not actually announce the purpose of the project, and investigation of your  research questions seems sort of hidden (unannounced) in a page called "Graphics, set last in the menu bar. My point here is that it isn't clear on the landing page (index.html) of your site what it's here to investigate, except broadly something about the nations in the *Avatar: The Last Airbender* series. 

To find an introductory statement about your project and research goals, we have to locate the Readme.md on the project GitHub repo. I recommend moving the statement there (with some upates) to the index.html of your website--perhaps *above* the image map. You want to announce what we're going to find in this site (and that should include some brief explanation of the image map).

Each distinct HTML page of the site seems a little disconnected from the others in purpose. Is there a way to connect them together a little more coherently? For example, perhaps the character pages could contain, besides the brief description, also contain some charts or small (filtered) network graphs showing the character and which episodes they appears in, or with which nations they are usually associated, and/or something about how many speaking roles they get across the series? You could be providing more "character stats" on each of these character pages to draw this portion of the site more into the text analysis projemlct. 

The "Graphics" page is probably called that because you were concentrating on posting your graphs there! Would it be better named "Analysis" or "Speech Action Analysis" (speechAction.html) to announce the topic you're investigating more clearly? That said, you *do* investigate speeches and actions in depth on that page and we learn a lot about running trends in speeches and actions across the whole series.

For those new to the series, it might help to provide some introduction to how it's organized in "Books" in order to better understand what we're seeing in several of your graphs. Do the "Books 1, 2, and 3" correspond in some way to the original comic book series, or something else, more like "seasons" in TV series? 

Basically these are all suggestions for providing more *overarching explanation* of your topic across the website. Keep in mind that your project website has a wider reach than just the members of our class or even the DIGIT program. Because you have built it on the public-facing web, it seems likely that Avatar fans or people new to Avatar will discover it and be eager to investigate as they're learning more about the show. So my general advice is to find ways to speak to about your work that speak to a wider audience. 


#### Documentation of your methods
Documenting your methods and processes for your project is helpful to future students and even fans of Avatar curious about your coding work, who will be reading your site to see what they might learn from it! 

You provide a detailed discussion of how you built your project in the "Our process" section on your [about.html page](https://gvt5036.github.io/Avatar/about.html). Again, here you could speak a little more broadly to people within and outside our program. (People outside DIGIT won't really know who that mysterious "Dr. B" is, so maybe you can introduce me somewhere?) It can be difficult to explain all the code you wrote to a general audience, but what you did well here is to identify the specific technologies you used and to provide some perspective on your tagging methods. 

What would help in this section is some way to view the code. I would recommend a *code block* to show the `<speech>`, `<description>`, `<charAction>` elements that created the XML foundation for text analysis. This would be something like the code blocks I set in homework assignment pages to show you some sample code. I can show you how to code this, or you can view it "under the hood" of one of the homework pages: you use a `<pre>` element in HTML to preserve the lines/formatting of the code, and you need to escape the XML elements by using `&lt;` and `&gt:` instead of `<` and `>` so you can display the code inline the HTML

You could also link directly into your GitHub repo to show us, maybe, your Relax NG schema when you mention it, and to provide a glimpse into an XQuery file. Showing the Relax NG, if shared in a code block, would do a nice job of documenting the structure of your XML files (like a blueprint) and might provide a helpful basis for describing how you could pull data about speeches and actions from your code.

Overall what you have here is a good, detailed explanation that could be improved to speak to a wider audience outside of our class! 

### Analysis
The "Graphics" page (probably better named the "Analysis" or "Speech Action Analysis" page?) offers your visualized findings for the project, and the team has a lot to say here! 

#### Graphs of the whole Avatar series

The first three graphs give us an overview of the entire series from three different points of view:
* Speech Count Per Episode
* Character Actions Per Episode
* Distinct Characters Per Episode

For each of these you provide some discussion, indicating that the graphs can help lead you back to specific episodes to explore why some have higher or lower counts in each area. The one problem with this is, the graphs don't make it easy to associate a bar with a particular episode. I wonder if there's a way to simplify your reference to the scripts, and also help make them easy to reference across the site?

You could use a list or table somewhere on the site that lists out the titles of the series, organizes them by Book, and gives them a number. You could probably follow the numbering in your source for the script files—*which you should be acknowledging somewhere on your site!* You would need to make a place for list or table on your website (perhaps its own page, or even somewhere on the main index.html page under the image map?) With that in place, the team could use it as a ready reference on your graphs: each SVG bar element (or polygon, or line--wherever appropriate)  could get a `@title` attribute which produces a mouseover "tooltip" in HTML and SVG alike: `@title` can carry the episode number as in `title="15"` so that on mouseover we can quickly correlate it with the 15th episode, and look it up on your listing. 

This can also help with the image map on index.html, where the the titles of episodes that appear on mouseover in the `<iframe>` could *also* be given Book and number information, referring to that list/table of numbered episodes.


#### Speeches vs. actions of specific characters

The next grouping of graphs explores data about particular characters, showing how they compare in speeches vs. actions. These graphs are the best designed on your project site because they are most effective at helping us compare something visually at a glance: well done! I'm impressed with the two different ways (horizontal stacked bar with 50% mark, vs. side-by-side vertical bars) to visualize this data: an excellent visualization experiment with your SVG.

My only recommendation here is to quickly explain why *this* selection of characters? How did you choose which characters qualify as mian characters? Perhaps this selection can be reinforced by your XQuery work: Do these characters appear consistently in the highest count of episodes across the series, or do they have the highest speech counts across the collection?


#### NLP plots from Python / Spacy / Pygal
This section of your site really shines for investigating the language of the different nations in the Avatar series, pulling data based on characters organized by antion from your XQuery. (You might have explained *how you pulled this data* to introduce these visualizations, since it includes speeches of clusters of characters identified by nation). In seeking out which adjectives feature most prominently. "good," "great," and "nice" come up as the most consistently used by all parties, of course, so I wonder if the team tried testing other word forms like verbs, nouns, or even named entites exploring the wealth of options that spaCy NLP makes available? 

What you *did* develop here, quite nicely, is an attention to distinctive adjectives used by "Earth" nation, observing that characters from this group show a higher diversity of adjectives compared to other nations. And your commentary on "happy" language used by the "Fire" nation is fascinating as an indication perhaps of their blissful ignorance of the oppression they impose on others! 

Discovering the diversity of adjectives for the Earth nation might lead us to investigate the *lexical richness* of speech patterns in the series: that is, the number of different words/word stems used in each of the nations. That's an application of NLP that we could investigate further in this project perhaps in another semester! 

#### What about the regex document analysis work? That's analysis too!
Some of your most intensive document analysis work isn't represented on the site, but *should be*. That is simply all the work you did with regular expressions to clean up the scripts and model them in XML. Somewhere on this site you should be proudly featuring tha twork and linking to it in your GitHub repo! You'd be surprised how important this material can be to the Avatar fanbase, as *you have significantly improved on the available resources* for the fanbase to study a series they care about! 

#### Writing quality
Across the board, the writing really needs some attentitve proofreading, especially in the Graphics page. Lots of sentence fragments make it a little challenging to read the analysis smoothly without stumbling. However, the *substance* of your analysis is generally very strong as you're considering how to understand what the graphs are showing us.

Controlling your writing quality on a website is definitely challenging without the standard word processing tools to help flag grammatical issues. But reading your work out loud can help, as well as assigning project team members to read and review it for readability, to make corrections. 

### Website design and user experience

I know the team worked hard on making sure the CSS would work across all the pages on the site, and this was challenging in the last two weeks of the semester. I am glad that you resolved the issues and reconciled all your project pages across the site. The images and text behave responsively on different screen sizes and your use of color and symbols across the site is visually coherent and a real strength of this site. 

These are some of the finer details of perfecting the quality of your website code! 
All `<img>` elements should have `@alt` attributes to describe their content, to make your site maximally accessible for those wtih screen readers or challenges with seeing your visuals. you don't have to fully describe every last detail in the image, but a functional description like "symbol of the fire nation, used for decoration" would be helpful.

#### Dealing with SVG within HTML

The [the w3c Validator](https://gvt5036.github.io/Avatar/graphics.html) gets a little choked up on the Inkscape-generated image map on the index.html page, and there's not a whole lot we can do about that except possibly some find and replace work over the SVG file (probably not necessary).

When I check the HTML of the Graphics page with the w3c Validator (and when I open it in oXygen), I can see that it contains lots of duplicate ids! That is a problem that comes up when you position multiple SVG files within an HTML page. To solve it, you would need to go back to the SVG files and add something distinct to the ids for each one. For example, you could set down a little string for a specific graph representing speech counts, say `spCt`, and then use it in the `@id` attribute values for that graph: `id="spCt1-activate-serie-3"` instead of `activate-serie-3`.  

#### Improving the site navigation menu

The site menu bar doesn't really need to display bullets, and you can remove those with CSS, while still benefitting from the `<ul>` / `<li>` structure. See [w3Schools on bulleted list navbars without bullets](https://www.w3schools.com/css/css_navbar.asp). 

I particularly admire how concise the menu bar is, not taking up a lot of space on the screen yet nevertheless calling attention to itself as a helpful navigation aid. Can you find a way with CSS to be always available in a concise, unobtrusive yet helpful way when you scroll down a long page? 

### Concluding comments
One of the most impressive and encouraging aspects of the Avatar team project was simply *you* all working together and caring about its quality. Each of you pulled together impressively to support one another, and that really helped to make your work an ongoing conversation, driving your research questions, and encouraging each of you to contribute something of your ideas on Slack, on GitHub, and on the website. Some parts of the work (network graphs) got started in your GitHub repos or as class homeworks and didn't make their way into the website, as did a lot of the XQuery (something about a query for cabbages comes to mind), but all of these were stepping stones toward your discoveries about the Avatar series. It has been lots of fun for me to watch this team work and inspired me to pitch in occasionally because I could see where I could help. Thanks for being a model of inclusive activity on this project!

In many ways a project like this is never really *finished*: there is always more you can do and build. The stopping point for this project at the end of a semester could just be a pause until you or other students come by to see how they might build on what you started here. Thank you for creating this project with care for the Avatar series and for each other as teammates. You can maybe now work toward making the project speak more broadly to the wider community of the Avatar fanbase and those within it who also care about coding and script anlaysis (more than you might realize!) 

Well done, Avatar team, and please keep going! :-)
