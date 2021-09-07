templateFile=azureml_deploy_environment_version.json
dockerfilestr=$(cat Dockerfile)
condafilestr=$(cat test-environment.yml)
RG=FILLME
WS=FILLME
envversion=1
# echo ${dockerfilestr}

echo $condafilestr

az deployment group create \
  --resource-group "${RG}" \
  --template-file $templateFile \
  --parameters \
  dockerSpecificationType=Build \
  workspaceName="${WS}" \
  environmentAssetVersion="${envversion}" \
  environmentAssetName=testARMenv \
  dockerfile="${dockerfilestr}" \
  condaFile="${condafilestr}"

exit
