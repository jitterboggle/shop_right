class Meal < ApplicationRecord
  has_attached_file :meal_image, styles: { medium: "300x300", thumb: "100x100" }
    validates_attachment :meal_image, content_type: { 
      content_type: ["image/jpeg", "image/gif", "image/png"]
    } 

  enum diet: [:omnivore, :vegetarian, :vegan, :paleo]

  belongs_to :shopping_list

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true #, :reject_if => proc { |attributes| attributes['name'].blank? }

end
