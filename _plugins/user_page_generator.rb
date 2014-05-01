# Generates user page with the user's info and posts

require "pry"

module Jekyll

  class UserPageGenerator < Generator
    safe true

    def generate(site)
      site.data["users"] = []
      Dir.foreach('_data/users') do |item|
        if item =~ /.+\.yml$/ 
          user_data = YAML.load_file("_data/users/#{item}")
          site.data["users"] << user_data
          dir = user_data["permalink"] ? user_data["permalink"] : "/users/#{user_data['login']}"
          site.pages << UserPage.new(site, site.source, dir, user_data)
        end
      end
    end
    
    class UserPage < Page
      def initialize(site, base, dir, user)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'

        self.process(@name)

        # use the user layout
        self.read_yaml(File.join(base, '_layouts'), 'user.html')

        # add the ueser's data to the page data, so it can be accessed in
        # views using {{ page.user_first_name }} etc
        user.each do |k, v|
          self.data["user_#{k}"] = v
        end
      end
    end
  end
end
