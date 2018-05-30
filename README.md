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
                                
- In terminal run the following command to create tables:
                  
                               psql -d record_shop -f db/record_store.sql

- Run the app from folder record_shop_project in terminal using the following command:

                                ruby app.rb

- View the app at http://localhost:4567/artists


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
  
  
Artists
![image](https://user-images.githubusercontent.com/34646693/40716206-122fae44-6400-11e8-869b-41cb5f928a9c.png)

Albums
![image](https://user-images.githubusercontent.com/34646693/40716229-1dc727e6-6400-11e8-8bfe-571aee1f783d.png)

Artist
![image](https://user-images.githubusercontent.com/34646693/40716244-2519a88e-6400-11e8-94d0-69eb981392f2.png)
