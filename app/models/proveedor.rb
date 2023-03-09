class Proveedor < ApplicationRecord
    scope :mes_registro, -> { where('created_at >= ?', 1.month.ago) }
end
