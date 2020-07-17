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

  basePath: `https://petstoreapi.herokuapp.com/api/v1/`
