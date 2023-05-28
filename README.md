# The Last Airbender

## My Reflection

On the whole I feel pretty good about this, I don't love it that's for sure. Specifically I don't like having my logic in built straight into the initialize for my PORO. I would like that to at the very least be in a helper method. When I started to take more thant 10+ minutes on my PORO and PORO testing, I started to get anxious and I just put it somewhere I knew it would work. Putting it in a helper method, would be ideal in my eyes because then there isn't a ton of logic in the view as well. This is a refactor opportunity for me. Another one is to work the view a little bit better. Get the `allies` and `enemeies` out of thier arrays. I know how I would start going about doing it. I was coming up to the wire and didn't think I would have enough time to finish it if I started and any errors came up. I would add some code like this ```<% @members.allies/enemies.each do |ally| %>
<%= ally %>
<% end %>``` The allies and enemies show up on the page, it's just a little ugly being in an array still. Setting up the Facade/Service/Poro all felt good. I really feel like I am starting to get the hang of consuming an API. I know I have been saying it a lot, but Thank you again. I really appreciate you being flexible with me. 
### Background

The Last Airbender is an animated series that ran from 2005 to 2008. Some people can manipulate classical elements (wind, water, fire, earth) with psychokinetic variants of the Chinese martial arts known as "bending". One individual, the Avatar, is capable of bending all four elements and is responsible for maintaining harmony between the world's four nations.

The four nations are: the "Water Tribes", the "Earth Kingdom", the "Fire Nation", and the "Air Nomads".

### Instructions

Using an Airbender API provided to you by your instructors, retrieve a subset of information, and display the relevant information per the instructions from your instructor.

### Versions

Rails 7.0.4

Ruby 3.1.1

### Setup

- Clone this repo
- `bundle install`
- `rails db:{create,migrate}`
- `rails s`


- Start time: 5:36
- End time: 7:27