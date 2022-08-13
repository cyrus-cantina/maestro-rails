class Workplan < ApplicationRecord
  belongs_to :workplan_category
  enum :status, [ :not_started, :in_progress, :complete ]
end
