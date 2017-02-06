# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# my_content = "Doin' it our way. There's nothing we wont try. Never heard the word impossible. This time there's no stopping us.\" Baby if you've ever wondered - wondered whatever became of me. I'm living on the air in Cincinnati. Cincinnati WKRP. Thank you for being a friend. Travelled down the road and back again. Your heart is true you're a pal and a confidant. The year is 1987 and NASA launches the last of Americas deep space probes. The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest. Sunny Days sweepin' the clouds away. On my way to where the air is sweet. Can you tell me how to get how to get to Sesame Street. Goodbye gray sky hello blue. There's nothing can hold me when I hold you. Feels so right it cant be wrong. Rockin' and rollin' all week long. In 1972 a crack commando unit was sent to prison by a military court for a crime they didn't commit. These men promptly escaped from a maximum security stockade to the Los Angeles underground. The Love Boat soon will be making another run. The Love Boat promises something for everyone. Got kind of tired packin' and unpackin' - town to town and up and down the dial. So join us here each week my friends you're sure to get a smile from seven stranded castaways here on Gilligans Isle. That this group would somehow form a family that's the way we all became the Brady Bunch.
#
# He's gainin' on you so you better look alive. He busy revin' up his Powerful Mach 5. Come and listen to a story about a man named Jed - a poor mountaineer barely kept his family fed. You wanna be where you can see our troubles are all the same. You wanna be where everybody knows Your name. In a freak mishap Ranger 3 and its pilot Captain William Buck Rogers are blown out of their trajectory into an orbit which freezes his life support systems and returns Buck Rogers to Earth five-hundred years later. Movin' on up to the east side. We finally got a piece of the pie. Here's the story of a lovely lady who was bringing up three very lovely girls. Here's the story of a lovely lady who was bringing up three very lovely girls., A man is born he's a man of means. Then along come two they got nothin' but their jeans. Thank you for being a friend. Travelled down the road and back again. Your heart is true you're a pal and a confidant.
#
# Wouldn't you like to get away? Sometimes you want to go where everybody knows your name. And they're always glad you came. Today still wanted by the government they survive as soldiers of fortune. Then one day he was shootin' at some food and up through the ground came a bubblin' crude. Oil that is. The weather started getting rough - the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest. They call him Flipper Flipper faster than lightning. No one you see is smarter than he. Got kind of tired packin' and unpackin' - town to town and up and down the dial. In 1972 a crack commando unit was sent to prison by a military court for a crime they didn't commit. These men promptly escaped from a maximum security stockade to the Los Angeles underground. A man is born he's a man of means. Then along come two they got nothin' but their jeans.
#
# Fleeing from the Cylon tyranny the last Battlestar – Galactica - leads a rag-tag fugitive fleet on a lonely quest - a shining planet known as Earth. Wouldn't you like to get away? Sometimes you want to go where everybody knows your name. And they're always glad you came.
#
# And we'll do it our way yes our way. Make all our dreams come true for me and you. No phone no lights no motor car not a single luxury. Like Robinson Crusoe it's primitive as can be? The weather started getting rough - the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. I have always wanted to have a neighbor just like you. I've always wanted to live in a neighborhood with you?"
#
# User.create(first_name: "Shannon", last_name: "Byrne", email: "s.byrne2254@gmail.com", password: "password")
#
# User.create(first_name: "Kelly", last_name: "Byrne", email: "kellyannbyrne@gmail.com", password: "password")
#
# 10.times do |i|
#   if i %2 == 0
#     Post.create(title: "My Blog Post #{i}", content: my_content, user_id: 1)
#   else
#     Post.create(title: "My Blog Post #{i}", content: my_content, user_id: 2)
#   end
# end


Post.all.each do |post|
  post.comments.create(user_id: 1, content: "Wow! Thanks!")
  post.comments.create(user_id: 2, content: "This is pretty good!")

  Comment.create(post_id: post.id, user_id: 1, content: "I liked it so much I had to comment again!")
end
