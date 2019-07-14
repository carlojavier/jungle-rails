# JUNGLE

A mini e-commerce application built with Rails 4.2.
This project simulates real-world scenarios where developers may have to jump on an existing codebase as opposed to building a 
program from scratch. The assignment gave students the opportunity to challenge themselves by learning a new language on the fly
and using methods such as Error-Driven-Development to progress and learn. Utilized previous research strategy to complete aspects 
of the assignment without heavy guidance and assistance.


## SETUP

1. Run `bundle install` to install dependencies
2. Run `bin/rake db:reset` to create, load and seed db
3. Create .env file
4. Sign up for a Stripe account
5. Put Stripe (test) keys into appropriate .env vars
6. Run `bin/rails s -b 0.0.0.0` to start the server

## STRIPE TESTING

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: https://stripe.com/docs/testing#cards

## PROJECT

!["Product list page with sold out flags"](https://github.com/carlojavier/jungle-rails/blob/master/screenshots/jungle_product_list.png?raw=true)
!["Product view page with reviews, delete reviews, and new review textarea"](https://github.com/carlojavier/jungle-rails/blob/master/screenshots/jungle_viewproduct.png?raw=true)
!["Order cart with list of items"](https://github.com/carlojavier/jungle-rails/blob/master/screenshots/jungle_ordercart.png?raw=true)
!["New product page for admin"](https://github.com/carlojavier/jungle-rails/blob/master/screenshots/jungle_newproduct.png?raw=true)
!["New Category page for admin"](https://github.com/carlojavier/jungle-rails/blob/master/screenshots/jungle_newcategory.png?raw=true)

## DEPENDANCIES

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
