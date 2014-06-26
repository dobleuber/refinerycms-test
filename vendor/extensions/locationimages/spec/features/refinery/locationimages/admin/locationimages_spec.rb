# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Locationimages" do
    describe "Admin" do
      describe "locationimages" do
        refinery_login_with :refinery_user

        describe "locationimages list" do
          before do
            FactoryGirl.create(:locationimage, :title => "UniqueTitleOne")
            FactoryGirl.create(:locationimage, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.locationimages_admin_locationimages_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.locationimages_admin_locationimages_path

            click_link "Add New Locationimage"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Locationimages::Locationimage.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Locationimages::Locationimage.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:locationimage, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.locationimages_admin_locationimages_path

              click_link "Add New Locationimage"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Locationimages::Locationimage.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:locationimage, :title => "A title") }

          it "should succeed" do
            visit refinery.locationimages_admin_locationimages_path

            within ".actions" do
              click_link "Edit this locationimage"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:locationimage, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.locationimages_admin_locationimages_path

            click_link "Remove this locationimage forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Locationimages::Locationimage.count.should == 0
          end
        end

      end
    end
  end
end
