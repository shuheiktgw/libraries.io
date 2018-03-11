require 'rails_helper'

describe RepositoryOrganisationSerializer do
  subject { described_class.new(build(:repository_organisation)).serializable_hash[:data][:attributes].keys }

  it 'should have expected attribute names' do
    is_expected.to eql([
      :github_id, :login, :user_type, :created_at, :updated_at, :name,
      :company, :blog, :location, :hidden, :last_synced_at, :email, :bio,
      :followers, :following, :uuid, :host_type
      ])
  end
end
