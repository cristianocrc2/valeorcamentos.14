class Subsubcategoria < ActiveRecord::Base
  belongs_to :subcategoria
  has_many :previsaos
end
