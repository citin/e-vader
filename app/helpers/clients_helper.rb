module ClientsHelper

  def month_to_s(number)
    mes = [nil, 'Enero', 'Febrero', 'Marzo', 'Abril',
      'Mayo','Junio', 'Julio', 'Agosto', 'Septiembre',
      'Octubre','Noviembre', 'Diciembre' ]
    mes[number.to_i]
    end
  end
