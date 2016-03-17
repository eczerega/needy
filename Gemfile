source 'https://rubygems.org'


gem 'rails', '4.2.3'

#Herramientas de desarrollo
group :development, :test do
  gem 'progress_bar' #para mostrar una progressbar en la consola en procesos largos
  gem 'quiet_assets'
  # gem 'rack-mini-profiler' #para mostrar estadísticas de velocidad y queries en las vistas
  gem 'railroady' #para generar diagramas E-R de la base de datos. Uso: rake diagram:all
  gem 'rails-rename', '~> 1.0.0' #para cambiarle el nombre a la app con: rails g rename NewAppName
  gem "hub", ">= 1.12.4", :require => nil #agrega funcionalidades extra de GitHub en la consola
  gem 'simplecov', :require => false
  gem 'hirb' #mejora como se muestran las respuestas de tablas de rails c. Uso: Hirb.enable
  gem 'awesome_print' #mejora la forma de imprimir datos en la consola. Uso: ap User.first
end
 

##Servicios Externos
#Login G+
gem "omniauth-google-oauth2"
#Login Facebook
gem 'omniauth-facebook'
#Captcha
gem "recaptcha", :require => "recaptcha/rails"
# Correos
gem "sendgrid", ">= 1.0.1" 

#Para el manejor de assets
gem 'actionpack',   '>= 4.2.3'
gem 'sass-rails',   '>= 4.0.3'
gem 'coffee-rails', '>= 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'autoprefixer-rails'
gem 'jquery-rails'


#Boostrap
gem 'font-awesome-sass'
gem "font-awesome-rails" 
gem 'bootstrap-sass', '~> 3.2.0'

#Herramientas de Rails
gem "bcrypt-ruby", '~> 3.1.2', :require => "bcrypt"	#para encriptar contraseñas y tokes
gem "haml-rails", ">= 0.5.3" #para usar vistas .haml
gem "cancancan"
#para declarar variables de entorno(en el application.yml). Se suben a heroku con: figaro heroku:set
gem "figaro", ">= 0.7.0" 
gem 'friendly_id', '~> 5.0.4' #the name says it all
gem 'eventmachine', :git => "git://github.com/eventmachine/eventmachine.git"

##Herramientas de testing
# Es uno de los frameworks de test más usados en Rails 3 y 4.
gem "rspec-rails", "~> 3.3.3", :group => [:development, :test] #https://github.com/rspec/rspec-rails
# Ayuda a simular cómo usarían los usuarios la aplicación.
gem "capybara", "~> 2.4.4", :group => :test #https://github.com/jnicklas/capybara
# Es un set de estrategias para eliminar la base de datos en Rails.
gem "database_cleaner", "~> 1.4.0", :group => :test #https://github.com/DatabaseCleaner/database_cleaner
# Es una colección de tests de RSpec para que corran mejor los tests de correos.
gem "email_spec", "~> 1.6.0", :group => :test #https://github.com/bmabey/email-spec
# Reemplaza a las fixtures a la hora de hacer factorías de modelos para rellenar la DB.
gem "factory_girl_rails", "~> 4.5.0", :group => [:development, :test] #https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
# Un pequeño framework de tests para complementar RSpec.
gem "minitest", "~> 5.5.1", :group => :test #https://github.com/seattlerb/minitest
# Genera datos falsos para rellenar factorías de la DB.
gem 'faker', '~> 1.4.3', :group => [:development, :test]
# Permite acceder a las session dentro del ambiente de tests. #https://github.com/railsware/rack_session_access
gem 'rack_session_access', "~> 0.1.1"

gem 'metamagic' #se usa en el application.html para cambiar los metatags según el contenido

gem 'responders' #se usan en la api para el tipo de respuesta por defecto

#Subir archivos usando AmazonS3
gem 'cocaine', "~> 0.5.3"
# gem "paperclip", :git => "https://github.com/thoughtbot/paperclip.git"
gem "paperclip"
gem 'aws-sdk', '< 2.0'

#parallax
gem 'parallax-rails'



gem 'pg', "~> 0.18.2"

gem "unicorn", ">= 4.8.3" #servidor con multithread en producion
#gem 'newrelic_rpm'
#gem 'delayed_job_active_record'
gem 'rails_12factor', group: :production #compatibilidad con rails 4
gem 'actionpack-page_caching'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end



