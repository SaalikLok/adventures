# Adventure Database 🗺

A living travel and eating journal by Saalik and Jackie.

### Motivation + Intention

When Jackie and I moved to Austin, we started capturing our experiences (from food to nature and more) in a Notion database. We did this so that we could remember places that we've visited and create a database for when our friends visited and came to town. 

Quickly outgrowing the database on Notion, we also realized that as the world opens up, we wanted to capture the same kind of information through our future travels. That's when I put the software engineer hat on and decided to build out this website for our adventures.

The main intentions are as follows:

1. Have a public, live, travel journal that Jackie and I can look back on. 
2. Easily share our adventure recommendations with friends and family.
3. Build my skills as an engineer by maintaining a growing full-stack application.

### Technologies

- Ruby on Rails
- Haml
- Bulma
- RSpec
- React (just a splash)

### Running Locally + Contributing

I've made this repo public and open-source so I can share the code that I'm writing for the project. I don't intend on accepting any PRs for this project or adding collaborators at this time. 

That said, if you'd like to run it locally:

1. Clone the repo and cd into the directory
2. `bundle install`
3. Create the database: `bundle exec rake db:create`

- Run the server with: `bundle exec rails serve`
- Run the test suite with: `bundle exec rspec`
