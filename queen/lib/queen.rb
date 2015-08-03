class Array
  def queen?(pawn_pos)
    if self[1] == pawn_pos[1]
      true
    elsif self[0] == pawn_pos[0]
      true
    else
      false
    end
  end
end
