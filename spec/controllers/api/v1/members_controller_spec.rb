require 'rails_helper'

RSpec.describe Api::V1::MembersController, type: :controller do
  before :each do
    @member = create(:member)
  end

  describe '/GET show' do
    before :each do |test|
  	  merge_header(auth_headers(@member.id,Rails.application.secrets.role_member)) unless test.metadata[:logged_out]
    end
    
    it 'should return HTTP OK' do
      get 'show', params: {id: @member.id}
      expect(response.status).to eq(200)
    end

    it 'should return JSON with key {member, token}' do
        get 'show', params: {id: @member.id}
        expect(response_json).to include("member", "token")
    end

    it 'should return the correct member' do
      get 'show', params: {id: @member.id}
      member = response_json["member"]
      expect(member["email"]).to eq(@member.email)
      expect(member["full_name"]).to eq(@member.full_name)
      expect(member["phone_number"]).to eq(@member.phone_number)
    end
  end
end
