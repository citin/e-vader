require 'test_helper'
require 'rails/test_help'

class ClientTest < ActiveSupport::TestCase

  test "Creacion de cliente SIN datos de contacto" do
    cli1 = Client.create({ surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: '34221199', cui:'3-3445-2' })
    assert_not cli1.valid?
  end

  test "Creacion de cliente CON datos de contacto" do
    params = { client: { surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: '35221199',cui:'3-3445-2', contacts_attributes: [{kind: 'whasap', info: '54221876492'}] } }

    cli2 = Client.create(params[:client])
    assert cli2.valid?
  end

  test "Creacion de cliente CON dato invalido" do
    params = { client: { surname: 'Sampayo', name: 'Ricardo', birthdate: Time.zone.parse("1988-05-09"), gender: 'masculino', du: 'dni_invalido',cui:'3-3445-2', contacts_attributes: [{kind: 'whasap', info: '54221876492'}] } }

    cli2 = Client.create(params[:client])
    assert_not cli2.valid?
  end


end
