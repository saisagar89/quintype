class HomeController < ApplicationController
  require 'open-uri'
  def index
    @stories = JSON.load(open("http://sketches.quintype.com/api/v1/stories"))
    @side_linkes_json = JSON.load(open("http://sketches.quintype.com/api/v1/config"))
    @side_linkes = @side_linkes_json['layout']['menu']#.collect{|s| [s['title'],s['section-slug']]}
  end
end
