forge script script/Load.s.sol:LoadScript --rpc-url $RPC_URL --private-key $DEPLOYER_PRIVATE_KEY --broadcast --verify --verifier blockscout --verifier-url $VERIFIER_URL


forge verify-contract <address> <Contract> --watch --etherscan-api-key "verifyContract" --verifier-url 'https://blockscout.com/poa/sokol/api' 