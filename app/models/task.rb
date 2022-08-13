class Task < ApplicationRecord
  belongs_to :workplan
  enum :status, [ :not_started, :in_progress, :complete ]
end
