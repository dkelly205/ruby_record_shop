# ruby_record_shop

Project Brief:

The owner of a Record Store wants an app which will help to keep on top of the store inventory. This is not an app that customers will see, but will be used to check stock levels and see what needs to be ordered soon.

You should be able to add stock, which would have an Artist and Album as well as the quantity available.

### MVP:

- Create albums with the quantity that are in stock
- Create artists
- Show an inventory page listing albums and artists
- Show a stock level for the inventory items e.g. High/Medium/Low


To run the app:

- Clone the app 

- In terminal create the database using the following command:  

                                createdb record_shop

- Run the app from folder record_shop_project in terminal using the following command: 

                                ruby app.rb 
                                
- View the app at http://localhost:4567/


Project Rules:

The project must be built using only:
  - Sinatra
  - PostGRES SQL
  - HTML / CSS
  - Ruby

It must NOT use:
  - Any Object Relational Mapper (e.g. ActiveRecord)
  - JavaScript. At all. Don't even think about it
  - Authentication

