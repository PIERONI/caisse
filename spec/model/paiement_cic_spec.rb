require 'spec_helper'

describe "PaiementCic gateway" do

  it "generates a valid token" do
    expect( PaiementCic.new.hmac_token )
      .to eq 'b2cadbe7155bab963248021f82078c8533e1771c'
  end

  it "accepts valid parameters" do
    expect( PaiementParams.new.load_params(:montant => '123', :reference => '456') )
      .to eq ({:montant=>"123.00EUR", :reference=>"456", :texte_libre=>"", :lgue=>"FR", :mail=>""})
  end

  it "doesn't accept a payment without a payment id" do
    expect{ PaiementParams.new.load_params(:montant => '123') }
      .to raise_error "PaiementCic error ! Missing required parameter :reference"
  end

  it "doesn't accept a payment without an amount" do
    expect{ PaiementParams.new.load_params(:reference => '456') }
      .to raise_error "PaiementCic error ! Missing required parameter :montant"
  end

end