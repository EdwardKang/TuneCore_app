### Some things I considered while completing this task..

- I decided to only add test for the methods I created although I set up the testing environment for capybara because the bulk of the code was focused on the methods to find a match for the search
- In order to make the search better I could've used regex expressions instead of splitting the titles into words, but decided the code was more readible this way (I did not have to write out edge cases for removing the words that match search terms within other words, which would clutter the code)
- My search will only return songs, whose title, artist or album, has words that match the search term's full words exactly
- I used a seed file to make fake data using faker (all data are in the form of Faker names)
- I used ajax requests for the searches so there is no page refresh



### How would I take care of this assignment if there were 100 million songs

- I would use a regex search method as I would not have to do any array searches, which would speed up the process
- Additionally, I would load everything up client side with Javascript and do the search methods all in Javascript, so I would not need to access the database on every search
- The code would stay the same for the most part (instead of selects in the matching_songs method I would use javascript's filter method, etc.)
