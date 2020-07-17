# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many :pets }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of(:name).case_insensitive }

  it { should accept_nested_attributes_for(:pets).allow_destroy(true) }
end
