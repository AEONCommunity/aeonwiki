## KangarooTwelve Proof-of-Work

AEON follows the same Proof-Of-Work security that is used in Bitcoin. Bitcoin uses the SHA-256 algorithm whereas AEON uses [KangarooTwelve](https://keccak.team/kangarootwelve.html), a hashing algorithm developed by the Keccak team (creators of [SHA-3](https://en.wikipedia.org/wiki/SHA-3)). KangarooTwelve is designed to rely on the same security as SHA-3 but is optimized for low-power ARM processors found in phones and tablets. By choosing the hashing algorithm KangarooTwelve, we can sleep well at night knowing that AEON will remain secure for many generations to come. 

Read the [KangarooTwelve academic overview](https://keccak.team/files/KangarooTwelve.pdf) published by the Keccak team.

## Understanding the Proof-of-work mining process

Mining is the process of spending computing power to process transactions, secure the network, and keep everyone in the system synchronized together. It can be perceived like an AEON data center except that it has been designed to be fully decentralized with miners operating in all countries and no individual having control over the network. This process is referred to as "mining" as an analogy to gold mining because it is also a temporary mechanism used to issue new AEON coins. Unlike gold mining, however, AEON mining provides a reward in exchange for useful services required to operate a secure payment network. 

Anybody can become a AEON miner by running software with specialized hardware. Mining software listens for transactions broadcast through the peer-to-peer network and performs appropriate tasks to process and confirm these transactions. AEON miners perform this work because they can earn transaction fees paid by users for faster transaction processing, and newly created AEON coins issued into existence according to a fixed formula.

### The "proof" in Proof-of-Work

For new transactions to be confirmed, they need to be included in a block along with a mathematical proof of work. Such proofs are very hard to generate because there is no way to create them other than by trying billions of calculations per second. This requires miners to perform these calculations before their blocks are accepted by the network and before they are rewarded. As more people start to mine, the difficulty of finding valid blocks is automatically increased by the network to ensure that the average time to find a block remains equal to 4 minutes. As a result, mining is a very competitive business where no individual miner can control what is included in the block chain.

### Why it is secure

The proof of work is also designed to depend on the previous block to force a chronological order in the block chain. This makes it exponentially difficult to reverse previous transactions because this requires the recalculation of the proofs of work of all the subsequent blocks. When two blocks are found at the same time, miners work on the first block they receive and switch to the longest chain of blocks as soon as the next block is found. This allows mining to secure and maintain a global consensus based on processing power.

AEON miners are neither able to cheat by increasing their own reward nor process fraudulent transactions that could corrupt the AEON network because all AEON nodes would reject any block that contains invalid data as per the rules of the AEON protocol. Consequently, the network remains secure even if not all AEON miners can be trusted.

Mining creates the equivalent of a competitive lottery that makes it very difficult for anyone to consecutively add new blocks of transactions into the block chain. This protects the neutrality of the network by preventing any individual from gaining the power to block certain transactions. This also prevents any individual from replacing parts of the block chain to roll back their own spends, which could be used to defraud other users. Mining makes it exponentially more difficult to reverse a past transaction by requiring the rewriting of all blocks following this transaction.

### More efficient over time

Spending energy to secure and operate a payment system is hardly a waste. Like any other payment service, the use of AEON entails processing costs. Services necessary for the operation of currently widespread monetary systems, such as banks, credit cards, and armored vehicles, also use a lot of energy. Although unlike AEON, their total energy consumption is not transparent and cannot be as easily measured.

AEON mining has been designed to become more optimized over time with specialized hardware consuming less energy, and the operating costs of mining should continue to be proportional to demand. When AEON mining becomes too competitive and less profitable, some miners choose to stop their activities. Furthermore, all energy expended mining is eventually transformed into heat, and the most profitable miners will be those who have put this heat to good use. An optimally efficient mining network is one that isn't actually consuming any extra energy. While this is an ideal, the economics of mining are such that miners individually strive toward it.

## Start mining

In the early days of AEON, anyone could find a new block using their computer's CPU. As more and more people started mining, the difficulty of finding new blocks increased greatly to the point where the only cost-effective method of mining today is using specialized hardware. Nonetheless, experimenting with mining is as easy as entering the `start_mining` and `stop_mining` commands in your daemon CLI console. Find more information on the [documentation pages](https://docs.aeon.wiki/documentation/aeond/options/#start-mining).