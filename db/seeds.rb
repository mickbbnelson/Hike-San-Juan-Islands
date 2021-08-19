# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Michael Jordan", email_address: "michael@jordan.com", password_digest: "1234")
User.create(name: "Larry Bird", email_address: "larry@bird.com", password_digest: "4321")
User.create(name: "Magic Johnson", email_address: "magic@johnson.com", password_digest: "1111")
User.create(name: "Charles Barkley", email_address: "charles@barkely.com", password_digest: "4444")

Island.create(name: "San Juan Island", accessed_by: "ferry, personal watercraft, plane", description:"The 2nd largest island in the san juan islands and has the 2nd most trails. Also home to Friday Harbor which is the largest town in the islands")
Island.create(name: "Orcas Island", accessed_by: "ferry, personal watercraft, plane", description:"The largest island in the san juan islands and has the most trails.  The highest mountain peak in the island chain is on Orcas.")
Island.create(name: "Jones Island", accessed_by: "personal watercraft", description:"One of the smaller islands in the chain.  The entire island is a state park.  Camping by reservation only.")
Island.create(name: "Lopez Island", accessed_by: "ferry, personal watercraft, plane", description:"The 3rd largest island in the san juan islands.  Not many trails but the trails that Lopez Island have are amazing!")
Island.create(name: "Shaw Island", accessed_by: "ferry, personal watercraft, plane", description:"Smallest island with ferry access, great place to camp or evend just spend an afternoon")
Island.create(name: "Clark Island", accessed_by: "personal watercraft", description:"Smaller island off the northwest side of Orcas")
Island.create(name: "Blakely Island", accessed_by: "personal watercraft, plane", description:"Private island.  Do not enter")
Island.create(name: "Patos Island", accessed_by: "personal watercraft", description:"Smaller island with great views.  The entire island is a state park")
Island.create(name: "Turn Island", accessed_by: "personal watercraft", description:"Smaller island located in the center of the San Juan chain.  The entire island is a state park")
Island.create(name: "Waldron Island", accessed_by: "personal watercraft" "plane", description:"Mostly private island with a few great hikes.")
Island.create(name: "James Island", accessed_by: "personal watercraft", description:"Small island with bluffs and cliffs.  The entire island is a state park")
Island.create(name: "Sucia Island", accessed_by: "personal watercraft", description:"Smaller island with many pennisulas, bays and unique rocks.  The entire island is a state park")
Island.create(name: "Stuart Island", accessed_by: "personal watercraft, plane", description:"Small island with pleanty of water access and campsites.  The entire island is a state park")
Island.create(name: "Matia Island", accessed_by: "personal watercraft", description:"Small island with wind protected bays")
Island.create(name: "Dectur Island", accessed_by: "personal watercraft, plane", description:"Mostly pricate island with some public access.  Beautiful island if you know where to go.")
Island.create(name: "Henry Island", accessed_by: "personal watercraft", description:"Large island off the north west side of San Juan Island.  Great views.")
Island.create(name: "Obstruction Island", accessed_by: "personal watercraft", description:"Smaller island that is not a state park.")




Hike.create(name: "Mt Constitution Loop", location: "Moran State Park", difficulty: "Hard", distance: 7, island_id: 2, description: "Best view in the San Juan Islands.")
Hike.create(name: "South Beach", location: "American Camp", difficulty: "Easy", distance: 2, island_id: 1, description: "Coastal trail with scenic views.")
Hike.create(name: "Cattle Point", location: "American Camp", difficulty: "Easy", distance: 1, island_id: 1, description: "Family friendly hike by a beautiful lighthouse.")
Hike.create(name: "Jackles Lagoon", location: "American Camp", difficulty: "Easy", distance: 5, island_id: 1, description: "Wooded hike with great views of the water.")
Hike.create(name: "Lime Kiln Point Loop Trail", location: "Lime Kiln Point State Park", difficulty: "Easy", distance: 1, island_id: 1, description: "Famile friendly hike along the west coast line of San Juan Island. Great spot for seeing Orca Whales.")
Hike.create(name: "Young Hill Loop", location: "San Juan Island Historical Park", difficulty: "Moderate", distance: 4, island_id: 1, description: "Hike through hills and cedar groves.")
Hike.create(name: "Bell Point Loop", location: "San Juan Island Historical Park", difficulty: "Easy", distance: 2, island_id: 1, description: "Easy hike along the Westcott Bay.")
Hike.create(name: "Roche Harber Lake Loop", location: "Friday Harbor", difficulty: "Easy", distance: 4, island_id: 1, description: "Center island hike that features views of Briggs Lake.")
Hike.create(name: "Quarry Trail", location: "Friday Harbor", difficulty: "Easy", distance: 1, island_id: 1, description: "Great forest setting next to Roche Harbor.")

