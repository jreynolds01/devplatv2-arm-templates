RG=FILLME
WS=FILLME

az ml environment create -f ./aml-test-env-deployment.yml -g ${RG} -w ${WS}
# az deployment group create \
#   --resource-group "${RG}" \
#   --template-file $templateFile \
#   --parameters \
#   dockerSpecificationType=Build \
#   workspaceName="${WS}" \
#   environmentAssetVersion="${envversion}" \
#   environmentAssetName=testARMenv \
#   dockerfile="${dockerfilestr}" \
#   condaFile="${condafilestr}"
