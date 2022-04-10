# Avatar Script Process
## 1.) Analyzing
I found that "pretty printing" made it easier to read the document from seeing the structure. 
```
<th> = speaker
[<i> = character action/the way in which they speak
<i> = description
<tr> = divides into sections
<td> = also divides into sections
<p> = seems to appear after the second i when describing whats happening.
```
td and tr are table elements so it may be wise to just delete as i cant think of a use at the moment
im thinking the same for "p"
## 2.) Changing elements
Changing the elements to something more recognizable will make this process a ton easier.
### a.) "[i" --> "charAction"
#### Find: 
```
(\[<i>)(.+?)(</i>\])
```
.matches all is off
#### Replace: 
```
<charAction>\2</charAction>
```
### b.) "i" --> "description"
#### Find: 
```
(<i>)(.+)(</i>)
```
#### Replace: 
```
<description>\2</description>
```
### c.) "th" --> "speaker"
#### Find:
```
(<th>)(.+)(</th>)
```
#### Replace:
```
<speaker>\2</speaker>
```
