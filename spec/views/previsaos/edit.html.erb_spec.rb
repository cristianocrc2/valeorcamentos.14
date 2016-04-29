require 'rails_helper'

RSpec.describe "previsaos/edit", type: :view do
  before(:each) do
    @previsao = assign(:previsao, Previsao.create!(
      :previsao => "MyString",
      :ativo => false,
      :subsubcategoria => nil
    ))
  end

  it "renders the edit previsao form" do
    render

    assert_select "form[action=?][method=?]", previsao_path(@previsao), "post" do

      assert_select "input#previsao_previsao[name=?]", "previsao[previsao]"

      assert_select "input#previsao_ativo[name=?]", "previsao[ativo]"

      assert_select "input#previsao_subsubcategoria_id[name=?]", "previsao[subsubcategoria_id]"
    end
  end
end
