require 'rails_helper'

# Test suite for Item model
RSpec.describe Item, type: :model do
  # Association Test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # Validation Test
  # ensure column name is present before saving

  it { should validate_presence_of(:name) } 
  # https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec

  # pending "add some examples to (or delete) #{__FILE__}"
end
