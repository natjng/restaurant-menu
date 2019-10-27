# Restaurant Menu

Restaurant Menu is a complete Ruby on Rails MVC application that allows users to create and display restaurant menus. 

Users can have many restaurants. A Restaurant can have many menus with categories and items. 

## Features

- Third party user authentication with OAuth 2.0 Facebook strategy
- Standard user authentication with BCrypt
- Server side Active Record validations and client side form display of validation errors for validating user input
- Access recently updated items in the Items tab or at /items/recently_updated
- Quickly filter items without prices in the Items tab or at /items/no_price
- Option to include item image on item show page
- Follows MVC framework
- Uses RESTful routes
- Nested Item resource using RESTful routes (i.e. /menus/1/items, /menus/1/items/new)
- Styled using Bootstrap

## Installation

Clone repository. 

In your terminal, cd to the cloned file. 

Run `bundle install` and `rails db:migrate`. 

You may also run `rails db:seed` to seed the database with some starter data.

## Usage

Run `rails s` to start your server and visit [http://localhost:3000](http://localhost:3000).

Create a new account and add a new restaurant to start building your restaurant menus.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/natjng/restaurant-menu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Restaurant Menu project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/natjng/restaurant-menu/blob/master/CODE_OF_CONDUCT.md).
