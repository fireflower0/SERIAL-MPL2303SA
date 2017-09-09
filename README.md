# SERIAL-MPL2303SA

I made serial communication using Raspberry Pi and Common Lisp (SBCL).
The serial module used is as follows.
[Ultra compact USB serial module](https://www.marutsu.co.jp/pc/i/137791/)

## Description

The standard input character string is transmitted by serial communication.
Please check the character string received with "Tera Term" etc.

## Circuit diagram

![CircuitDiagram](https://github.com/fireflower0/SERIAL-MPL2303SA/blob/master/img/serial-mpl2303sa-circuit.png)

## DEMO

Raspberry Pi
![Demo1](https://github.com/fireflower0/SERIAL-MPL2303SA/blob/master/img/serial-mpl2303sa.png)

PC
![Demo1](https://github.com/fireflower0/SERIAL-MPL2303SA/blob/master/img/serial-connect-04.png)

## Requirement

- Common LIsp (SBCL)

## Usage

Execute it with the following command.
Note: Quicklisp is required to run.

    $ sbcl --load serial-mpl2303sa.lisp

## Installation

    $ git clone https://github.com/fireflower0/SERIAL-MPL2303SA.git

## Author

[fireflower0](https://twitter.com/fireflower0)

## License

[MIT](https://choosealicense.com/licenses/mit/)
