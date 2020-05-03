# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Travell Williams", email: "travellwilliams11@gmail.com", password: "password", title: "Software Engineer")
User.create(name: "Peter Jang", email: "peterjang@yahoo.com", password: "password", title: "Engineering Manager")
Ticket.create(user_id: 1, title: "Capstone Idea", issue: "Choose a capstone project from a list of multi-million dollar, unicorn startup ideas.", created: Time.now, originator: "Travell Williams", emergency: FALSE, resolution: "Decided to create an issue tracker for a software developmemt team.", status: "Closed")
Ticket.create(user_id: 1, title: "Database", issue: "Create a database that meets specifications.", created: Time.now, originator: "Travell Williams", emergency: FALSE, resolution: "Created models and a database.", status: "Closed")
Ticket.create(user_id: 1, title: "MVC Architecture", issue: "Build models, routes, controllers and views.", created: Time.now, originator: "Travell Williams", emergency: FALSE, resolution: "...", status: "Pending")
Ticket.create(user_id: 1, title: "Implement Security", issue: "Use auth zero to implement user security into application. Possible also include user permissions.", created: Time.now, originator: "Travell Williams", emergency: FALSE, resolution: "...", status: "Open")
Ticket.create(user_id: 1, title: "Notifications", issue: "Build a way for users to receive notifications via email and/or text message.", created: Time.now, originator: "Travell Williams", emergency: FALSE, resolution: "...", status: "Open")
Ticket.create(user_id: 1, title: "Capstone Presentation", issue: "Prepare for final capstone presentation. ", created: Time.now, originator: "Travell Williams", emergency: FALSE, resolution: "...", status: "Open")
Ticket.create(user_id: 2, title: "Capstone Day", issue: "Today is the capstone!!!", created: Time.now, originator: "Travell Williams", emergency: TRUE, resolution: "...", status: "Open")
Attachment.create(ticket_id: 1, url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vox.com%2F2019%2F8%2F2%2F20750167%2Fx-men-marvel-mcu-house-of-x-d23&psig=AOvVaw2zV9kFFKc2ZiHC-EEYUkl9&ust=1588134228063000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCpkJajiukCFQAAAAAdAAAAABAE")
Attachment.create(ticket_id: 1, url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fscreenrant.com%2Fxmen-killed-deaths-house-x-marvel-comic%2F&psig=AOvVaw3IxiLzbUjHnK3cB4x4maAQ&ust=1588134301031000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNjbx7qjiukCFQAAAAAdAAAAABAD")
Attachment.create(ticket_id: 2, url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.syfy.com%2Fsyfywire%2Fhouse-of-x-4-claims-lives-several-major-x-men&psig=AOvVaw3IxiLzbUjHnK3cB4x4maAQ&ust=1588134301031000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNjbx7qjiukCFQAAAAAdAAAAABAH")
Attachment.create(ticket_id: 3, url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.newsarama.com%2F43207-the-original-original-x-men-are-all-back-sort-of.html&psig=AOvVaw1tr3-4O2VFsEWRyLkYV8JX&ust=1588134839232000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCCrb2liukCFQAAAAAdAAAAABAJ")
Attachment.create(ticket_id: 3, url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cbr.com%2Fmarvel-xmen-sales-analysis-theory%2F&psig=AOvVaw1tr3-4O2VFsEWRyLkYV8JX&ust=1588134839232000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOCCrb2liukCFQAAAAAdAAAAABAD")
Attachment.create(ticket_id: 3, url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Flaist.com%2F2019%2F07%2F12%2Fbeing_a_black_woman_experiencing_the_broad_museums_soul_of_a_nation.php&psig=AOvVaw2BUHe1fpNTERDNUnA8MRdY&ust=1588135051416000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCODVj5-miukCFQAAAAAdAAAAABAE")







