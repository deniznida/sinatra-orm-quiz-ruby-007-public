require_relative 'crowd_fundr_campaign'

describe "ORMs" do
  context "a CrowdFundrCampaign model" do
    before do
      @path = File.dirname(__FILE__)
      @db = setup_database_for_migrations(@path, 'crowd_fundr.db')

      Sequel::Migrator.run @db, "#{@path}/migrations"
    end

    describe "adding ORM capabilities" do
      it "should subclass Sequel::Model" do
        cfc = CrowdFundrCampaign.new
        cfc.class.superclass.should == Sequel::Model
      end
    end

    describe "create" do
    end

    describe "update" do
    end

    describe "read" do
    end

    describe "destroy" do
    end
  end
end
