json.extract! campaign, :id, :name, :from_email, :from_name, :reply_to, :title, :plain_text, :html_text, :sent_date, :recipients, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
