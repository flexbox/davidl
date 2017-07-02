require 'lib/svg'
require 'digest/md5'

module ImagesHelper
  def svg_tag(filename, options={})
    root      = Middleman::Application.root
    file_path = File.join(root, 'source', config[:images_dir], filename)
    return '(SVG img not found)' unless File.exists?(file_path)

    SVG.inline(file_path, options)
  end

  def gravatar_for(email)
    hash = Digest::MD5.hexdigest(email.chomp.downcase)
    "https://www.gravatar.com/avatar/#{hash}?size=250"
  end

  def fa(name)
    return "<i class='fa #{name}' aria-hidden='true'></i>"
  end

  def fa_stack(name, background)
    return "<span class='fa-stack fa-lg'>
              <i class='fa #{background} fa-stack-2x'></i>
              <i class='fa #{name} fa-stack-1x fa-inverse'></i>
            </span>"
  end

end
