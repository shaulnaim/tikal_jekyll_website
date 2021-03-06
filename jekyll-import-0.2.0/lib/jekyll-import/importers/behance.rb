module JekyllImport
  module Importers
    class Behance < Importer
      def self.require_deps
        JekyllImport.require_with_fallback(%w[
          fileutils
          safe_yaml
          date
          time
          behance
        ])
      end

      def self.specify_options(c)
        c.option 'user', '--user NAME', 'The username of the account'
        c.option 'api_token', '--api_token TOKEN', 'The API access token for the account'
      end

      def self.validate(options)
        %w[user api_token].each do |option|
          if options[option].nil?
            abort "Missing mandatory option --#{option}."
          end
        end
      end

      # Process the import.
      #
      # user - the behance user to retrieve projects (ID or username)
      # api_token - your developer API Token
      #
      # Returns nothing.
      def self.process(options)
        user  = options.fetch('user')
        token = options.fetch('api_token')

        projects = fetch_projects(token, user)

        puts "#{projects.length} project(s) found. Importing now..."

        projects.each do |project|

          details = client.project(project['id'])
          title   = project['name'].to_s
          formatted_date = Time.at(project['published_on'].to_i).to_date.to_s

          post_name = title.split(%r{ |!|/|:|&|-|$|,}).map do |character|
            character.downcase unless character.empty?
          end.compact.join('-')

          name = "#{formatted_date}-#{post_name}"

          header = {
            "layout" => "post",
            "title" => title,
            "project" => details
          }

          FileUtils.mkdir_p("_posts")

          File.open("_posts/#{name}.md", "w") do |f|
            f.puts header.to_yaml
            f.puts "---\n\n"
            f.puts details['description']
          end
        end

        puts "Finished importing."
      end

      private

      def self.fetch_projects(token, user)
        Behance::Client.new(access_token: token).user_projects(user)
      end
    end
  end
end
