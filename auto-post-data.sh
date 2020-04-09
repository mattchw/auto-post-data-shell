#!/bin/sh
url=https://example-api.com
for i in {1..100}
do
generate_post_data()
{
  cat <<EOF
  #json data example:
  
{
    "data": {
        "firstName": "Tom",
        "lastName": "Cruise",
        "email": "example$i@email.com",
        "mobile": "0123456789",
        "pwd": "Test1234",
        }
    }
}
EOF
}
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "$(generate_post_data)" ${url}
done