tsuru app-create digitalmarketplace-search-api python
tsuru service-add elasticsearch marketplacees
tsuru service-bind marketplacees
tsuru env-set DM_SEARCH_API_AUTH_TOKENS=oursearchtoken
tsuru app-deploy *

# Add cname (this is because SSL certificate is only for *.tsuru.paas.alphagov.co.uk)
# Add this to Route53 if you haven't done so already
tsuru cname-add digitalmarketplace-search-api-ci.tsuru.paas.alphagov.co.uk
