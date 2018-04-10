module ApplicationHelper

  # 用于在form中，render model 的错误信息
  def error_messages(f)
    render "shared/error_messages", target: f.object
  end
end
