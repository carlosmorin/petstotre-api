# Project

## Install
### Clone the repository

```
git clone git@github.com:carlosmorin/petstotre-api.git
cd petstotre-api
```

### Clone the repository
```
ruby -v
```
The ouput should start with something like `ruby 2.7.0`
If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```
rbenv install 2.7.0
```

### Install dependences (Gems)
Using [Bundler](https://github.com/bundler/bundler)

```
bundle install
```

### Prepare database
```
rails db:create 
db:migrate 
db:seed
```

### Run rails server

```
rails s

```
