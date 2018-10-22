source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in cube_sum.gemspec
gemspec

gem 'bundler'
gem 'rake'

group :test do
	gem 'rspec'	
end

group :develop do
	gem 'rubocop', '~> 0.52.1'
end