class Reaction < ApplicationRecord
  belongs_to :to_user, class_name: "User"
  belongs_to :from_user, class_name: "User"


  enum status: { like: 0, dislike: 1 }
end
# class_name: "User"を追加　to_userのモデルはUserモデルであるということ
# reaction.to_user
# reaction.from_user　が可能