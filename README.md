# hlf-3h2c
3 host and 2 channel fabric network

```
Channel Creation peer0 org1
docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel create -o orderer.example.com:7050 -c channelall -f /var/hyperledger/configs/channelall.tx

Joining channel peer0 org1

docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel join -b channelall.block

Joining other two peers

docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org2.example.com/msp" peer0.org2.example.com peer channel join -b channelall.block

docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org3.example.com/msp" peer0.org3.example.com peer channel join -b channelall.block

Copying channel block to container

# copy mychannel.block from peer0 to org1 host
docker cp peer0.org1.example.com:/mychannel.block .

# copy mychannel.block to org2 and org3
docker cp mychannel.block peer0.org2.example.com:/mychannel.block
docker cp mychannel.block peer0.org3.example.com:/mychannel.block





```
