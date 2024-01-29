# frozen_string_literal: true

# name: Private Messages Scope
# about: Adds API scopes for private messages
# version: 0.1
# authors: sivel
# url: https://github.com/sivel/private_messages_scope

after_initialize do
  add_api_key_scope(
    :private_messages,
    {
      list: {
        actions: %w[list#private_messages],
        params: %i[username],
      },
    },
  )
end
