source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 5.2.6'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'figaro' # variaveis de ambiente
gem 'simple_form' # para criação de formularios simple se elegantes
gem 'devise' # autenticação
gem 'haml' # html 
gem "haml-rails", "~> 2.0"

# gem 'kaminari' # paginação
# gem 'kaminari-bootstrap' # css
# gem 'ransack' # pesquisas e buscas
# gem 'select2-rails' # selects mais interessantes

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry' # debbug
  gem 'pry-rails' 
  gem 'awesome_print' # console rails c mais amigavel 
  gem 'rspec-rails' # test
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'mailcatcher' # enviar email
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
