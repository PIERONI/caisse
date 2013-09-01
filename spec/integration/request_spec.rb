require 'spec_helper'

describe "Request" do

  it 'generates a valid HTML form' do
    request = PaiementCic.new.request(:montant => 123.00, :reference => 1)
    form = request.form(:button_text => 'text', :button_class => 'btn btn-pink')

    form.should include "<form name='paiementcic' action='https://paiement.creditmutuel.fr/test/paiement.cgi' method='post'>\n"
  end

end