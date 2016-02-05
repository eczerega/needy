require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe BusinessMediaController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # BusinessMedium. As you add validations to BusinessMedium, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BusinessMediaController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all business_media as @business_media" do
      business_medium = BusinessMedium.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:business_media)).to eq([business_medium])
    end
  end

  describe "GET #show" do
    it "assigns the requested business_medium as @business_medium" do
      business_medium = BusinessMedium.create! valid_attributes
      get :show, {:id => business_medium.to_param}, valid_session
      expect(assigns(:business_medium)).to eq(business_medium)
    end
  end

  describe "GET #new" do
    it "assigns a new business_medium as @business_medium" do
      get :new, {}, valid_session
      expect(assigns(:business_medium)).to be_a_new(BusinessMedium)
    end
  end

  describe "GET #edit" do
    it "assigns the requested business_medium as @business_medium" do
      business_medium = BusinessMedium.create! valid_attributes
      get :edit, {:id => business_medium.to_param}, valid_session
      expect(assigns(:business_medium)).to eq(business_medium)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new BusinessMedium" do
        expect {
          post :create, {:business_medium => valid_attributes}, valid_session
        }.to change(BusinessMedium, :count).by(1)
      end

      it "assigns a newly created business_medium as @business_medium" do
        post :create, {:business_medium => valid_attributes}, valid_session
        expect(assigns(:business_medium)).to be_a(BusinessMedium)
        expect(assigns(:business_medium)).to be_persisted
      end

      it "redirects to the created business_medium" do
        post :create, {:business_medium => valid_attributes}, valid_session
        expect(response).to redirect_to(BusinessMedium.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved business_medium as @business_medium" do
        post :create, {:business_medium => invalid_attributes}, valid_session
        expect(assigns(:business_medium)).to be_a_new(BusinessMedium)
      end

      it "re-renders the 'new' template" do
        post :create, {:business_medium => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested business_medium" do
        business_medium = BusinessMedium.create! valid_attributes
        put :update, {:id => business_medium.to_param, :business_medium => new_attributes}, valid_session
        business_medium.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested business_medium as @business_medium" do
        business_medium = BusinessMedium.create! valid_attributes
        put :update, {:id => business_medium.to_param, :business_medium => valid_attributes}, valid_session
        expect(assigns(:business_medium)).to eq(business_medium)
      end

      it "redirects to the business_medium" do
        business_medium = BusinessMedium.create! valid_attributes
        put :update, {:id => business_medium.to_param, :business_medium => valid_attributes}, valid_session
        expect(response).to redirect_to(business_medium)
      end
    end

    context "with invalid params" do
      it "assigns the business_medium as @business_medium" do
        business_medium = BusinessMedium.create! valid_attributes
        put :update, {:id => business_medium.to_param, :business_medium => invalid_attributes}, valid_session
        expect(assigns(:business_medium)).to eq(business_medium)
      end

      it "re-renders the 'edit' template" do
        business_medium = BusinessMedium.create! valid_attributes
        put :update, {:id => business_medium.to_param, :business_medium => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested business_medium" do
      business_medium = BusinessMedium.create! valid_attributes
      expect {
        delete :destroy, {:id => business_medium.to_param}, valid_session
      }.to change(BusinessMedium, :count).by(-1)
    end

    it "redirects to the business_media list" do
      business_medium = BusinessMedium.create! valid_attributes
      delete :destroy, {:id => business_medium.to_param}, valid_session
      expect(response).to redirect_to(business_media_url)
    end
  end

end
