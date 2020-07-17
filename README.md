# Project

[How to prepare my work environment?](https://gorails.com/setup/ubuntu/16.04)

## Install project
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

# Api documentation
