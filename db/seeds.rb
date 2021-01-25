User.destroy_all 
Journal.destroy_all 
Dream.destroy_all 

user1 = User.create(username: "warrenniu", password_digest: "pass123", first_name: "Warren", last_name: "Niu", birthday: "September 22 1988")

# journal1 = Journal.create(title: "December 2020", year: 2020, month: "December", user: user1)
# journal2 = Journal.create(title: "January 2021", year: 2021, month: "January", user: user1)

# dream1 = Dream.create(title: "Lucidity project pitch", story:"A vivid dream right after I thought about a dream journal idea. I was pitching the idea to a unrecognizable individual", character: "stranger", place: "Unknown. Maybe a school?", action: "Hopeful", image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.elegantmedia.com.au%2Fblog%2Fwp-content%2Fuploads%2F2018%2F03%2Fpitchdeck.png&f=1&nofb=1", date: "January 8 2021", rating: 4, journal_id: 2)
# dream2 = Dream.create(title: "Dr. Riddell's house", story:"A vivid dream meeting Dr. Riddell's family. However, I've never met her family or know if she even has a husband or children", character: "Dr. Riddell and her family", place: "Someone's house. In a yard", action: "Watching", image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftheatticbirds.files.wordpress.com%2F2012%2F05%2Fbackyard.jpg&f=1&nofb=1", date: "December 1 2020", rating: 3, journal_id: 1)