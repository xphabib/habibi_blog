# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  biographical_Info      :text
#  display_name           :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  nickname               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sessions               :string
#  slug                   :string
#  username               :string
#  website                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role_id                :integer
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend FriendlyId
  friendly_id :name, use: :slugged
end
