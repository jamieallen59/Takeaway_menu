Takeaway Menu
========================

## The challenge

Write a Takeaway program.

Implement the following functionality:
- list of dishes with prices
- placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
- The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
- Use twilio-ruby gem to access the API
- Use a Gemfile to manage your gems
- Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
- However, if your Takeaway is loaded into IRB and the order is placed, the text should actually be sent
- A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.

A simple takeaway menu allowing a user to order some grub and provide them with a total. It also sends a text letting the user know that food is on its way using the Twilio API.

Try it out:

Clone the repo: git@github.com:jamieallen59/Takeaway_menu.git

If you would like to receive a message from the app using Twilio, update the 'send_text' method within user_interface.rb. Then uncomment 'send_text' in the runfile.rb.

In the Command line, run irb or Pry.

require '.lib/runfile'

run_program

Enjoy!