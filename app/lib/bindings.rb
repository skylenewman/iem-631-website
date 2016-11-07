Pakyow::App.bindings do
  # define bindings here
  scope :json do
    binding :json do
      {
        # content: "var j_o = jQuery.parseJSON(#{bindable});"
      }
    end
  end
end
