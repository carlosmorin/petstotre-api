# Project

[API](https://petstoreapi.herokuapp.com/api/v1/)

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

info:
  _postman_id: e50936a8-b76e-4738-ac06-23127356a14c
  name: Petstore Api Docs
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

item:
  - name: Categories end points
    item:
      - name: Get categories list
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |
            API endpoint to *Get* a categories list
            > A successful request will result in a *200 OK* status code
        response:
          - name: Categories
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories'
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - categories
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 06:58:33 GMT'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: Etag
                value: W/"b3e5ab62dd63ba60195b70388a4e8c2d"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: cd02f859-ec78-4bda-9619-7264385dbe1b
              - key: X-Runtime
                value: '0.005695'
              - key: Transfer-Encoding
                value: chunked
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: |-
              [
                  {
                      "id": 1,
                      "name": "Perros"
                  },
                  {
                      "id": 2,
                      "name": "Gatos"
                  }
              ]
          - name: Categories
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - categories
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"b3e5ab62dd63ba60195b70388a4e8c2d"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: e16a0ee1-f43c-42fb-9116-7b0e0bfe08e0
              - key: X-Runtime
                value: '0.004098'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              [
                  {
                      "id": 1,
                      "name": "Perros"
                  },
                  {
                      "id": 2,
                      "name": "Gatos"
                  }
              ]
          - name: Categories
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - categories
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"b3e5ab62dd63ba60195b70388a4e8c2d"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 3eee26ce-b233-44c4-abd5-f7e84447129a
              - key: X-Runtime
                value: '0.003139'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              [
                  {
                      "id": 1,
                      "name": "Perros"
                  },
                  {
                      "id": 2,
                      "name": "Gatos"
                  }
              ]
      - name: Get a cetegory detail
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |-
            API endpoint to *Get* a specific category and pets relationated
            > A successful request will result in a *200 OK* status code
        response:
          - name: Get a cetegory detail
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories/1'
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - categories
                  - '1'
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 06:58:53 GMT'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: Etag
                value: W/"0f1e7b9c5ecc98d719a3fda8992794df"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 7bdd7543-d6ec-444e-9211-70ca507451aa
              - key: X-Runtime
                value: '0.008660'
              - key: Transfer-Encoding
                value: chunked
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: |-
              {
                  "id": 1,
                  "name": "Perros",
                  "pets": [
                      {
                          "id": 1,
                          "name": "Bulldog",
                          "status": "available"
                      },
                      {
                          "id": 2,
                          "name": "Labrador retriever",
                          "status": "available"
                      },
                      {
                          "id": 3,
                          "name": "Poodle",
                          "status": "available"
                      }
                  ]
              }
          - name: Get a cetegory detail
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories/1'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - categories
                  - '1'
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"a408cd0d735d204729a447a0bd34c56b"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: e3726c4c-b554-4313-a958-9deec1a1e0b3
              - key: X-Runtime
                value: '0.071105'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              {
                  "id": 1,
                  "name": "Perros",
                  "pets": [
                      {
                          "id": 1,
                          "name": "Bulldog",
                          "tag": "Tamaño Medio",
                          "status": "available",
                          "category_id": 1,
                          "created_at": "2020-07-17T06:13:52.855Z",
                          "updated_at": "2020-07-17T06:13:52.855Z"
                      },
                      {
                          "id": 2,
                          "name": "Labrador retriever",
                          "tag": "Tamaño Grande",
                          "status": "available",
                          "category_id": 1,
                          "created_at": "2020-07-17T06:13:52.860Z",
                          "updated_at": "2020-07-17T06:13:52.860Z"
                      },
                      {
                          "id": 3,
                          "name": "Poodle",
                          "tag": "Tamaño Chico",
                          "status": "available",
                          "category_id": 1,
                          "created_at": "2020-07-17T06:13:52.864Z",
                          "updated_at": "2020-07-17T06:13:52.864Z"
                      }
                  ]
              }
      - name: Create a new category
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: >-
            API endpoint to *Create* a new category

            > A successful request will result in a *201 Created* status code


            > If the name has been taken by the existing element, the answer
            will be "422 Unprocessable Entity"
        response:
          - name: Create a category
            originalRequest:
              method: POST
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories?category[name]=Aves'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - categories
                query:
                  - key: 'category[name]'
                    value: Aves
            status: Created
            code: 201
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"6e753ed9c2de2d621bc3ea7261b16fba"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: a8e678df-4f5f-4217-98c6-03ca86532b7c
              - key: X-Runtime
                value: '0.007873'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              {
                  "id": 2,
                  "name": "Aves"
              }
          - name: Create a category
            originalRequest:
              method: POST
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: >-
                  https://petstoreapi.herokuapp.com/api/v1/categories?category[name]=Aves
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - categories
                query:
                  - key: 'category[name]'
                    value: Aves
            status: Created
            code: 201
            _postman_previewlanguage: json
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 06:59:45 GMT'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: Etag
                value: W/"7d535de8e992df765dcc5bb05f3e8b75"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 181246a1-85de-4a61-8e2c-031f637d26c4
              - key: X-Runtime
                value: '0.016083'
              - key: Transfer-Encoding
                value: chunked
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: |-
              {
                  "id": 3,
                  "name": "Aves"
              }
      - name: Update a category data
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |-
            API endpoint to *Update* a category data
            > A successful request will result in a *200 OK* status code
        response:
          - name: Update a category data
            originalRequest:
              method: PUT
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories/1?category[name]=Aves'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - categories
                  - '1'
                query:
                  - key: 'category[name]'
                    value: Aves
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"d3ff696249b1d5335007c4449b70c5b8"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: a55bc720-3172-4bb7-9b03-a01cf760aed4
              - key: X-Runtime
                value: '0.011075'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              {
                  "id": 1,
                  "name": "Aves"
              }
          - name: Update a category data
            originalRequest:
              method: PUT
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: >-
                  https://petstoreapi.herokuapp.com/api/v1/categories/1?category[name]=Reptiles
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - categories
                  - '1'
                query:
                  - key: 'category[name]'
                    value: Reptiles
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 07:00:22 GMT'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: Etag
                value: W/"5917f46abc6d7cf0ae8776bc31d168aa"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 5405c7f8-1bed-4552-b59f-afa6b0b5781d
              - key: X-Runtime
                value: '0.015164'
              - key: Transfer-Encoding
                value: chunked
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: |-
              {
                  "id": 1,
                  "name": "Reptiles"
              }
      - name: 'Delete a category '
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: >-
            API endpoint to *Delete* a category and pets relationed 

            > A successful request will result in a *204 No Content* status code

            > is that the resource does not exist reponse will be "404 Not
            Found" status code
        response:
          - name: 'Delete a category '
            originalRequest:
              method: DELETE
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/categories/1'
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - categories
                  - '1'
            status: No Content
            code: 204
            _postman_previewlanguage: plain
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 07:00:54 GMT'
              - key: Content-Length
                value: '0'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Cache-Control
                value: no-cache
              - key: X-Request-Id
                value: 120c6ba4-6637-47a6-9b8a-c8b2df73f8ec
              - key: X-Runtime
                value: '0.019215'
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: null
  - name: Pets end points
    item:
      - name: Get a pets list
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: 'https://petstoreapi.herokuapp.com/api/v1/pets'
            protocol: https
            host:
              - petstoreapi
              - herokuapp
              - com
            path:
              - api
              - v1
              - pets
          description: |-
            API endpoint to *Get* a pets list 
            > A successful request will result in a *200 OK* status code
        response:
          - name: Get a pets list
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets'
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - pets
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 07:10:07 GMT'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: Etag
                value: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: e35c13ea-8de6-40f6-aea6-08bb02537557
              - key: X-Runtime
                value: '0.005735'
              - key: Transfer-Encoding
                value: chunked
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: '[]'
          - name: Get a pets list
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - pets
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"9c8bbf88165b3b1da9b45a2d0d5e8d24"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 4ba89991-caa6-498c-aed6-46c373a092a6
              - key: X-Runtime
                value: '0.009538'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              [
                  {
                      "id": 1,
                      "name": "Bulldog",
                      "tag": "Tamaño Medio",
                      "status": "available",
                      "category_id": 1,
                      "created_at": "2020-07-17T06:27:32.244Z",
                      "updated_at": "2020-07-17T06:27:32.244Z"
                  },
                  {
                      "id": 2,
                      "name": "Labrador retriever",
                      "tag": "Tamaño Grande",
                      "status": "available",
                      "category_id": 1,
                      "created_at": "2020-07-17T06:27:32.249Z",
                      "updated_at": "2020-07-17T06:27:32.249Z"
                  },
                  {
                      "id": 3,
                      "name": "Poodle",
                      "tag": "Tamaño Chico",
                      "status": "available",
                      "category_id": 1,
                      "created_at": "2020-07-17T06:27:32.254Z",
                      "updated_at": "2020-07-17T06:27:32.254Z"
                  },
                  {
                      "id": 4,
                      "name": "Persa",
                      "tag": "Tamaño medio a grande",
                      "status": "available",
                      "category_id": 2,
                      "created_at": "2020-07-17T06:27:32.261Z",
                      "updated_at": "2020-07-17T06:27:32.261Z"
                  },
                  {
                      "id": 5,
                      "name": "Bengala",
                      "tag": "Tamaño medio",
                      "status": "available",
                      "category_id": 2,
                      "created_at": "2020-07-17T06:27:32.265Z",
                      "updated_at": "2020-07-17T06:27:32.265Z"
                  },
                  {
                      "id": 6,
                      "name": "Siames",
                      "tag": "Tamaño medio",
                      "status": "available",
                      "category_id": 2,
                      "created_at": "2020-07-17T06:27:32.270Z",
                      "updated_at": "2020-07-17T06:27:32.270Z"
                  },
                  {
                      "id": 7,
                      "name": "Pastor Aleman",
                      "tag": null,
                      "status": "available",
                      "category_id": 1,
                      "created_at": "2020-07-17T06:29:24.833Z",
                      "updated_at": "2020-07-17T06:29:24.833Z"
                  }
              ]
      - name: Get a pets list with limit items
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |-
            API endpoint to *Get* a category list with limit of items specified
            > A successful request will result in a *200 OK* status code
        response:
          - name: Get a pets list with limit items
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets?limit=5'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - pets
                query:
                  - key: limit
                    value: '5'
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"e32cbe6802068e724ac7b043af1a7ce0"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 316e44f0-6936-47f6-bd86-b8d47d0837d5
              - key: X-Runtime
                value: '0.005627'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              [
                  {
                      "id": 2,
                      "name": "Labrador retriever",
                      "tag": "Tamaño Grande",
                      "status": "available",
                      "category_id": 1,
                      "created_at": "2020-07-17T06:27:32.249Z",
                      "updated_at": "2020-07-17T06:27:32.249Z"
                  },
                  {
                      "id": 3,
                      "name": "Poodle",
                      "tag": "Tamaño Chico",
                      "status": "available",
                      "category_id": 1,
                      "created_at": "2020-07-17T06:27:32.254Z",
                      "updated_at": "2020-07-17T06:27:32.254Z"
                  },
                  {
                      "id": 4,
                      "name": "Persa",
                      "tag": "Tamaño medio a grande",
                      "status": "available",
                      "category_id": 2,
                      "created_at": "2020-07-17T06:27:32.261Z",
                      "updated_at": "2020-07-17T06:27:32.261Z"
                  },
                  {
                      "id": 5,
                      "name": "Bengala",
                      "tag": "Tamaño medio",
                      "status": "available",
                      "category_id": 2,
                      "created_at": "2020-07-17T06:27:32.265Z",
                      "updated_at": "2020-07-17T06:27:32.265Z"
                  },
                  {
                      "id": 6,
                      "name": "Siames",
                      "tag": "Tamaño medio",
                      "status": "available",
                      "category_id": 2,
                      "created_at": "2020-07-17T06:27:32.270Z",
                      "updated_at": "2020-07-17T06:27:32.270Z"
                  }
              ]
          - name: Get a pets list with limit items
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets?limit=5'
                protocol: https
                host:
                  - petstoreapi
                  - herokuapp
                  - com
                path:
                  - api
                  - v1
                  - pets
                query:
                  - key: limit
                    value: '5'
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: Server
                value: Cowboy
              - key: Date
                value: 'Fri, 17 Jul 2020 07:12:39 GMT'
              - key: Connection
                value: keep-alive
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-Xss-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: Etag
                value: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: 81e8601c-5953-4f9b-9da4-fd552264a86e
              - key: X-Runtime
                value: '0.056147'
              - key: Transfer-Encoding
                value: chunked
              - key: Via
                value: 1.1 vegur
            cookie: []
            body: '[]'
      - name: Get a pet detail
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |-
            API endpoint to *Get* a specific pet 
            > A successful request will result in a *200 OK* status code
        response:
          - name: Get a category detail
            originalRequest:
              method: GET
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets/1'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - pets
                  - '1'
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"ea1f6c9aea3cf21e1a15c3b87d2df050"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: cc6331c2-39f5-47d0-ab8b-18a6354aa1fa
              - key: X-Runtime
                value: '0.004229'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              {
                  "id": 1,
                  "name": "Bulldog",
                  "tag": "Tamaño Medio",
                  "status": "available",
                  "category_id": 1,
                  "created_at": "2020-07-17T06:27:32.244Z",
                  "updated_at": "2020-07-17T06:27:32.244Z"
              }
      - name: Create a new pet
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |
            API endpoint to *Create* a new pet 
            > A successful request will result in a *201 Created* status code
        response:
          - name: Create a new pet
            originalRequest:
              method: POST
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: >-
                  https://petstoreapi.herokuapp.com/api/v1/pets?pet[name]=Pastor
                  Aleman&pet[tag]=Tamaño
                  Grande&pet[status]=available&pet[category_id]=1
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - pets
                query:
                  - key: 'pet[name]'
                    value: Pastor Aleman
                  - key: 'pet[tag]'
                    value: Tamaño Grande
                  - key: 'pet[status]'
                    value: available
                  - key: 'pet[category_id]'
                    value: '1'
            status: Created
            code: 201
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Location
                value: 'http://localhost:3000/pets/7'
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"313ca46e73f59c650c559ec66b354e69"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: e96a26f3-ed2f-4bc4-92ea-9fd326889364
              - key: X-Runtime
                value: '0.075630'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              {
                  "id": 7,
                  "name": "Pastor Aleman",
                  "tag": null,
                  "status": "available",
                  "category_id": 1,
                  "created_at": "2020-07-17T06:29:24.833Z",
                  "updated_at": "2020-07-17T06:29:24.833Z"
              }
      - name: Update a pet data
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: |-
            API endpoint to *Update* a specific pet 
            > A successful request will result in a *200 OK* status code
        response:
          - name: Update a pet data
            originalRequest:
              method: PUT
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets/1?pet[name]=Bulldog Ingles'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - pets
                  - '1'
                query:
                  - key: 'pet[name]'
                    value: Bulldog Ingles
            status: OK
            code: 200
            _postman_previewlanguage: json
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Content-Type
                value: application/json; charset=utf-8
              - key: ETag
                value: W/"40067fafc48e9a2b3896ca4922b99f9f"
              - key: Cache-Control
                value: 'max-age=0, private, must-revalidate'
              - key: X-Request-Id
                value: bb842835-4d10-4c78-8462-ee33b36a37ad
              - key: X-Runtime
                value: '0.012016'
              - key: Transfer-Encoding
                value: chunked
            cookie: []
            body: |-
              {
                  "id": 1,
                  "name": "Bulldog Ingles",
                  "category_id": 1,
                  "tag": "Tamaño Medio",
                  "status": "available",
                  "created_at": "2020-07-17T06:27:32.244Z",
                  "updated_at": "2020-07-17T06:35:06.285Z"
              }
      - name: Delete a pet
        request:
          method: GET
          header: []
          body:
            mode: raw
            raw: ''
          url:
            raw: ''
          description: >-
            API endpoint to *Delete* a specific pet 

            > A successful request will result in a *204 No Content* status code

            > is that the resource does not exist reponse will be "404 Not
            Found" status code
        response:
          - name: Delete a pet
            originalRequest:
              method: DELETE
              header: []
              body:
                mode: raw
                raw: ''
              url:
                raw: 'https://petstoreapi.herokuapp.com/api/v1/pets/1'
                protocol: http
                host:
                  - localhost
                port: '3000'
                path:
                  - api
                  - v1
                  - pets
                  - '1'
            status: No Content
            code: 204
            _postman_previewlanguage: plain
            header:
              - key: X-Frame-Options
                value: SAMEORIGIN
              - key: X-XSS-Protection
                value: 1; mode=block
              - key: X-Content-Type-Options
                value: nosniff
              - key: X-Download-Options
                value: noopen
              - key: X-Permitted-Cross-Domain-Policies
                value: none
              - key: Referrer-Policy
                value: strict-origin-when-cross-origin
              - key: Cache-Control
                value: no-cache
              - key: X-Request-Id
                value: 66ad49fe-c4e9-4483-b3cf-1296ada3a470
              - key: X-Runtime
                value: '0.013515'
            cookie: []
            body: null
event:
  - listen: prerequest
    script:
      id: 8a656fb6-639f-4dd3-806a-e0f9ad55a15b
      type: text/javascript
      exec:
        - ''
  - listen: test
    script:
      id: fa4674b2-0a38-4468-b19e-1ca294115aea
      type: text/javascript
      exec:
        - ''