Welcome to the Hike San Juan Islands Application!  This application will allow you to view trail information about different hiking locations posted by other application users.  Once you create an account, you will be able to record details about hikes that you went on for other users to view.  All accounts are secure so that each user can only edit details for the hikes that they posted.  

## Installation

Once you have cloned the repository, you will need to run "bundle install" to download all of the necessary gems the application is dependent on.

    bundle install

Run all necessary migrations by typing "rails db:migrate"

    rails db:migrate

Seed the necessary data by running "rails db:seed"

    rails db:seed

Then type "rails s" into the terminal and type the following code into your web browser.

    localhost:3000

## Usage

Once the application is running, the user will be greeted by a welcome page where they will have the option to sign in or create an account.

New users will need to create an account with valid account information.

New Users also have the option to login through their Facebook account.

After an account has been created and the user has logged in, the user will be redirected to the islands homepage where the can select from a list of islands located in the San Juans.

When on an islands show page, the user can view details about the island along with a list of links to the show page of each hike on that island.

Island details include name, description and info on how the island can be accessed.

When on a hikes show page, the user can view details about the hike, click a link to read a list of hiker reviews or click a link to write a new review themselves.

Hike details include description, location, distance and difficulty.

At any point, the user can choose to return to the islands index page, view their profile or logout through the navigation bar.

When on the profile or user/show page, the user can view their account information and see a list of reviews that they have posted.  From here, they can choose to edit or delete any of their reviews.

Once the user is finished using the application, they will be able to log out.

The user will be able to login to their account at any point with their login information.

## Development

After checking out the repo, run `bundle install` to install the necessary dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://https://github.com/mickbbnelson/Hike-San-Juan-Islands. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mickbbnelson/Hike-San-Juan-Islands/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting with the Sinatra Hiking App project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mickbbnelson/Hike-San-Juan-Islands/blob/master/CODE_OF_CONDUCT.md).

