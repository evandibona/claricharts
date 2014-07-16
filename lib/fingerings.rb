class Clarinet
  def self.dir
    "content/images/fingerings/"
  end
  def self.labels
    return [
      :ti_1, :ti_2, 
      :uno, :due, :tre, 
      :bis_l, 
      :rs_1, :rs_2, :rs_3, :rs_4, 
      :lp_1, :lp_2, :lp_3, :lp_4, 
      :quattro, :cinque, :sei, 
      :bis_r, 
      :rp_1, :rp_2, :rp_3, :rp_4, 
      :t, :oct
    ] 
  end
  def self.notes
    return {
      # All of the fingerings here need to be reworked. 
      "e-n-0" => { fingers: [[ :t, :uno, :due, :tre, :quattro, :cinque, :sei, :rp_4, :lp_4 ], [], [] ], 
                   octave: 3, 
                   notes: "I could say something interesting." 
                 }, 
      "f-n-0" => { fingers: [[ :t, :uno, :due, :tre, :quattro, :cinque, :sei, :rp_4 ], [], [] ], 
                   octave: 3, 
                 }, 
      "f-#-0.g-b-0" => { fingers: [[ :t, :uno, :due, :tre, :quattro, :cinque, :sei, :rp_4, :lp_3 ], [], [] ], 
                   octave: 3, 
                 }, 
      "g-n-0" => { fingers: [[ :t, :uno, :due, :tre, :quattro, :cinque, :sei ], [], [] ], 
                   octave: 3, 
                 }, 
           }
  end
end
