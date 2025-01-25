This folder is created to add directed tests for every feature
Create a separate folder for every extension 
The lockstep directory is for non-self-checking tests that run in lockstep with the ImperasDV reference model
The signature directory is for tests that generate a signature from Sail.
The selfchecking directory is generated from the signature directory to automatically check against the signatures
Handwritten privileged test source goes in priv, and output goes in priv/rv32 or priv/rv64