require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it "isnt empty" do
      expect(subject).to eq("Nao sou vazio")
    end
  end
end
