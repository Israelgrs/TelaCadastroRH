require "application_system_test_case"

class CadastrosTest < ApplicationSystemTestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "visiting the index" do
    visit cadastros_url
    assert_selector "h1", text: "Cadastros"
  end

  test "creating a Cadastro" do
    visit cadastros_url
    click_on "New Cadastro"

    fill_in "Address", with: @cadastro.address
    fill_in "Cargo", with: @cadastro.cargo
    fill_in "Email", with: @cadastro.email
    fill_in "Name", with: @cadastro.name
    fill_in "Pretencao salarial", with: @cadastro.pretencao_salarial
    fill_in "Telefone", with: @cadastro.telefone
    click_on "Create Cadastro"

    assert_text "Cadastro was successfully created"
    click_on "Back"
  end

  test "updating a Cadastro" do
    visit cadastros_url
    click_on "Edit", match: :first

    fill_in "Address", with: @cadastro.address
    fill_in "Cargo", with: @cadastro.cargo
    fill_in "Email", with: @cadastro.email
    fill_in "Name", with: @cadastro.name
    fill_in "Pretencao salarial", with: @cadastro.pretencao_salarial
    fill_in "Telefone", with: @cadastro.telefone
    click_on "Update Cadastro"

    assert_text "Cadastro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadastro" do
    visit cadastros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadastro was successfully destroyed"
  end
end
