if BodyPart.count == 0
  ["胸", "背中", "肩", "腕", "脚"].each do |name|
    BodyPart.create!(name: name)
  end
end