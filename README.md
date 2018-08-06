# Sample To-Do Rails App

Component: 
- I have changed to Rails 5.2.0 from 4.2.10.
- Used Ruby version 2.3.0.

Gemfile:
- Changed the rails gem version to '5.2.0'.
- Changed the gems according to newer version with reference of Ready4Rails website and then updated the bundle.

Config file :
- Hide the line "config.active_record.raise_in_transactional_callbacks = true"

Model:
- Added a file application_record.rb and with the following code
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
- Changed "ActiveRecord::Base" to "ApplicationRecord".
- Added "optional: true" to association "belongs_to :todo_list".
- Added Halting Callback Chains via throw(:abort).

Migrations:
- Added version to migration due to default sizes.
ActiveRecord::Migration ==> ActiveRecord::Migration[5.2]



