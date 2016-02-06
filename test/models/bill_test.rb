require 'test_helper'

class BillTest < ActiveSupport::TestCase

  test "Carga de nueva factura SIN errores de validacion" do
    bill = Bill.create(description: 'Factura 1',
                   total: '100',
                   issue_date: Time.zone.parse("1999-05-09"),
                   person_id: 1,
                   client_id: 1 )
    assert bill.valid?
  end
  test "Carga de nueva factura CON errores de validacion" do
    bill2 = Bill.create(description: '',
                   total: 'no_es_numero',
                   issue_date: Time.zone.parse("1999-05-09"),
                   person_id: 1,
                   client_id: 1 )
    assert_not bill2.valid?
  end
end
