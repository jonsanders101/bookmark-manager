Bookmark Manager
===============================

A web-app which stores web pages for future use.

## Technologies Used

* HTML - front-end
* Ruby - server-side
* Sinatra - web framework
* ORM - DataMapper
* Database - PostGreSQL

## Authors

This bookmark manager represents work produced in week four of Makers Academy. We work on projects in pairs. Each day, we begin using one of either pair's repos as a starting point. This repo is extracted from that week's work as a record and to provide a personal repo to continue developing.

## Directory Structure

|-- bookmark-manager
    |-- .rspec
    |-- Gemfile
    |-- Gemfile.lock
    |-- Procfile
    |-- README.md
    |-- Rakefile
    |-- capybara-20171017141637323593778.html
    |-- capybara-201710171444282321541493.html
    |-- config.ru
    |-- setup.rb
    |-- app
    |   |-- bookmark_manager_app.rb
    |   |-- models
    |   |   |-- link.rb
    |   |   |-- tag.rb
    |   |   |-- user.rb
    |   |-- views
    |       |-- links.erb
    |       |-- signup.erb
    |       |-- links
    |       |   |-- new.erb
    |       |-- tag
    |           |-- filter.erb
    |-- coverage
    |   |-- .last_run.json
    |   |-- .resultset.json
    |   |-- .resultset.json.lock
    |-- lib
    |-- spec
        |-- spec_helper.rb
        |-- features
            |-- bookmark_list_spec.rb
            |-- creating_links_spec.rb
            |-- signup_spec.rb
            |-- tag_filtering_spec.rb

## Instructions

This app is not currently hosted anywhere. To use it, you will need to clone this GitHub repo.

### Using the Bookmark Manager

```
$ git clone git@github.com:jonsanders101/bookmark-manager.git
$ cd bookmark-manager
$ bundle
$ rackup
```
Then enter `localhost:9292/links` into your browser.

### Running the Test Suite

```
$ git clone git@github.com:jonsanders101/bookmark-manager.git
$ cd bookmark-manager
$ bundle
$ rspec
```

### Test coverage

100%
