class Actor < ApplicationRecord
 # # - name: must be present; must be unique in combination with dob
 validates :name, :presence => true, :uniqueness => { :scope => :dob}

 # - dob: no rules
 has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")
has_many(:movies, :class_name => "Movie", :through => :characters, :foreign_key => "actor_id")
 # - bio: no rules
 # - image_url: no rules
end
