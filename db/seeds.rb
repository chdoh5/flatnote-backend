# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Note.delete_all
Tag.delete_all
Notetag.delete_all

user = User.create(username: "christine")
remus = User.create(username: "remus")

test_note = Note.create(title: "Test-Title", content:"This is a test", user_id: user.id)
test_note2 = Note.create(title: "2nd Test-Title", content:"This is a second test", user_id: user.id)
test_note3 = Note.create(title: "3rd Test-Title", content:"This is a third test", user_id: user.id)
test_note4 = Note.create(title: "Remus Note", content:"This is Remus' note", user_id: remus.id)

test_tag = Tag.create(name: "Test-Tag")
animals_tag = Tag.create(name: "animals")
food_tag = Tag.create(name: "food")


notetag = Notetag.create(note_id: test_note.id, tag_id: test_tag.id)
notetag2 = Notetag.create(note_id: test_note.id, tag_id: animals_tag.id)
notetag3 = Notetag.create(note_id: test_note3.id, tag_id: food_tag.id)
notetag3 = Notetag.create(note_id: test_note2.id, tag_id: food_tag.id)