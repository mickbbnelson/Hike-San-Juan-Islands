## Hike San Juan Islands

Welcome to the Hike San Juan Islands Application!  This application will allow you to view trail information about different hiking locations posted by other application users.  Once you create an account, you will be able to record details about hikes that you went on for other users to view.  All accounts are secure so that each user can only edit details for the hikes that they posted.  

## Installation

Once you have cloned the repository, you will need to run "bundle install" to download all of the necessary gems the application is dependent on.

    bundle install

Run all necessary migrations by typing "rails db:migrate"

    rails db:migrate

Seed the necessary data by running "rails db:seed"

    rails db:seed

Install webpacker by running "rails webpacker:install"

    rails webpacker:install

## Running the Application:

Then type "rails s" into the terminal and type the following code into your web browser.

    localhost:3000

## Features:

Once the application is running, the user will be greeted by a welcome page where they will have the option to sign in or create an account.

New users will need to create an account with valid account information. or they will have the option to login through their Facebook account.

After an account has been created and the user has logged in, the user will be redirected to the islands homepage where they can select from a list of islands located in the San Juan chain.

![Island List Image](https://i.postimg.cc/h45PjJf5/San-Juan-Islands-List-Image.jpg)

When on an islands show page, the user can view details about the island along with a list of links to the show page of each hike on that island.  Island details include name, description and info on how the island can be accessed.

![Island Show Image](https://i.postimg.cc/s2jRKyMW/Island-Show-Image.jpg)

When on a hikes show page, the user can view details about the hike, click a link to read a list of hiker reviews or click a link to write a new review themselves. Hike details include description, location, distance and difficulty.

![Hike Show Image](https://i.postimg.cc/8cM194Nf/Hike-Show-Page.jpg)

At any point, the user can choose to return to the islands home page, view their profile or logout through the navigation bar.

When on the profile or user/show page, the user can view their account information and see a list of reviews that they have posted.  From here, they can choose to edit or delete any of their reviews.

Once the user is finished using the application, they will be able to log out.

The user will be able to login to their account at any point with their login information.

## Technologies:

-Ruby on Rails, ActiveRecord, OmniAuth

## Contact:

Github: https://github.com/mickbbnelson | LinkedIn: https://www.linkedin.com/in/mick-nelson-denver/ | Email: mickbbnelson@gmail.com

