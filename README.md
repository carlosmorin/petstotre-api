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

#### Paths:

#### Categories:
```
Get categories list

get: '/categories'

description: 
Return all categories listing
A successful request will result in a *200 OK* status code
```

```
Create a category

post: '/categories'

query example: 
[
  {
    "key": "category[name]",
    "value": "Aves"
  }
]

description: 
Returns a category created
A successful request will result in a *200 OK* status code
```

```
Get a specific category

get: '/categories/:id'

description: 
Return a specific category and pets relationed
A successful request will result in a *200 OK* status code
```

```
Update a category 

put: '/categories/:id'

query example: 
[
  {
    "key": "category[name]",
    "value": "Aves2"
  }
]

description: 
Returns a category updated	
A successful request will result in a *200 OK* status code
```

```
delete: '/categories/:id'

description: 
API endpoint to *Delete* a category and pets relationed 
* A successful request will result in a *204 No Content* status code
* If that the resource does not exist reponse will be \"404 Not Found\" status codeUpdate a category data
```




#### Pets:
```
Get pets list

get: '/pets'

description: 
Return all categories listing	
A successful request will result in a *200 OK* status code

params 'limit'
description: 
Get a pets list with limit items specified, max 100
```

```
Create a pet

post: '/pets'

"query": [
  {
    "key": "pet[name]",
    "value": "Pastor Aleman"
  },
  {
    "key": "pet[tag]",
    "value": "Tamaño Grande"
  },
  {
    "key": "pet[status]",
    "value": "available"
  },
  {
    "key": "pet[category_id]",
    "value": "1"
  }
]

description: 
Return a pet created	
A successful request will result in a *201 Created* status code
```

```
Get a specific pet

get: '/pets/:id'

description: 
Return a specific pet and category relationed
A successful request will result in a *200 OK* status code
```

```
Update a pet 

put: '/pets/:id'

query example: 
[
  {
    "key": "pet[name]",
    "value": "Bulldog Ingles"
  }
]

description: 
Return a pet updated
A successful request will result in a *200 OK* status code
```

```
delete: '/pets/:id'

description: 
API endpoint to *Delete* a pet
* A successful request will result in a *204 No Content* status code
* If that the resource does not exist reponse will be \"404 Not Found\" status codeUpdate a category data
```