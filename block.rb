#-*- coding: utf-8 -*-

# Copyright 2013-2014, pocke
# Licensed MIT
# http://opensource.org/licenses/mit-license.php

Plugin.create(:block) do
  command(
    :block,
    name: 'block',
    description: 'ブロック',
    condition: lambda{|x| true},
    visible: true,
    role: :timeline
  ) do |opt|
    opt.messages.each do |m|
      (Service.primary.twitter/'blocks/create').json(screen_name: m.user.idname)
    end
  end
end
