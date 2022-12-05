![](https://img.shields.io/badge/Ali-Atayee-gree?labelColor=red)&nbsp;![](https://img.shields.io/badge/Helpjuice-blue?labelColor=blue)&nbsp;

# Recipe App

> To create a realtime search box, where users search articles, and then to have analytics that display what users were searching for. 

## Major Technologies
- [ ] Ruby on Rails
- [ ] Postgresql
- [ ] TailwindCSS

### Install & Setup

To setup and install this sample AlFa Blog project, follow the below steps:
- Clone this project by the command: 
  ```
  git clone https://github.com/aliatayee/search-analytic-rails
  ```

- Then switch to the project folder by the bellow query:

  ```
  search-analytic-rails
  ```

- Install the required dependecies with:
  ```
  bundle install
  ```
- Install npm dependencies with: 
  ```
  npm install
  ```
- Before running below commands update [config/database.yml](./config/database.yml) with your local `DB`credentials. Then run:
    ```
    rake db:create
    ```
    ```
    rake db:migrate
    ```
    ```
    rake db:seed
    ```
- To make the tailwindcss works run the below command:
    ```
    bundle exec rake assets:precompile
    ```

- With Ruby on Rails and PostgreSQL installed in your environment, you can run `rails server` to run the website.
### Tests

- Run `bundle install`
- Run `bundle exec rspec spec`
- To test run: `rspec`

### Prerequisites

- IDE to edit and run the code (We use Visual Studio Code 🔥).
- Git to versionning your work.
- Postgresql

### Authors
👤 **Ali**

- GitHub: [@aliatayee](https://github.com/aliatayee)
- Twitter: [@aqaatayee](https://twitter.com/aqaatayee)
- LinkedIn: [@aliatayee](https://www.linkedin.com/in/aliatayee/)


## 🤝 Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support
Give a ⭐️ if you like this project!

## Acknowledgments
- Hat tip to anyone whose code was used
- Inspiration
- etc
