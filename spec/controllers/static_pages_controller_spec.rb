# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'home page' do
    before do
      get :home
    end

    it "gets home" do
      expect(response).to have_http_status(:success)
    end

    it "home has title" do
      expect(response.body).to have_title("Home | #{base_title}")
    end
  end

  describe 'help page' do
    before do
      get :help
    end

    it "gets help" do
      expect(response).to have_http_status(:success)
    end

    it 'help has title' do
      expect(response.body).to have_title("Help | #{base_title}")
    end
  end

  describe 'about page' do
    before do
      get :about
    end

    it "gets about" do
      expect(response).to have_http_status(:success)
    end

    it 'help has title' do
      expect(response.body).to have_title("About | #{base_title}")
    end
  end

  describe 'contact page' do
    before do
      get :contact
    end

    it "gets contact" do
      expect(response).to have_http_status(:success)
    end

    it 'help has title' do
      expect(response.body).to have_title("Contact | #{base_title}")
    end
  end
end
