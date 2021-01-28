# Wallets

If you have ever used AEON before, then you have definitely made a wallet. When you create a new wallet, you start with one account. Every account has a primary address which starts with a `W` such as 

```
WmsjdgHjwpqRYnjj8BM8wpZqaz2KigHjC1y5uuur6BFC64V3ZRU5Xkg4PVgP7maVan7GQkRaFtHvqeNrhsLA93YG1i4Lp25XR
```

This is like your email address or phone number. When someone wants to send you AEON, you need to share with them an address.

## Accounts and addresses

Each AEON wallet can have many accounts. Within each account there can also be many minor addresses which can be shared to others. These minor addresses begin with an `X`. It is not advised to re-use the same address many times as it may become possible to associate your identity with a given address. So it is suggested to use a new minor address with every new contact. Every standard AEON address is 97 characters long and composed of a [base58](https://github.com/aeonix/aeon/blob/master/src/common/base58.cpp) set of characters.

## Public-Private Keypairs

If you are not familiar with encryption, public-key cryptography means there are two keys: a public key to be shared with everyone, and a private key to be kept secret. These keys are used together to encrypt and sign messages. Typically, the public key is used to verify signatures of the owner and to create encrypted messages for the owner. The private key is used to create signatures and to decrypt messages from the public.

### Spending Keypair

#### Spending Public Key 

Used together with viewing public key to generate new one-time addresses to be used on blockchain for every transaction. Also used by the network to verify the signature of the outputs and accept transactions as valid.

#### Spending Private Key 

The spending private key is used to sign outputs when the owner wants to spend funds. With the spending private key can you have complete control of the wallet, so it is important to keep this to yourself. 

### Viewing Keypair

#### Viewing Public Key 

Used with spending public key to generate new one-time addresses to be used on blockchain for every transaction.

#### Viewing Private Key 

Used to scan the blockchain and find the funds sent to their address. At the protocol level, the sender performs an encryption with the recipient's viewing public key, and the recipient attempts to decrypt all the outputs on the blockchain to find the one belonging to him (where decryption was successful). 

For audit purposes, it could be shared with an auditor, along with the signed outputs to prove the balance of a wallet. Sharing only the viewing private key would enable the auditor only to see received transactions, but they wouldn't be able to tell which funds were spent.

## Mnemonic Seed

The mnemonic seed always you to restore your wallet. It is a list of 25 words.

```
vinegar talent sorry hybrid ultimate template nimbly jukebox axes inactive veered toenail pride plotting chrome victim agnostic science bailed paddles wounded peaches king laptop king
```

It is simply a more user-friendly representation of the spending private key. The spending private key is a hexadecimal representation of the mnemonic seed. 


## Multisignature

To do. In the meantime, please use this nicely written guide https://monero.stackexchange.com/questions/5646/how-to-use-monero-multisignature-wallets-2-2-2-3.