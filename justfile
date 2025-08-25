# vi: ft=just:

@default:
  just --list

@setup-sso:
  echo "Setting up SSO for ProdDeploy..."
  echo "----- Use the following values -----"
  echo "SSO session name (Recommended): ArtranSSO"
  echo "AWS SSO start URL [None]: https://d-9367b6a011.awsapps.com/start/#"
  echo "SSO region [None]: eu-west-1"
  echo "SSO registration scopes [None]: sso:account:access"
  echo "-------------------------------------"
  aws configure sso --profile ArtranDeploy

whoami:
  @aws sts get-caller-identity
