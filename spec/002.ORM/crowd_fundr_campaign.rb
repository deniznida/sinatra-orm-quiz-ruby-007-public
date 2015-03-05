class CrowdFundrCampaign < ActiveRecord::Base
  def create
    raise "Replace the __ with code to make the test pass"
  end

  def self.funded_campaigns
    self.where("total_funding >= funding_goal")
    #self.all.select {|campaign| campaign.total_funding > campaign.funding_goal}
  end

  def self.book_campaigns
    self.where("name LIKE '%book%'")
    #self.all.select {|campaign| campaign.name.split.include?("Book")}
  end

  def self.latest_finish
    self.order("finishing_date DESC").limit(1)
  end
end