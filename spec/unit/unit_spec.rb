# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  # valid inputs
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 40.0, published_date: '2021-09-28 01:10:00')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  #invalid inputs
  subject do
    described_class.new(title: '', author: 'J.K. Rowling', price: 40.0, published_date: '2021-09-28 01:10:00')
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  #invalid inputs
  subject do
    described_class.new(title: 'harry potter', author: '', price: 40.0, published_date: '2021-09-28 01:10:00')
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  #invalid inputs
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: -2, published_date: '2021-09-28 01:10:00')
  end

  it 'is not valid without valid price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end
