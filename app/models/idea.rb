# frozen_string_literal: true
class Idea < ApplicationRecord
  self.table_name  = 'ideas'
  self.primary_key = 'id'

  belongs_to :user
end
