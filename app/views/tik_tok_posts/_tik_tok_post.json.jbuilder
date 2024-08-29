json.extract! tik_tok_post, :id, :caption, :author, :views, :likes, :created_at, :updated_at
json.url tik_tok_post_url(tik_tok_post, format: :json)
