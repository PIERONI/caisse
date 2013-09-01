require 'spec_helper'

describe "Caisse" do

  it 'loads PaiementCic' do
    expect(Caisse.new(:cic).gateway)
      .to eq :cic
  end

  it 'loads Atos' do
    expect(Caisse.new(:atos).gateway)
      .to eq :atos
  end

end