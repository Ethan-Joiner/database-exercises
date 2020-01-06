================================= DATABASE DESIGN MINI EXERCISE 1
For each scenerio, select the best relationship type and why:
  - in a dating app: users and user_profiles
  One to one. Each individual user will have one unique profile.
  - in an online marketplace: orders and products
  Many to many. Multiple orders can have multiple products.
  - in a blog application: users and posts
  One to many. Each user can have multiple posts but not vice versa.
  - in a social media app: users and meetups
  Many to many. Multiple users can attend multiple meetups and vice versa.
  - in an app for professional networking: businesses and addresses
  Many to many. Each business can have multiple addresses and each address can host multiple businesses.
  - in a dog walking app: pet_records and pet_owners
  One to many. Each owner can have multiple pets but not really vice versa unless they are weird and need two accounts. Maybe many to many.