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

RSpec.describe BoxesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Box. As you add validations to Box, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BoxesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all boxes as @boxes" do
      box = Box.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:boxes)).to eq([box])
    end
  end

  describe "GET #show" do
    it "assigns the requested box as @box" do
      box = Box.create! valid_attributes
      get :show, {:id => box.to_param}, valid_session
      expect(assigns(:box)).to eq(box)
    end
  end

  describe "GET #new" do
    it "assigns a new box as @box" do
      get :new, {}, valid_session
      expect(assigns(:box)).to be_a_new(Box)
    end
  end

  describe "GET #edit" do
    it "assigns the requested box as @box" do
      box = Box.create! valid_attributes
      get :edit, {:id => box.to_param}, valid_session
      expect(assigns(:box)).to eq(box)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Box" do
        expect {
          post :create, {:box => valid_attributes}, valid_session
        }.to change(Box, :count).by(1)
      end

      it "assigns a newly created box as @box" do
        post :create, {:box => valid_attributes}, valid_session
        expect(assigns(:box)).to be_a(Box)
        expect(assigns(:box)).to be_persisted
      end

      it "redirects to the created box" do
        post :create, {:box => valid_attributes}, valid_session
        expect(response).to redirect_to(Box.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved box as @box" do
        post :create, {:box => invalid_attributes}, valid_session
        expect(assigns(:box)).to be_a_new(Box)
      end

      it "re-renders the 'new' template" do
        post :create, {:box => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested box" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => new_attributes}, valid_session
        box.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested box as @box" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => valid_attributes}, valid_session
        expect(assigns(:box)).to eq(box)
      end

      it "redirects to the box" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => valid_attributes}, valid_session
        expect(response).to redirect_to(box)
      end
    end

    context "with invalid params" do
      it "assigns the box as @box" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => invalid_attributes}, valid_session
        expect(assigns(:box)).to eq(box)
      end

      it "re-renders the 'edit' template" do
        box = Box.create! valid_attributes
        put :update, {:id => box.to_param, :box => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested box" do
      box = Box.create! valid_attributes
      expect {
        delete :destroy, {:id => box.to_param}, valid_session
      }.to change(Box, :count).by(-1)
    end

    it "redirects to the boxes list" do
      box = Box.create! valid_attributes
      delete :destroy, {:id => box.to_param}, valid_session
      expect(response).to redirect_to(boxes_url)
    end
  end

end
