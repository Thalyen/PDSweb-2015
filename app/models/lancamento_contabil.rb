class LancamentoContabil < ActiveRecord::Base
	validates :titulo, length: { minimum: 5}
	validates :titulo, :valor, :tipo, presence: true
	validates :valor, numericality: {greater_than_or_equal_to: 0.01}
end
