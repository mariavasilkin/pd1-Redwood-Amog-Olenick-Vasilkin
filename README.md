pd1-Redwood-Amog-Olenick-Vasilkin
=================================

Because it's a big tree! Ha!

Group members:
-Anjelika Amog
-Jake Olenick
-Maria Vasilkin

Description:
  This is an orginal concept for a web browsing management system which automatically creates and manages the websites you go to according to content. 
  The "Redwood" program should be thought of like a Chrome browser extension. Running the Driver.java file is analogous to clicking the icon in the top right for that extension. It is comprised of one or more large quinary heaps (5-children-per-parent, where the basis for heaping is a "generality index") of varying height, displayed via Processing. Its root nodes, as it will have at least one tree, are created by the user and given a name and certain keywords (e.g. "Academic", ["math", "science", "book", "textbook", "assignment"...]). These nodes will contain within them one URL each (subject to change), and their children nodes will themselves contain one URL each (keeping to the example above: "stuy.enschool.edu", with children nodes containing URLs like "http://stuycs-apcs-z.github.io/assignments.html" or "http://websites.nylearns.org/rsandler/"). The program is capable of determining keywords of a webpage, and it will use a webpage's main keyword as the name of the new Node, and all of its keywords as keywords for its own children. Thus, the the APCS webpage might have subnodes containing things like the wikipedia page for heapSort, or the java documentation website. Nodes, besides root nodes, are defined when the user inputs a URL to the program. The program automatically determines where this Node and its URL goes according to its analysis of the page's keywords.  

Instructions (for use and compiling): 
  Run processing sketch Bookmark: type out a name for a bookmark, press enter, then type out the full path of the URL of a valid mostly text page that will be stored in that bookmark
  - up to five children can be added
  
  In main body of repository, compile Driver.java and run. Expected output: text of link prints out in the terminal. Two files, one of the HTML code and one of just the text should have been written.

What Works:

The Driver in the main body of the repository successfully gets the information from the wiki page that we link to, and then removes the html tags from that source code, printing the text out in the terminal. In the Bookmark sketch, a seed node can be successfully created, the HTML code from a valid URL parsed and stripped of the tags. Five child nodes can be created in the processing sketch and they appear visually but the TextConverter function fromURLtoText doesn't work: throws FileNotFoundException while trying to write a new file -- The filename, directory name, or volume label syntax is incorrect

What Doesn't Work:

The method for determining where something fits in the tree is not functional. Everything in the textAnalysis directory is meant to go through a file and create an array of its main words based on relative frequencies, but running the Driver throws a series of exceptions, and so that code has not been integrated to the processing sketch.

Basically we have pieces but we weren't able to work side-by-side enough to put everything together.

Data Structure(s): One large quinary (as opposed to binary) tree. 

