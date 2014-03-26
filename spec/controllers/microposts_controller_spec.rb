require 'spec_helper'

describe MicropostsController do
  describe "in the Microposts controller" do
    describe "submitting to the create action" do
      before { post :create }
      specify { expect(response).to redirect_to(signin_path) }
    end

    describe "submitting to the destroy action" do
      before { delete :destroy, id: 1 }
      specify { expect(response).to redirect_to(signin_path) }
    end
  end
end
