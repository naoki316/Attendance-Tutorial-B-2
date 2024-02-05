# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# ページネーションラベルの設定
WillPaginate::I18n.t('previous_label', 'Previous')
WillPaginate::I18n.t('next_label', 'Next')
