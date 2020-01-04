# Restaurant Menu

![Restaurant Menu menu display](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20menu%20display.png)

Restaurant Menu is a complete Ruby on Rails MVC application that allows users to create and display restaurant menus. 

Users can have many restaurants. A Restaurant can have many menus with categories and items. 

Here's a [demo video](https://youtu.be/pwqUbxWh39Q).

## Features

- Third party user authentication with OAuth 2.0 Facebook strategy
- Standard user authentication with BCrypt
- Server side Active Record validations and client side form display of validation errors for validating user input
![Restaurant Menu new menu error message](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20new%20menu%20error%20message.png)
![Restaurant Menu create account error message](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20create%20account%20error%20message.png)
![Restaurant Menu password confirmation error message](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20password%20confirmation%20error%20message.png)
- Access recently updated items in the Items tab or at /items/recently_updated
![Restaurant Menu recently updated items](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20recently%20updated%20items.png)
- Quickly filter items without prices in the Items tab or at /items/no_price
- Option to include item image on item show page
![Restaurant Menu item page](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20item%20page.png)
- Follows MVC framework
- Uses RESTful routes
- Nested Item resource using RESTful routes (i.e. /menus/1/items, /menus/1/items/new)
- Styled using Bootstrap

![Restaurant Menu home](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20home.png)

![Restaurant Menu restaurant page](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20restaurant%20page.png)

![Restaurant Menu all items](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20all%20items%20list.png)

![Restaurant Menu new item form](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20new%20item%20form.png)

![Restaurant Menu new menu form](https://raw.githubusercontent.com/natjng/restaurant-menu/master/Restaurant%20Menu%20new%20menu%20form.png)

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
