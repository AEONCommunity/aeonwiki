# Currency

## Disinflationary Supply

### Current inflation schedule

For every block added to the transaction history, new AEON coins are created and rewarded to the person who solved the [Proof-of-Work problem](/mining/). Currently, AEON coins are emitted at an [exponentially decreasing rate](https://data.aeon.wiki/charts/block_reward/). The [formula to calculate the block reward](https://github.com/aeonix/aeon/blob/master/src/cryptonote_basic/cryptonote_basic_impl.cpp#L90)
 in atomic units is set to be 
 
 ```
 ((2^64-1 - already_generated_coins) >> 18)
 ```
 
 where the `>>` is the bitwise shift operator. For example, the [current supply of coins](https://data.aeon.wiki/charts/supply_total/) as of writing is about 17,756,830. This is `17756830*(10^12)` atomic units.

We calculate the next block reward as follows:

```
689914073709551615 = 2^64-1 - 17756830*(10^12)
2631813330496 = 689914073709551615 >> 18
2.631813330496 = 2631813330496 / 10^12
```
Thus, the next block reward is `2.631813330496` coins.
This formula decreases until it reaches the tail-emission era of 1.2 coins per block.

### Tail emission era

In order to protect the future of the AEON network and ensure a guaranteed incentive for miners, there is a constant tail-emission. Once the block reward reaches a certain lower bound (1.2 coins) it becomes constant and does not decrease further. This is expected to begin on block `1511770` on `2022-08-18`.

### Calculate future supply

To find the current supply, run the command [`print_coinbase_tx_sum`](https://docs.aeon.wiki/documentation/aeond/commands/#print_coinbase_tx_sum) on your daemon with `0 current_block_height` as the params.

```
>>> print_coinbase_tx_sum 0 1306068
Sum of coinbase transactions between block heights [0, 1306068) is 17766938.328549012452 consisting of 17757285.262841483066 in emissions, and 9653.065707529386 in fees
```
You can then use this python script to find future supply:

```python
import time

supply = 17757285262841483066
block_height = 1306067
block_time = 240
time = time.time()

def next_reward(supply):
    reward = ((2**64 -1 - supply) >> 18)
    if reward < 1200000000000:
        reward = 1200000000000
    return reward
    
while(True):
    block_height += 1
    supply += next_reward(supply)
    time+=240
```

### Emission calendar

You can see the AEON coin supply for the future below.

| Block Height | Est. Date | Supply | Block reward | Coins per year | % of supply |
| ------- | ---------- | -------- | --- | --- | --- |
| 0 | 2014-06-06 | 0 | 17.592169 | --- | --- |
| 287979 | 2015-01-01 | 4,421,648 | 13.375369 | --- | --- |
| 645910 | 2016-01-01 | 9,900,754 | 32.600420 (?) | 5,479,106 | 55.34 |
| 776912 | 2017-01-01 | 13,261,722 | 19.779297 | 3,360,968 | 25.34 |
| 908052 | 2018-01-01 | 15,301,235 | 11.7800 | 2,039,513 | 13.32 |
| 1039631 | 2019-01-01 | 16,541,691 | 7.2671 | 1,240,456 | 7.50 |
| 1168990 | 2020-01-01 | 17,283,676 | 4.4366 | 741,985 | 4.30 |
| 1297785 | 2021-01-01 | 17,735,138 | 2.7145 | 451,462 | 2.55 |
| 1428984 | 2022-01-01 | 18,015,353 | 1.6456 | 258,067 | 1.43 |
| 1511770 | 2022-08-19 | 18,132,172 | 1.2 | --- | --- |
| 1560384 | 2023-01-01 | 18,190,509 | 1.2 | 175,156 | 0.96 |
| 1691784 | 2024-01-01 | 18,348,189 | 1.2 | 157,680 | 0.86 |
| 1823544 | 2025-01-01 | 18,506,301 | 1.2 | 158,112 | 0.85 |
| 2480904 | 2030-01-01 | 19,295,133 | 1.2 | 157,680 | 0.82 |
| 3138264 | 2035-01-01 | 20,083,965 | 1.2 | 157,680 | 0.79 |
| 3795624 | 2040-01-01 | 20,872,797 | 1.2 | 157,680 | 0.76 |
| 4453344 | 2045-01-01 | 21,662,061 | 1.2 | 158,112 | 0.73 |
| 5110704 | 2050-01-01 | 22,450,893 | 1.2 | 157,680 | 0.7 |

? - Block time was doubled and therefore block reward was also doubled but the overall emission schedule was unchanged. 

According to the python script above, the tail-emission era begins at block `1511770`. Once the tail emission begins, about `157,680~158,112` AEON coins are created each year depending on leap year and such variations.

## Sound money

The coins secured and transacted on the AEON network possess a number of good properties which satisfy all of the criteria put forth to define an ideal form of currency.

There have been many forms of money in history, but some forms have worked better than others because they have properties that make them more efficient in exchanging goods. The ideal properties of money are durability, portability, divisibility, uniformity, limited supply, and acceptability [1]. Let's compare two examples of possible forms of money:

* A cow. Cattle have been used as money at different points in history.

* AEON coins equal to the value of one cow.

Let's run down our list of characteristics to see how they stack up.

* **Durability**: A cow is fairly durable, but a long trip to the market runs the risk of sickness or death for the cow and can severely reduce its value. AEON coins cannot deteriorate or become broken in any way. It exists digitally within a decentralized peer-to-peer network which has no central point of failure.

* **Portability**: While the cow is difficult to transport to the store, AEON coins can be easily be transferred wherever an internet connection is available either on mobile wallets or using a computer.

* **Divisibility**: AEON coins are practically infinitely divisible, up to 12 decimal places. A cow, on the other hand, is not very divisible.

* **Uniformity**: Cows come in many sizes and shapes and each has a different value; cows are not a very uniform form of money. Because accounts and transactions are encrypted, every unit of AEON is essentially freshly minted currency and thus treated equally.

* **Limited supply**: In order to maintain its value, money must have a limited supply. While the supply of cows is fairly limited, if they were used as money, you can bet ranchers would do their best to increase the supply of cows, which would decrease their value. The supply of AEON coins is established by code agreed upon by the network participants so that the number of coins created is known, controlled, and scheduled.

* **Acceptability**: Even though cows have intrinsic value, some people may not accept cattle as money. In contrast, as AEON adoption grows, people will be more than willing to accept your AEON coins. AEON coins can also be exchanged on numerous currency exchanges for any major currency in the world.

Well, it seems "udderly" clear at this point that AEON coins are a much better form of money than cattle.

[1] Functions of Money, The Federal Reserve Bank; [The Economic Lowdon Podcast](https://www.stlouisfed.org/education/economic-lowdown-podcast-series/episode-9-functions-of-money) (2020)



