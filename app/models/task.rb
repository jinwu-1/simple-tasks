class Task < ApplicationRecord
  belongs_to :project
  validates_presence_of :name, :description
  # validates :status, inclusion: { in: ["In Progress", "Complete", "Not Started"] }

  # STATUS_OPTIONS = ["In Progress", "Complete", "Not Started"]

end
