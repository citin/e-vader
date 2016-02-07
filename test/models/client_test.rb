require 'test_helper'
require 'rails/test_help'

class ClientTest < ActiveSupport::TestCase

  test "Creacion de cliente SIN datos de contacto" do
    cli1 = Client.create({ surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: '34221199', cui:'3-3445-2' })
    assert_not cli1.valid?
  end

  test "Creacion de cliente CON datos de contacto" do

    cli2 = Client.create( { surname: 'Yalin', name: 'Mariano', birthdate: Time.zone.parse("1989-05-09"), gender: 'masculino', du: '35221199',cui:'3-344-2', contacts_attributes: [{kind: 'whasap', info: '54221276492'}] })
    assert cli2.valid?
  end

  test "Creacion de cliente CON dato invalido" do
    params = { client: { surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: 'dni_invalido',cui:'3-3445-2', contacts_attributes: [{kind: 'whasap', info: '54221876492'}] } }
    cli3 = Client.create(params[:client])
    assert_not cli3.valid?
  end

  test "Borrado de cliente CON factura" do
    params = { client: { surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: '87552',cui:'3-3445-2', contacts_attributes: [{kind: 'whasap', info: '54221876492'}] } }
    cli4 = Client.create(params[:client])

    bill = Bill.create(description: 'Factura 1',
                   total: '100',
                   issue_date: Time.zone.parse("1999-05-09"),
                   person_id: 1,
                   client_id: cli4.id )
    cli4.destroy
    assert_not Bill.find_by_id bill.id
  end
  test "Borrado de cliente SIN factura" do
    params = { client: { surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: '875522',cui:'3-34452-2', contacts_attributes: [{kind: 'whasap', info: '54221876492'}] } }
    cli5 = Client.create(params[:client])
    cli5.destroy
    assert_not Client.find_by_id cli5.id
  end


end
