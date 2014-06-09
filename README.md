pd1-Redwood-Amog-Olenick-Vasilkin
=================================

Because it's a big tree! Ha!

Group members:
-Anjelika Amog
-Jake Olenick
-Maria Vasilkin

Description:
  This is an orginal concept for a web browsing management system which automatically creates and manages the websites you go to according to content. 
  The "Redwood" program should be thought of like a Chrome browser extension. Running the Driver.java file is analogous to clicking the icon in the top right for that extension. It is comprised of one or more large quinary trees (5-children-per-parent) of varying height, displayed via Processing. Its root nodes, as it will have at least one tree, are created by the user and given a name and certain keywords (e.g. "Academic", ["math", "science", "book", "textbook", "assignment"...]). These nodes will contain within them one URL each (subject to change), and their children nodes will themselves contain one URL each (keeping to the example above: "stuy.enschool.edu", with children nodes containing URLs like "http://stuycs-apcs-z.github.io/assignments.html" or "http://websites.nylearns.org/rsandler/"). The program is capable of determining keywords of a webpage, and it will use a webpage's main keyword as the name of the new Node, and all of its keywords as keywords for its own children. Thus, the the APCS webpage might have subnodes containing things like the wikipedia page for heapSort, or the java documentation website. Nodes, besides root nodes, are defined when the user inputs a URL to the program. The program automatically determines where this Node and its URL goes according to its analysis of the page's keywords.  

Instructions (for use and compiling):

What Works:

What Doesn't Work:

Data Structure(s): One large quinary (as opposed to binary) tree. 

