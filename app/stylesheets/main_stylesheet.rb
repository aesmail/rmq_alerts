class MainStylesheet < ApplicationStylesheet

  def root_view(st)
    st.background_color = color.white
  end
  
  def alert_button(st)
    st.frame = {l: 10, t: 100, w: 300, h: 50}
    st.text = 'Alert Me'
    st.background_color = color.from_hex('#13408A')
  end

end
