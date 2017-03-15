Pod::Spec.new do |s|
  s.name         = 'TimeAgo'
  s.version      = "0.1.0"
  s.summary      = "一行代码极速获取按A~Z分组精准排序的通讯录联系人 Swift版( 已处理姓名所有字符的排序问题)"

  s.homepage     = "https://github.com/roycms/TimeAgo.git"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "roycms" => "roycms@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/roycms/TimeAgo.git", :tag => s.version.to_s }

  s.source_files  = "Class/*.swift"

  s.requires_arc = true

end
