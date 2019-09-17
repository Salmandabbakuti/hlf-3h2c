echo 'generating Certificates..'
rm -rf crypto-config
rm -rf channel-artifacts
mkdir channel-artifacts
export PATH=$PWD/bin:$PATH
export FABRIC_CFG_PATH=$PWD
cryptogen generate --config=./crypto-config.yaml
echo 'Generating genesis block and channel configurations..'
configtxgen -profile ThreeOrgsOrdererGenesis -outputBlock ./channel-artifacts/genesis.block

configtxgen -profile ChannelAll -outputCreateChannelTx ./channel-artifacts/channelall.tx -channelID channelall
configtxgen -profile Channel12 -outputCreateChannelTx ./channel-artifacts/channel12.tx -channelID channel12

exit 1
