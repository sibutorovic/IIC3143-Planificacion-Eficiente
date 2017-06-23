class AddAttachmentPdfToPlans < ActiveRecord::Migration
  def self.up
    change_table :plans do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :plans, :pdf
  end
end
