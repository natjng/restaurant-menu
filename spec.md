# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many Restaurants) 
- [x] Include at least one belongs_to relationship (Menu belongs_to Restaurant)
- [x] Include at least two has_many through relationships (Menu has_many Categories through Items, Category has_many Menus through Items)
- [x] Include at least one many-to-many relationship (Menu has_many Categories through Items, Category has_many Menus through Items)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (name, description, price, etc. e.g. item.name)
- [x] Include reasonable validations for simple model objects (User - name and email presence, email uniqueness; Restaurant - name presence, phone_number length and numericality; Menu - name presence, restaurant association; Item - name presence, price numericality, menu and category associations; Category - name presence)
- [x] Include a class level ActiveRecord scope method (Item.no_price URL: /items/no_price, Item.recently_updated URL: /items/recently_updated)
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login (OmniAuth Facebook)
- [x] Include nested resource show or index (menus/1/items)
- [x] Include nested resource "new" form (menus/1/items/new)
- [x] Include form display of validation errors (form URL e.g. /restaurants/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate