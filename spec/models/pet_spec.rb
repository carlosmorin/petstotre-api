# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pet, type: :model do
  it { should belong_to :category }

  it { should validate_presence_of :name }
end
