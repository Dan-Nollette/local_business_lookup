# Local Business Lookup API

#### _Epicodus Friday Project in Rails_

#### By Dan Nollette

## Description

_A Friday coding project exploring Rails._

## Setup/Installation Requirements

1: In the command line of your computer run `https://github.com/Dan-Nollette/local_business_lookup`

2: run `bundle install`

3: run `rails db:create`

4: run `rails db:migrate`

5: run `rails s`

6: if you would like to seed the API with 10 example business

7: get a postman account here `https://www.getpostman.com/` and download postman

8: open postman and use the endpoints listed below

## End Points

  To get a list of 4 businesses, based on page number send a GET request to:
  `http://localhost:3000/businesses_by_page?page=`number
  The lower the number, the more recently entered the businesses that will be returned

  To get a random business, based on page number send a GET request to:
  `http://localhost:3000/random_business`

  To find a business based on it's name, send a GET request to:
  `http://localhost:3000/business_name_search?name=`name_here

  To find a business based on it's id number, send a GET request to:
  `http://localhost:3000/businesses/`id_number

  To get a list of all businesses, send a GET request to:
  `http://localhost:3000/businesses/`

  To add a business, send a POST request to:
  `http://localhost:3000/businesses/`
  include the params name, address, and description (all 3 are required)

  To alter a Business, send a PUT request to:
  `http://localhost:3000/businesses/`id_number
  include the params (name, address, and description) that you want to change

  To delete a business based on it's id number, send a DELETE request to:
  `http://localhost:3000/businesses/`id_number

## Known Bugs

*   No known bugs at this time; however, this is a work in progress.

## Support and contact details

_Please contact [nollette.dan@gmail.com](mailto:nollette.dan@gmail.com) with questions, comments, or issues, or to contribute to the code._

## Technologies Used

* Ruby
* The Ruby on Rails Framework
* The will_paginate gem

### License

Copyright (c) 2017 ** Dan Nollette **

*This software is licensed under the MIT license.*
