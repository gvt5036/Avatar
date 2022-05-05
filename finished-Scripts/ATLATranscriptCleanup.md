# Avatar Transcript Cleanup

# Step 1: Root elements

Since most transcripts were similar in formatting, I began by analyzing the "Appas Lost Days". To begin, every document begins with:
```
[<table class="wikitable" width="100%">
<tbody>
```
I simply replaced this with:
```
<root>
```
After this, at the end of the document we must manually replace:
```
</tbody></table>]
```
with
```
</root>
```
_

I also some redundant tags left as artifacts from the table formed source. These tags reappeared in all transcripts.


```
Find:
<td>\n</td>
```
```
Replace:

```
_

With the previous regex, I found multiple instances of double returns. To fix this, I did the following.
```
Find:
\n\n
```
```
Replace:
\n
```

_

More cleanup must be done here to ensure that no XML is broken. Through manual analysis of a document I came across "b" tags. These seamingly meant nothing and only appeared in one of the initial 5 documents. When using regex, "b" tags will break the code so I had to ensure the tags dont exist.

```
*Dot Matches All
Find:
<b>(.+?)</b>
```
```
Replace:
\1
```

_

Finally, for this step, I would target existing p tags and remove them as they seam redundant and I would later replace them with my own p tags.

```
*Dot Matches All
Find:
<p>(.+?)</p>
```
```
Replace:
\1
```

# Step 2 charAction Tags
For this and some following steps I looked to Julian's regex work 

Next, I aimed to replaced the stage directions tags with our new tags we chose to use.
```
Find:
*Dot Matches All
(\[<i>)(.+?)(</i>\])
```
```
Replace:
<charAction>\2</charAction>
```

# Step 3: Description Tags
```
Find:
(<i>)(.+)(</i>)
```
```
Replcae:
<description>\2</description>
```

# Step 4: Speaker tags
To clean up formatting and allow for unified regex later in this step, I first do a find and replace to clean up unneeded returns
```
Find:
\n</th>
```
```
Replace:
</th>
```
Next I find the th tags and replace them with speaker tags
```
Find:
(<th>)(.+?)(</th>)
```
```
Replcae:
<speaker>\2</speaker>
```

# Step 5: Speech Tags
To clean up formatting and allow for unified regex later in this step, I first do a find and replace to clean up unneeded returns
```
Find:
\n</td>
```
```
Replace:
</td>
```
Next I find the td tags and replace them with speech tags

```
*Dot Matches All
Find:
(<td>)(.+?)(</td>)
```
```
Replace:
<speech>\2</speech>
```

# Step 6: P tags
In the source transcripts there are tr tags symbolizing a new "table row". While we were not working in a table anymore, I thought it would still be useful to keep the division of sections using a p tag.
```
*Dot Matches All
Find:
(<tr>)(.+?)(</tr>)
```
```
Replace:
<p>\2</p>
```

# Step 7: Speaker Attributes
For search purposes, I added speaker attributes with the name of the character to every speaker tag.
```
Find:
(<speaker>)(.+?)(</speaker>)
```
```
Replcae:
<speaker name="\2">\2</speaker>
```
# Step 8: Extra Description Tags
Now as a final cleanup, I search for extraneous description tags found through manual analysis.
```
Find:
<description>(\w+?)</description>
```
```
Replace:
\1
```

# Step 9: Metadata
Now I manually add metadata to each document. As of right now this is just the title of the episode because I feel this is important data 

# Final Thoughts
I feel like there may be more to things we could label for more intricate seacrhes. There are a few more things that could be labeled to make for more indepth search possibilities, but I believe they are out of the scope of these initial XML files for project milestone 3.