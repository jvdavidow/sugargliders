given my views, what "objects/models" do I need in order to populate the right data?

User
	name
	age
	email
	username
	password
	twitter (?)
	
Reading
	glucose_reading
	stress_level
	exercise_level
	carbs_consumed
	unit_output
	
Post
	body
	reading_id
	user_id
	
Internal Post
	body
	group_id
	
Follow
	following_id
	follower_id
	
Bump
	post_id
	bumper_id
	bumped_id
	
Team
	user_id
	group_id
	tags
	
	
	ToDO:
	gagues - verbal and number score, develop log and show graph over time.
		develop gauge model for has_many relationship
	show page logic for profile/follow links on span3
	destroy method in follows_controller
	
	
	rails g migration AddMottoToUsers
	
	
	
	
	
	