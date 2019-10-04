json.extract! article, :id, :body, :user_id, :recipe, :abstract, :published_date, :created_at, :updated_at
json.url article_url(article, format: :json)
