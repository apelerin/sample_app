# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  it "gets home" do
    get :home
    expect(response).to have_http_status(:success)
  end

  it "gets help" do
    get :help
    expect(response).to have_http_status(:success)
  end

  it "gets about" do
    get :about
    expect(response).to have_http_status(:success)
  end
end
