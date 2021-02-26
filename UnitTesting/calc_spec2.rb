  describe "média" do 
    it "deve ser igual a 2" do 
      colecao = MiniTest::Mock.new 
      colecao.expect :valores, [1,2,3]
      @calculadora.media(colecao)
      colecao.verify 
    end
  end 