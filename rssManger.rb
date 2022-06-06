require 'open-uri'
require 'nokogiri'
require_relative 'rssData.rb'

class RssManager
  
  def loadRssChannelFromUrl(rssUrl)
     
      # Read rss from url (using nokogiri library)
      xmlDoc = Nokogiri::XML(open(rssUrl))

      # Get/set rss channel node
      rssChannelNode = xmlDoc.root.at_xpath("channel")

      # Create New RSS Channel
      rssChannel = RssChannel.new
      rssChannel.Title =  xmlDoc.root.at_xpath("channel/title").content
      rssChannel.Description =  rssChannelNode.at_xpath("description").content
      rssChannel.Link =  rssChannelNode.at_xpath("link").content
      rssChannel.PubDate =  rssChannelNode.at_xpath("pubDate").content
      rssChannel.RssItems = loadRssItemsFromUrl(rssUrl)

      return rssChannel

  end

  def loadRssItemsFromUrl(rssUrl)

      # Read RSS from url (using nokogiri library)
      xmlDoc = Nokogiri::XML(open(rssUrl))

      # Get Xml Nodes
      rssItemNodes = xmlDoc.root.xpath("channel/item")

      # Store RssItem(s) temporarily
      rssItems = []

      for index in 0..rssItemNodes.length - 1 do
        
        # Create New RSSItem
        rssItem = RssItem.new
        rssItem.Title = rssItemNodes[index].at_xpath("title").content
        rssItem.Description = rssItemNodes[index].at_xpath("description").content
        rssItem.Link = rssItemNodes[index].at_xpath("link").content
        rssItem.Guid = rssItemNodes[index].at_xpath("guid").content
        rssItem.PubDate = rssItemNodes[index].at_xpath("pubDate").content
        # Adds new RSSItem to an array
        rssItems.push(rssItem)

      end

      return rssItems

  end

end