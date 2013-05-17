#-*- coding: utf-8 -*-

Plugin.create(:block) do
  command(:block,
    name: 'block',
    description: '(ﾟ∀ﾟ)o彡゜ブロック!ブロック!',
    condition: lambda{|x| true},
    visible: true,
    role: :timeline) do |opt|
    opt.messages.each do |m|
      (Service.primary.twitter/'blocks/create').json(:screen_name => m.user.idname)
    end
  end
end
