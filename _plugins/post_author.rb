require 'rubygems'
require 'pry'

module Jekyll
  class PostAuthor < Liquid::Tag
    def render(context)
      if author = context["page"]["author"] || context["post"]["author"]
        author_data = context["site"]["data"]["users"].detect{|data| data["login"] == author}
        author_data ? "<a href='#{author_data['permalink'] || ('/users/'+author)}'>#{author}</a>" : author
      else
        return nil
      end
    end
  end
end

Liquid::Template.register_tag('post_author', Jekyll::PostAuthor)
