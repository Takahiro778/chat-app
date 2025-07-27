Rails.application.routes.draw do
  devise_for :users  # ← 必ず必要！
  root to: "messages#index"
end