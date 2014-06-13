#Pickaplayer

##Pickaplayer allows sports fans to easily connect with their favorite players and find new interactive ways to participate in sports.


Todo
* Build sports  DONE
* Build teams DONE
* Build players DONE
* Add Pictures to Players
* Add Pictures to teams
* Separate Admin and User views
* develop game-scheduler
* develop player voter during games

User stories

As a user, I want to log in, pick my team, find a game, and vote on my favorite player. If that player is the best, I want to receive points that are stored on my profile and that will eventually be redeemable for prizes.

As an admin, I want to be able to add new sports, teams, and players. Additionally, I want to be able to schedual games so that people can join them and vote for their favorite players. I also want to be able to upload prizes for people to purchase using their points.


ADMIN INFO

Now you're able to do identify administrators:

if current_user.admin?
  # do something
end
If the page could potentially not have a current_user set then:

if current_user.try(:admin?)
  # do something
end
With the above way if current_user were nil, then it would still work without raising an undefined method `admin?' for nil:NilClass exception.

The code below can be used to grant admin status to the current user.

current_user.update_attribute :admin, true
