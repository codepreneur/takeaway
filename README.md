Take Away Application
=====================

Week 4 project @ Makers Academy. Simple take away application that takes user orders and sends text messages with
their order information and when it will be delivered via Twilio API.

The objective was to write Ruby code to display a takeaway menu in Terminal which allows for some user interaction. 


<b>Program Features</b>
- Listing of dishes with prices
- User able to place an order by choosing dishes, their quantities and confirming the total cost. If the sum provided by the user is not correct, an error should be raised.
- If the total cost provided is correct, the customer is sent a text confirming the order was placed successfully and that it will be delivered 1 hour from the time of order
- The text sending functionality should be implemented using the Twilio API
- A Gemfile must be used to manage gems
- Mocks and/or stubs should be used as necessary to prevent texts from being sent when tests are run

Technologies used
-----------------

* Ruby
* RSpec
* Twilio

How to use
----------

```shell
ruby lib/takeaway.rb
```

How to test
-----------

```shell
git clone https://github.com/codepreneur/takeaway
cd takeaway
rspec
```


### Extras
- `inject` implementation in Ruby
- `attr_accessor :name` implementation in Ruby

