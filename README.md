# DITA TO PDF WITH ECLIPSE
This program runs inside Eclipse, an integrated development environment (IDE) and is mainly a Java based project in that all the code libraries use Java (Apache FOP, Saxon, DITA Open Toolkit, Apache ANT, Eclipse) and it also uses XSL and XML heavily.   Development was originally done in oXygen XML Editor then ported to Eclipse.

This project takes DITA XML as input and transforms it to PDF with the DITA Open Toolkit and a custom made plugin using Apache Ant.  Using PDF allows us to print a nicely formated documents on paper. Using Eclipse generating the PDF output can be done in one click by building the project and this creates a publishing pipeline making all the different PDF's one after the other.

Darwin Information Typing Architecture (DITA) is an XML data model for authoring and using DITA-OT you can publish those ideas. The DITA standard is maintained by the OASIS DITA Technical Committee. Some of the largest and most successful companies in the world use DITA. [Companies using DITA](http://www.ditawriter.com/companies-using-dita/)

The Roadmap for this project is to make this into an easy to follow tutorial on how to build and customize DITA-OT PDF plugins and publish your DITA content using Eclipse.  There maybe an attempt at building DITA-OT PDF plugins using newer versions of DITA-OT. 

The 'info.debrief' plugin has been extracted from another open source project I worked on. The other 'sample' plugin is a vanilla plugin that i created online on a DITA-OT plugin customization site.  

I should be adding more samples soon.


##Project Set Up, Build and Run

1. 	- Download Eclipse Mars at https://eclipse.org/downloads/ and install and then open.	
	- Clone Git repo
	- Switch your Eclipse workspace to the parent of the folder you cloned into
	- Then go -> File -> New -> Project
	- Select 'Java Project' click next
	- Enter 'dita-to-pdf-with-eclipse' in the Project Name field
	- Un-check location checkbox and enter in the parent folder of the project. In project layout select -> 'Use project folder as root for sources and class files' radio button and then click next.
	- on the next screen just click 'Finish'
	- You must add the JAR files from SaxonHE and DITA-OT to Ant inside Eclipse. Go Preferences -> Ant -> Runtime -> Classpath tab -> click Global Entries -> click Add JARs -> navigate to 'libs/DITA-OT1.8.5/lib' and add all the JAR files from that directory.  Click add JARS again and add 'saxon9he.jar' from  'libs/SaxonHE9-6-0-7J'.  Make sure to click Apply and then click Ok.
	
2.  - Right click on build.xml and select -> Run As -> Ant Build -> (first one)
	- This should run and build and use as input both the DITA XML in the 'dita-test-files/debrief/' folder and the three ditamap's from the 'libs/DITA-OT1.8.5/samples' directory and will produce four PDF's in the  'output' sub folders 'output/debrief/pdf' and 'output/samples/pdf' folder.
	- Transformation and rendering (printing) occur in this step and the 'info.debrief' custom DITA-OT plugin produces a custom designed PDF via the DITA-OT base libraries, an XSL - Formatting Objects Processor (FO Processor) and the transformation engine SaxonHE.  The other plugin 'sample' is a vanilla plugin with very little customization that makes the three sample PDF's.
	- I used Apache FOP 2.0 for the FO Processor, DITA-OT 1.8.5 and SaxonHE9-6-0-7J from Saxonica as the transformation engine 

	

##How DITA-OT PDF Plugins work

Plugins are placed in the DITA-OT plugins directory.  You can see the plugin I built in this directory named 'info.debrief' and the auto built vanilla plugin named 'sample'.

When ready a plugin must be integrated into DITA-OT using Apache Ant. I built this project using OS X and I installed Ant through Homebrew. 
 
To integrate a new plugin on the command line from inside the root DITA-OT folder it would be -> ant -f integrator.xml

You can also run the integrator inside Eclipse as an Ant build by right clicking on '/libs/DITA-OT1.8.5/integrator.xml' and selecting -> Run As -> Ant Build and this should integrate the plugin with the toolkit.

Every plugin has a 'transtype' -> the two transtype's are 'debrief' and 'sample'

PDF Plugins are comprised of some XML config files, some artwork and some custom XSL (XSLT/XSL-FO/XPath) code 
DITA-OT provides that base XSL code that you 'override' with your custom work.

The two main files that configure plugins are plugin.xml and integrator.xml which should be in the root of the plugin folder.  The 'cfg' folder contains the rest of the customization.

Custom XSL can be placed in two XSL files both named custom.xsl.  I placed all the custom code at 'libs/DITA-OT1.8.5/plugins/info.debrief/cfg/fo/xsl/custom.xsl' for this project.  The other file is seen in the adjacent 'attrs' directory. 
 
Placing the custom code only in these two files follows best practice techniques on how to build a DITA-OT PDF plugin.

	
Eclipse - https://eclipse.org/ 

Apache FOP - https://xmlgraphics.apache.org/fop/

Apache ANT - http://ant.apache.org

Saxon - http://saxon.sourceforge.net/

Saxonica - http://www.saxonica.com/welcome/welcome.xml

DITA - https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture

DITA-Open Toolkit - http://www.dita-ot.org/

W3C - The Extensible Stylesheet Language Family (XSL) - http://www.w3.org/Style/XSL/

W3C XSLT 2.0 - http://www.w3.org/TR/xslt20/ 

XSL Formatting Objects - https://en.wikipedia.org/wiki/XSL_Formatting_Objects

XSL-FO Processors - http://www.w3.org/community/ppl/wiki/XSL-FO_Processors

XML - https://en.wikipedia.org/wiki/XML

Adobe PDF - https://en.wikipedia.org/wiki/Portable_Document_Format

The Organization for the Advancement of Structured Information Standards (OASIS) - https://en.wikipedia.org/wiki/OASIS_(organization)

oXygen XML Editor - http://www.oxygenxml.com

DITA-OT installing plugins - http://dita-ot.sourceforge.net/1.7/dev_ref/plugins-installing.html

Generate sample DITA-OT plugin - https://dita-generator-hrd.appspot.com/pdf-plugin/

Creating DITA-OT plugins - http://dita-ot.sourceforge.net/1.5.4/dev_ref/plugins-overview.html

Customizing PDF output - http://www.dita-ot.org/1.8/readme/dita2pdf-customization.html

XSLT FAQ. Docbook FAQ. Braille. - http://www.dpawson.co.uk/

Homebrew — The missing package manager for OS X - http://brew.sh/

Apache Ant Wikipedia - https://en.wikipedia.org/wiki/Apache_Ant

Install Ant with Homebrew - http://brewformulas.org/Ant

Installing Apache Ant - http://ant.apache.org/manual/install.html

Codecademy - Learn the Command Line - https://www.codecademy.com/courses/learn-the-command-line

Codecademy - Learn Java - https://www.codecademy.com/learn/learn-java

Got 15 minutes and want to learn Git? https://try.github.io/levels/1/challenges/1

Ruby regular expression editor - http://rubular.com/

Essential programmer training - http://www.codewars.com/

Mastering Markdown - https://guides.github.com/features/mastering-markdown/

GitHub Desktop - https://desktop.github.com/

Microsoft File Checksum Integrity Verifier - https://www.microsoft.com/en-au/download/details.aspx?id=11533