Hike.create(name: "Mountain Lake/ Twins Lakes Trail", location: "Moran State Park", difficulty: "Moderate", distance: 6, island_id: 2, description: "Wooded hike featuring three lakes.")
Hike.create(name: "Little Summit Trail", location: "Moran State Park", difficulty: "Moderate", distance: 2, island_id: 2, description: "Hike on the side of Mt. Constitution that features views and wild flowers.")
Hike.create(name: "Mt. Picket Trail", location: "Moran State Park", difficulty: "Hard", distance: 5, island_id: 2, description: "Great alternative to Mt Constitution with very low traffic in Moran State Park")
Hike.create(name: "Ship Peak", location: "Turtleback Mountain Preserve", difficulty: "Moderate", distance: 3, island_id: 2, description: "Beautifal views along hillsides of wildflowers.")
Hike.create(name: "Crescent Beach Trail", location: "Crescent Beach Preserve", difficulty: "Easy", distance: 2, island_id: 2, description: "Easy hike right next to East Sound")
Hike.create(name: "Judd Cove trail", location: "Judd Cove Preserve", difficulty: "Easy", distance: 2, island_id: 2, description: "Family friendly hike featuring a historical lime kiln structure.")

Hike.create(name: "Lopez Hill", location: "Lopez Island", difficulty: "Easy", distance: 2, island_id: 4, description: "Family friendly hike around the woods of Lopez Hill.")
Hike.create(name: "Iceberg Point Trail", location: "San Juan Island Historical Park", difficulty: "Easy", distance: 2, island_id: 4, description: "Hike with coastal access, great views and wild flowers.")
Hike.create(name: "Watmough Bay", location: "San Juan Wilderness", difficulty: "Easy", distance: 2, island_id: 4, description: "Family friendly hike with beach access.")
Hike.create(name: "Shark Reef Trail", location: "San Juan Island Historical Park", difficulty: "Easy", distance: 1, island_id: 4, description: "Coastal hike featuring great views.")
Hike.create(name: "Spencer Spit Trail", location: "Spencer Spit State Park", difficulty: "Easy", distance: 1, island_id: 4, description: "Fun and easy hike to the Spencer Spit point.")

Hike.create(name: "Hoffman Cove", location: "Shaw Island", difficulty: "Easy", distance: 4, island_id: 5, description: "Coastal hike with great views.")
Hike.create(name: "Ellis Preserve Trail", location: "Ellis Preserve", difficulty: "Easy", distance: 1, island_id: 5, description: "Wooded hike in the middle of Shaw Island.")

Hike.create(name: "Clark Island Trail", location: "Clark Island State Park", difficulty: "Easy", distance: 1, island_id: 6, description: "Hike around Clark Island.")

Hike.create(name: "Lakeview Trail", location: "Blakely Island", difficulty: "Moderate", distance: 2, island_id: 7, description: "Hike featuring cedar groves and views of Horseshoe Lake.")
Hike.create(name: "Driftwood Trail", location: "Driftwood Beach", difficulty: "Easy", distance: 1, island_id: 7, description: "Family friendly beach hike.")

Hike.create(name: "Patos Island Loop", location: "Patos Island State Park", difficulty: "Easy", distance: 3, island_id: 8, description: "Hike around Patos Island")

Hike.create(name: "Turn Island Trail", location: "Turn Island State Park", difficulty: "Easy", distance: 31, island_id: 9, description: "Hike around Turn Island")

Hike.create(name: "Waldron Island Trail", location: "Waldron Island", difficulty: "Moderate", distance: 2, island_id: 10, description: "Hike around Waldron Island")

Hike.create(name: "James Island North Loop", location: "James Island State Park", difficulty: "Easy", distance: 2, island_id: 11, description: "Hike around the north end of James Island")
Hike.create(name: "James Island South Loop", location: "James Island State Park", difficulty: "Moderate", distance: 1, island_id: 11, description: "Hike around the south end of James Island")

Hike.create(name: "Ewing Cove", location: "Sucia Island State Park", difficulty: "Moderate", distance: 2, island_id: 22, description: "Coastal hike with beach access")
Hike.create(name: "Lawson Bluffs", location: "Sucia Island State Park", difficulty: "Easy", distance: 2, island_id: 12, description: "Coastal hike with great views and wild flowers")
Hike.create(name: "Sucia Island North Loop", location: "Sucia Island State Park", difficulty: "Moderate", distance: 5, island_id: 12, description: "Hike around Sucia Island")

Hike.create(name: "Stuart Island School Trail", location: "Stuart Island State Park", difficulty: "easy", distance: 3, island_id: 13, description: "Family friendly hike.  Be sure to stay in the state park")

Hike.create(name: "Matia Island Loop", location: "Matia Island State Park", difficulty: "easy", distance: 1, island_id: 14, description: "Hike around Matia Island")

Hike.create(name: "DNW Trail", location: "Decatur Island", difficulty: "Moderate", distance: 5, island_id: 15, description: "This hike features costal and wooded terrain.")
Hike.create(name: "San Elmo Peak Trail", location: "Decatur Island", difficulty: "Moderate", distance: 3, island_id: 15, description: "Wooded hike to the top of San Elmo.")

Hike.create(name: "Henry Island Isthmus Trail", location: "Henry Island", difficulty: "Easy", distance: 2, island_id: 16, description: "Family friendly hike on the east end of Henry Island")

Hike.create(name: "Parkside Trail", location: "Obstruction Island", difficulty: "Moderate", distance: 3, island_id: 17, description: "Hike that features access to all sides of the island.")

Review.create(content: "Loved this hike!", hike_id: 1, user_id: 1)

