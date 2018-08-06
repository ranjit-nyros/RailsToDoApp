## Sample To-Do Rails App
## Component: 
- Rails 5.2.0
- I have used Ruby 2.4.0

### Updated the following 
### Gemfile
gem 'rails', '5.2.0'\
gem 'puma', '~> 3.11'\
gem 'listen', '>= 3.0.5', '< 3.2'\
And run **bundle update

### Model:

-Created application_record.rb and added the following code\
	class ApplicationRecord < ActiveRecord::Base\
  		self.abstract_class = true\
	end


-And Updated all models with ApplicationRecord which is inherited from application_record.rb

-Updated "belongs_to:todo_list" as "belongs_to :todo_list, optional:true" because required: true is deprecated.

### Migrations:

Inorder to solve the issue related to size of strings in rails5

-Updated migration files as\
class CreateTodoLists < ActiveRecord::Migration[5.2]

-Run "rails db:migrate"

### Controllers:

- Checked controllers for the existence of strong params

### Config Files:

- To avoid raise_in_transactional_callbacks  error
	Comment this line in config/application.rb
     config.active_record.raise_in_transactional_callbacks = true
- Updated database.yml pool as pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
- Updated files in bin  and config/environments.
