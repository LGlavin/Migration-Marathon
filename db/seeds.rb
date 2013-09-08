# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book_list = [
{
  title: 'The Great Gatsby',
  author: 'blah',
  ratings: 4
},
{
  title: 'Inception',
  author: 'blah',
  ratings: 4
},
{
  title: 'The Car',
  author: 'blah',
  ratings: 4
},

{
  title: 'Jack and Jill',
  author: 'blah',
  ratings: 4
}
]

book_list.each do |attributes|
   book = Book.where({
     title: attributes[:title],
     author: attributes[:author],
     ratings: attributes[:ratings]
     }).first

  if book.nil?
    book = Book.new(attributes)
  else
    book.assign_attributes(attributes)
  end

  book.save!
end

category_list = [

{
  
fiction: true,
nonfiction: false,
name: "action"

}

]

category_list.each do |attributes|
  category = Category.where({
    fiction: attributes[:fiction],
    nonfiction: attributes[:nonfiction],
    name: attributes[:name]
    })
  if category.nil?
    category = Category.new(attributes)
  else
    category.assign_attributes(attributes)
  end
  category.save!
end



