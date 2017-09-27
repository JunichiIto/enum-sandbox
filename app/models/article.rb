# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  content    :text             not null
#  status     :integer          default("draft"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  validates :title, :content, :status, presence: true
  validates :status, inclusion: { in: Article.statuses.keys }

  def toggle_status!
    if draft?
      published!
    else
      draft!
    end
  end
end
