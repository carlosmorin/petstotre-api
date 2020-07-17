# Project

[API deployed](https://petstoreapi.herokuapp.com/api/v1/)

#### Project specs
> Ruby version `2.7.0`

> Rails version `6.0.3`

> Database manager `postgresql`

> Testing framewrok `rspec`

> Linter used `rubocop`

## Install project
[How to prepare my work environment?](https://gorails.com/setup/ubuntu/16.04)


#### Clone the repository
```
git clone git@github.com:carlosmorin/petstotre-api.git
cd petstotre-api
```

#### Check your Ruby version
```
ruby -v
```
The ouput should start with something like `ruby 2.7.0`
If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```
rbenv install 2.7.0
rbenv global 2.7.0
rbenv rehash 
```

#### Install dependences (Gems)
Using [Bundler](https://github.com/bundler/bundler)

```
bundle install
```

#### Prepare database
```
rails db:create 
rails db:migrate 
rails db:seed
```

#### Run rails server

```
rails server

```

#### Run tests suite

```
rake

```

# Api documentation
openapi: "3.0.0"
info:
  version: "0.3"
  title: Petstore Api Docs
  description: |-
  ## Petstore API
  This collection contains sample requests from this [API](https://petstoreapi.herokuapp.com/api/v1/)

  It contains the following requests

  ##### Categories
  * Create a new category
  * Get categories list
  * Get details of a category and pets relationed
  * Update a category data
  * Destroy a category

  ##### Pets
  * Create a new pet
  * Get pets list
  * Get details of a pet
  * Update a pet data
  * Destroy a pet
schemes:
  - https
basePath: api/v1/
produces:
  - application/json
paths:
  '/categories':
    get:
      summary: Categories list
      description: return all categories listings
      responses:
        200:
          description: An array of categories
    post:
      summary: Create a cetegory
      responses:
        201:
          description: A successful request returns category created
  '/categories/:id':
    get:
      summary: Info for a specific cetegory
      description: Return a category data and pets relationed
      parameters:
        name: id
        required: true
        description: The id of the specific category
      responses:
        200:
          description: Expected response to a valid request
    put:
      summary: Update a cetegory data
      parameters:
        name: id, name
        required: true
        description: The id of the category and name with the new value
      responses:
       200:
        description: Expected response to a valid request
    delete:
      summary: Destroy a specific cetegory
      description: Destroy a specific cetegory and pets relationed
      parameters:
        name: id
        required: true
        description: The id of the category
      responses:
        204:
         description: 204 No Content, Expected response to a valid request

  '/pets':
    get:
      summary: Pets list
      description: return all pets listings and category reltioned
      parameters:
       name: limit
       description: How many items to return at one time (max 100)
       required: false
      responses:
        200:
          description: An array of pets
    post:
      summary: Create a pet
      responses:
        201:
          description: A successful request returns pet created
  '/pets/:id':
    get:
      summary: Info for a specific pet
      description: return a specific pet and category reltioned
      parameters:
        name: id
        required: true
        description: The id of the specific pet
      responses:
        200:
          description: Expected response to a valid request
    put:
      summary: Update a pet data
        parameters:
          name: id
          required: true
          description: The id of the category and aditional params with the new value
        responses:
          200:
           description: Expected response to a valid request
    delete:
      summary: Destroy a specific pet
        parameters:
          name: id
          required: true
          description: The id of the pet
        responses:
          204:
           description: 204 No Content, Expected response to a valid request