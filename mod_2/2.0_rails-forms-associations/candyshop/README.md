# Associations in Rails (including Forms)

## Building a has_many and belongs_to

For our app, we're creating candies and users. A user `has_many` candies, and a candy `belongs_to` a user

- `rails new candyshop`

- `rails g resource User name`––this will create a User model, UsersController, and create a migration for users. Remember that we do not need to say `name:string`. The rails generator will default to use a string:
  - Check your migration files.
  - Other Generating commands: Try to look up the difference. Look at how much magic it does for you?
    - rails g model
    - rails g scaffold

- We need to tell our User that is `has_many` candies:

```ruby
class User < ApplicationRecord
  has_many :candies
end
```

- Let's generate a Candy and tell it that it `belongs_to` a user: `rails g resource User name candy_type user:references`

  - the `user:references` generator does a few things for us:

    - adds the `belongs_to` to our User model:

    ```ruby
    class Candy < ApplicationRecord
      belongs_to :user
    end
    ```

    - adds a reference––foreign_key––to our candies table:

    ```ruby
    class CreateCandies < ActiveRecord::Migration[6.0]
      def change
        create_table :candies do |t|
          t.string :name
          t.string :candy_type
          t.references :user, null: false, foreign_key: true

          t.timestamps
        end
      end
    end
    ```
---

# Testing our Associations

- `rails db:migrate && rails console`

- From the console we can try to create a new candy:
```ruby
  snickers = Candy.create(name: 'snickers', candy_type: 'chocolate')
```
- Notice you won't be able to really create it. Check your DB too. You won't see it. Why? 
  - Because our snicker `belongs_to` a user. Rails will validate the presence of the `user_id` on the candy. In other words, a candy is _dependent upon_ a user to exist.

```ruby
edwin = User.create(name: 'edwin')
twix = Candy.create(name: 'twix', candy_type: 'chocolate', user: edwin)
```

# SUCCESS

![](https://media.giphy.com/media/XreQmk7ETCak0/giphy.gif)

---

# Creating a New Candy with our Form

### Seeding our DB
- You can bulk create and seed data too. Look at in example below:

```ruby
# db/seeds.rb
User.create([{name: 'billybob'}, {name: 'jimmy carter'}, {name: 'angelina jolie'}, {name: 'marc the zucc'}])
```

### Creating the Controller and Form:
- Create your erb Form the Rails way!

---

#### A Quick Note on Collection Select:

[Collection select](https://apidock.com/rails/ActionView/Helpers/FormOptionsHelper/collection_select) is looking for the following in order:

1.  First arg is method we want to call on `@candy: (user_id)`
2.  Second arg is the collection we want to use to populate our dropdown with: `User.all` (or `@users`)
3.  Third arg is the value method; what will show up in our params and as a value in our `<option>` tags: `user_instance :id`
4.  Forth arg is the text method; what will show up inside the option tag, what will the user see? `user_instance :name`

Example Form: Create new candy

```ruby
<%= form_with model: @candy do |f| %>
 <%= f.label "Candy Name: " %>
 <%= f.text_field :name %>

 <%= f.label "Type: " %>
 <%= f.text_field :candy_type %>

 <%= f.label "User: " %>
 
 <%= f.collection_select :user_id, @users, :id, :name %>

 <%= f.submit %>
<% end %>
``` 

#### Other things to checkout:
- Implementing `dependent:destroy` to destroy the associated objects to normalize database
- Utilizing `before_action` in your controllers. 

