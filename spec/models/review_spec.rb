require 'rails_helper'

describe Review do
  it { should validate_presence_of :author; :content; :rating }
    it { should validate_numericality_of :rating }
    it { should validate_length_of :content }

    it { should belong_to :product }

end
