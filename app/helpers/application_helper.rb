module ApplicationHelper

  # 用于在form中，render model 的错误信息
  def error_messages(f)
    render "shared/error_messages", target: f.object
  end

  # 用于是否显示左侧购物车
  def hidden_div_if(condition, attributes = {},&block)
    if condition
      attributes["style"] = "display:none;"
    end
    # detail see http://doc.rubyfans.com/rails/v5.2/
    # => <div id=cart>render xxxxx</div>
    content_tag("div",attributes,&block)
  end
end
