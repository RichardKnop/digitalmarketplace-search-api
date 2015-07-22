tsuru app-create digitalmarketplace-search-api python
tsuru service-add elasticsearch marketplacees
tsuru service-bind marketplacees
tsuru env-set DM_SEARCH_API_AUTH_TOKENS=oursearchtoken
tsuru app-deploy *
