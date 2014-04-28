require 'pry'

module Jekyll
  module CustomTagFilter
    def filter_group_posts(posts)
      posts.select{|p| p.tags.map(&:downcase).include?(@context["page"]["name"]) }
    end
  end
end

Liquid::Template.register_filter(Jekyll::CustomTagFilter)
