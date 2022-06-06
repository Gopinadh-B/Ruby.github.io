# Ruby.github.io
# Creating an RSS Reader Application for Ruby:
The following code is a Ruby version of the Rss Reader Application. The program downloads and displays the Rss Feed of Yahoo News! RSS Stands for Really Simple Syndication and is a type of web feed which allows users and applications to access data on websites in a standardized, computer-readable format.
# Creating  RSS Data Models:
The rssData.rb file contain the data models we will be using to manage and store RSS Data from an online RSS Feed. We will need to create 2 Data Models, the RssChannel Model to store information about the RSS Feed, and the RssItem Model to store the data from the items inside an RssChannel.
# Creating RssManager API:
The rssManager.rb file is our custom Library/API to extract and parse data from online RSS Feeds. The rssManager.rb makes use of 2 libraries that are called open-uri and nokogiri. The open-uri library is used for HTTP, HTTPS or FTP connections and allows the user to open a URL as though it were a file. The nokogiri library is used for parsing XML Files. The rssManager.rb also implements the rssData.rb we have created earlier to manage and store data from our RSS Feed.
# Create Ruby Main File:
The Main.rb file is the entry point of our RSS Reader Application. Usually In computer programming, an entry point is where the first instructions of a program are executed.
# Final result:
After executing the Ruby Script the RSS Reader Application will display the latest YAHOO News!.
