# Scalable-Multiplexer
 This project focuses on an Scalable Multiplexer and testing four instances of the scalable multiplexer which are 1, 4, 5, and 6 for different widths.
 
## Description 
The Scalable Multiplexer is designed with the following features:
  - The size of the data ports is determined by a parameter, SIZE. If the multiplexer is not scaled when instantiated, it defaults to one bit wide.
  - My design functions such that input A should be selected when sel = 0 and input B when sel = 1. When sel is unknown, my multiplexers resolves any bits for which A and B are the same. Any bits in conflict will result in x outputs.
  - The design is validated using a testbench that includes four instances of the multiplexer with different widths specified by SIZE. The instances are configured with widths of 1, 4, 5, and 6 bits


## Dependencies
### Software
* https://mobaxterm.mobatek.net/

### Author
* Steven Hernandez
  - www.linkedin.com/in/steven-hernandez-a55a11300
  - https://github.com/stevenhernandezz
