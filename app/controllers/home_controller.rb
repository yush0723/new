class HomeController < ApplicationController
  def index
    require 'nokogiri'
    require 'open-uri'
    @titles = Array.new
    666732.downto(666730) do |n|
      doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=free&page=#{n}"))
      doc.css(".sbj//a").each do |d|
        @titles << d.inner_text
      end
    end
  end
  
  def memo
    
    @ho = Array.new
      doc = Nokogiri::HTML(open("http://guides.rubyonrails.org/"))
    doc.css("dl//dd//p").each do |d|
      @ho << d.inner_text
    end
  end
end
