class Pedido < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :producto
end
