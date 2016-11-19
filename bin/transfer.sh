if [ -z "$1" ]
then
  echo "useage: trasfer.sh <version: eg: v26>"
  exit 1
fi

version=$1
mv muon-dev-vm.box muon-dev-vm-${version}.box
file=muon-platform-demo-${version}.box
bucket=microux
resource="/${bucket}/${file}"
contentType="application/x-compressed-tar"
acl="x-amz-acl:public-read"


if [ -z `uname | grep -i darwin` ]
then
  #linux
  dateValue=`date -R` # Linux date
else
  # osx;
  dateValue=$(date -u "+%a, %d %b %Y %H:%M:%S +0000") # osx date
fi

stringToSign="PUT\n\n${contentType}\n${dateValue}\n$acl\n${resource}"

s3Key=AKIAISJ3LLCVCZCVIKDA
s3Secret=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
signature=`echo -en ${stringToSign} | openssl sha1 -hmac ${s3Secret} -binary | base64 `

# show curl output for santiy's sake
echo curl -X PUT -T "${file}" \
  -H "Host: ${bucket}.s3.amazonaws.com" \
  -H "Date: ${dateValue}" \
  -H "Content-Type: ${contentType}" \
  -H "$acl" \
  -H "Authorization: AWS ${s3Key}:${signature}" \
  https://${bucket}.s3.amazonaws.com/${file}

curl -X PUT -T "${file}" \
  -H "Host: ${bucket}.s3.amazonaws.com" \
  -H "Date: ${dateValue}" \
  -H "Content-Type: ${contentType}" \
  -H "$acl" \
  -H "Authorization: AWS ${s3Key}:${signature}" \
  https://${bucket}.s3.amazonaws.com/${file}


echo "*********************************************************"
echo DONE! file uploaded to https://${bucket}.s3.amazonaws.com/${file}
echo "*********************************************************"
