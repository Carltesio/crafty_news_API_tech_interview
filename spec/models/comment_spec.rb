require 'rails_helper'

RSpec.describe Comment, type: :model do
      describe "Comments has db columns" do
        it { is_expected.to have_db_column :body }
    end    

    describe "Factory" do
      it "Should have valid factory" do
        expect(create(:article)).to be_valid
      end
    end
end
