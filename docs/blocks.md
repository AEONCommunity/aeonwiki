# Blocks

Similar to Bitcoin, the entire AEON transaction history is stored on a long ordered list of "blocks". Also similar to Bitcoin, new blocks are added to the transaction history through a process known as [mining](mining.md). On average, about every **240 seconds** a new block is added to this list containing new transactions and reward for the person who worked to add the new block. AEON blocks have **dynamic size limit** which increases as the demand increases. This is different from a fixed block size limit imposed in the Bitcoin protocol. It is not unlimited though and if you try to add a block which is too large, you will be penalized and have some of your reward subtracted. 

## Dynamic Block Size Limit

Every AEON block contains a list of new transactions to be added to the transaction history. When there are many transactions, the size of the block may be larger than the **median block limit** which is taken over the previous 100 blocks. A person who adds a block that is too large will be penalized according to how much they exceed that limit. No block can be larger than double the median block limit, otherwise it is refused by the rules of the protocol. There is also a minimum median block size limit set to be `20000 bytes = 19.53125 kB`. 

What does this mean for you as a user? Well, because there is no fixed limit, users do not need to compete with each other with higher fees in order to be included in the block. Additionally, the network security remains incentivized through the means of a constant tail-emission. This ensures that miners have a secured reward source and do not depend on fees. 


* [get_block_reward](https://github.com/aeonix/aeon/blob/master/src/cryptonote_basic/cryptonote_basic_impl.cpp#L90)
* [CRYPTONOTE_REWARD_BLOCKS_WINDOW](https://github.com/aeonix/aeon/blob/master/src/cryptonote_config.h)
* [CRYPTONOTE_BLOCK_GRANTED_FULL_REWARD_ZONE_V1](https://github.com/aeonix/aeon/blob/master/src/cryptonote_config.h)


## Dynamic Difficulty Adjustment

Unlike Bitcoin, AEON has a Proof-of-Work difficulty readjustment with each block. To view this calculation, preview [difficulty.cpp](https://github.com/aeonix/aeon/blob/master/src/cryptonote_basic/difficulty.cpp). To find the difficulty of the next block, take the sum of difficulties of the last 720 blocks with an 8 block lag. Then find the difference in timestamps of the first and last of these blocks. The next block's difficulty is calculated as `(difficulty_sum*240 + time_difference - 1)/time_difference`. A block cannot be broadcast with a timestamp greater than 2 hours ahead of the most recent block and no less than the median of the previous 60 blocks' timestamps. View the latest difficulty of the AEON network [here](https://data.aeon.wiki/charts/block_difficulty/).