require 'rails_helper'

# Test suite for Todo model
RSpec.describe Todo, type: :model do
  # association & validation matcher from gem 'shoulda-matchers'
  # Association Test
  # ensure Todo model has a 1:m relationship with Item model
  it { should have_many(:items).dependent(:destroy) }
  # Validation Test
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }

  # pending "add some examples to (or delete) #{__FILE__}"
end
