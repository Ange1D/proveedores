require "application_system_test_case"

class ProveedorsTest < ApplicationSystemTestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "visiting the index" do
    visit proveedors_url
    assert_selector "h1", text: "Proveedors"
  end

  test "should create proveedor" do
    visit proveedors_url
    click_on "New proveedor"

    check "Pago" if @proveedor.Pago
    fill_in "Apellidomaterno", with: @proveedor.apellidoMaterno
    fill_in "Apellidopaterno", with: @proveedor.apellidoPaterno
    fill_in "Clabe", with: @proveedor.clabe
    fill_in "Correo", with: @proveedor.correo
    fill_in "Nombre", with: @proveedor.nombre
    fill_in "Razonsocial", with: @proveedor.razonSocial
    fill_in "Rfc", with: @proveedor.rfc
    click_on "Create Proveedor"

    assert_text "Proveedor was successfully created"
    click_on "Back"
  end

  test "should update Proveedor" do
    visit proveedor_url(@proveedor)
    click_on "Editar proveedor", match: :first

    check "Pago" if @proveedor.Pago
    fill_in "Apellidomaterno", with: @proveedor.apellidoMaterno
    fill_in "Apellidopaterno", with: @proveedor.apellidoPaterno
    fill_in "Clabe", with: @proveedor.clabe
    fill_in "Correo", with: @proveedor.correo
    fill_in "Nombre", with: @proveedor.nombre
    fill_in "Razonsocial", with: @proveedor.razonSocial
    fill_in "Rfc", with: @proveedor.rfc
    click_on "Update Proveedor"

    assert_text "Proveedor was successfully updated"
    click_on "Back"
  end

  test "should destroy Proveedor" do
    visit proveedor_url(@proveedor)
    click_on "Destroy this proveedor", match: :first

    assert_text "Proveedor was successfully destroyed"
  end
end
