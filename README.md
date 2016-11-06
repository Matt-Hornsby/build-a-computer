# build-a-computer
I'm building a complete computing platform from foundational computer-science principles. I am following the excellent book ["The Elements of Computing Systems"](https://www.amazon.com/Elements-Computing-Systems-Building-Principles/dp/0262640686)

Computing and computer science is built from layers upon layers of elegant abstractions. I'll be starting a couple levels of abstraction above raw physics (no building of physical circuits from transistors... yet). The plan:

#### Elementary logic gates

Here I will create all of the fundamental logic gates (And, Or, Not, Xor, etc). I'll start with a single elementary Nand gate, from which all other gates can be built. These gates can of course be physically built from transistors, but for the first pass through this process I will be simulating the construction of these gates using the awesome [Logic.ly gate design tool](https://logic.ly/), and the HDL simulator provided with the book.

#### Arithmetic Logic Unit (ALU)

Now that the logic gates are all built, I'll use them to create a very basic 16-bit Arithmetic Logic Unit. Along the way, I'll start by implementing a half-adder, then a full-adder from that, then an n-bit adder from an array of full-adder chips. Once I have those, I'll build a incrementer chip and finally the complete 16-but ALU. Probably won't do anything fancy here like floating-point arithmetic.

#### Memory

The elementary logic gates and the resulting combinational chips that form the ALU work by application of electrical signals to their inputs. For the next step of computation, we need to be able to store values for use in sequential logic. Time to build some memory chips! I'll build some Flip-Flop circuits, use them to create a 1-bit register, and then chain a bunch of these together to make an arbitrarily large register chip. I'll do an 8-register memory, then combine those together to make 8/16/32/64-register "RAM" chips. I'll need a Counter at some point around here, too.

#### Machine Language

Time for hardware and software to meet! At this point, I'll make the next big leap in abstraction and do some low-level programming with the Hack machine language, a provided assembler to convert it to binary, and a CPU emulator that will execute it.

#### Computer Architecture

My favorite part of computer science. Let's build a CPU! Now that I have all of the elements of hardware built (ALU, Memory, multiplexers, etc) - it's time to put it all together and build a general-purpose "computer" chip.

#### Build-your-own-assembler

Earlier, I used a provided assembler. Now I'll write my own and use the other one to test it. Again, the assembler will take an asserbly-like machine language and convert it to binary code to run on the CPU emulator.

#### Virtual Machines? Oh my

The ultimate goal is to write code in a high-level language and have it run on this computer I'm building. Something like Java or C# that compiles down to an intermediate language which can be run on a virtual machine. I'll build that Virtual Machine, the VM language, and a translator that will convert the VM language to our platform-specific machine language. Basically, the beginnings of a compiler.

#### High-level language

I'll be building a high-level language and a compiler that will translate it to the intermediate VM code.

#### Operating System

Finally, I need an Operating System to provide system functionality like some basic math libraries, plus keyboard/screen I/O. The journey is complete!
