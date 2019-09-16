# hlf-3h2c
3 host and 2 channel fabric network

```
Channel Creation peer0 org1
docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel create -o orderer.example.com:7050 -c channelall -f /var/hyperledger/configs/channelall.tx

Joining channel peer0 org1

docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel join -b channelall.block

docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org2.example.com/msp" peer0.org2.example.com peer channel join -b channelall.block

docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org3.example.com/msp" peer0.org3.example.com peer channel join -b channelall.block

```
