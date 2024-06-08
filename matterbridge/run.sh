#!/usr/bin/with-contenv bashio

HOME_ASSISTANT_URL=http://supervisor/core
HOME_ASSISTANT_ACCESS_TOKEN=$SUPERVISOR_TOKEN
HOME_ASSISTANT_CLIENT_CONFIG=$(bashio::config 'home_assistant_client_config')

export HOME_ASSISTANT_URL
export HOME_ASSISTANT_ACCESS_TOKEN
export HOME_ASSISTANT_CLIENT_CONFIG

npm run matterbridge -- -add ./node_modules/matterbridge-home-assistant
npm run matterbridge -- -bridge
