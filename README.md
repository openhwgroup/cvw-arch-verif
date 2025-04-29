# cvw-arch-verif
The purpose of the repo is to support CORE-V Wally architectural verification.

This document contains guidelines for setup and running of RISC-V Architecture Functional Verification project. It contains commands and formats needed to generate and execute tests, write test plans and collect and analyze coverage. The following sections have been covered:

* Summary of coverage
* Git overview
* Server guide and Tool access
* Writing Test plan
* Adding and using Test generation scripts
* Running Tests on CVW Core
* Creating RVVI Functional Coverage files
* Teams

# Summary of coverage

This repo contains testplans, covergroups, and directed tests for the RVA22S64 profile, and corresponding RV32 extensions. These include

| Extension | RV32 | RV64 | Notes |
| --- | --- | --- | --- |
| **Unprivileged** |
| I | x|x | Integer base |
| M | x|x | Mul/div |
| F |x |x | Floating-point |
| D |x |x | Double-precision floating-point |
| Zfh |x |x | Half-precision floating-point |
| Zfhmin |x |x | Half-precision transfers/converts |
| Zfa |x |x | Additonal floating-point: F, D, Zfh |
| Zaamo |x |x | A extension: atomic memory operations |
| Zalrsc |x |x | A extension: load reserved/store conditional |
| Zba |x |x | B extension: address generation |
| Zbb |x |x | B extension: basic bit manipulation |
| Zbs |x |x | B extension: single-bit operations |
| Zbc |x |x | Carry-free multiplication |
| Zca |x |x | Compressed instructions |
| Zcb |x |x | Additional compressed instructions |
| Zcf |x | | RV32 compressed single-precision fp |
| Zcd |x |x | Compressed double-precision fp |
| Zbkb |x |x | Basic bit manipulation for crypto |
| Zbkc |x |x | Carry free multiplication for crypto |
| Zbkx |x |x | Crossbar permutations for crypto |
| Zknd |x |x | AES decryption |
| Zkne |x |x | AES encryption |
| Zknh |x |x | SHA2 hash |
| Zicond |x |x | Conditional zero |
| Zicbom |x |x | Cache block management, architecturally invisible |
| Zicboz |x |x | Cach block zero |
| Zicsr |x |x | CSR read/write/set/clear instructions |
| Zifencei |x |x | Instruction/data synchronization |
| **Privileged** |
| Zicsr |x |x | Excercise CSRs in each mode: M, S, U, F |
| Exceptions |x |x | Exceptions: M, S, U, F, Zc, ZicboU, ZicboS, Zalrsc, Zaamo |
| Interrupts |x |x | Interrupts: M, S, U, Sstc |
| VM | SV32 | SV39/48 | Virtual Memory: Svbare, Sv32/39/48, Svade, Svadu, Sstvecd, Svinval, Svnapot |
| PMP |x |x | Physical memory protection
| Endian |x |x | Big vs. little endian: M, S, U |
| Zicntr|x |x | Counters and performance monitors |
| **Miscellaneous** |
| Fences |x |x | Tested in Zicsr |
| Zihintpause |x |x | Tested in Zicsr |
| Zicclsm |x |x | Misaligned access support is implicitly tested through accesses |
| S{m/s}1p12 |x |x | Implicit in Zicsr |
| Sstvala |x |x | stval implicity tested through exceptions |
| Sscounterenw |x |x | Writable scounteren tested through Zicntr |
| Ssu64xl | |x| RV64 sstatus.UXL tested through Zicsr |
| **Untested** |
| PMA | | | Implementation dependent, not architectural |
| Ziccif | | | Main memory cachability and coherence part of PMA |
| Ziccrse | | | RsrvEventual part of PMA |
| Ziccamoa | | | AMOArithmetic part of PMA |
| Svbpmt | | only | Uncachable regions not testable architecturally |
| Za64rs | | | Reservation set size not tested |
| Zi64b | | | Cache block size not tested architecturally |
| Zicbop | | | Cache block prefetch architecturally invisible |
| Zkt | | | Data-independent execution time architecturally invisible |
| Zkr | | | Entropy source hard to test architecturally |
| Ssccptr | | | Hardware page table reads part of PMA |

Notes:
* As of 12/7/24, atomic, CBO, Zifencei, crypto, Sscofpmf not implemented and privileged tests are in progress
* V, hypervisor (Sha), debug, Zce, Zks are not supported
* A testplan such as ZcbM requires both Zcb and M extensions for c.mul
* Exceptions also tests that illegal instruction behavior matches reference model for
all categories of illegal instructions.
* PMA is implementation-defined and cannot be tested explicitly.  The user must
define the `ACCESS_FAULT_ADDRESS to be an illegal physical address (typically 0
unless memory is implemented at that address); the Exceptions tests do limited PMA
testing by ensuring this address thorows an AccessFault.  


Notes:
Unprivileged extensions are being refactored to share code

Use make --jobs to create the SystemVerilog covergroups and assembly language tests.  

# **Git overview**


**Setup and contribute:**

* Fork the [cvw-arch-verif](https://github.com/openhwgroup/cvw-arch-verif) repo
* Clone the repository using:

git clone https://github.com/\[your\_github\_username\]/cvw-arch-verif
cd cvw-arch-verif

* Create a separate branch for you work:

git checkout \-b \<branch\_name\>

* After contributing your work commit it:

git add \<file\>
git commit \-m “Your Commit message”

* Push your changes:

git push origin \<branch\_name\>

* Submit a Pull request

# **Server guide and Tool access**

needs updating

# **Writing Test plan:**

Test planning involves designing a comprehensive strategy to test the functionality of an integrated circuit before it goes into mass production. The goal is to ensure that the IC meets all specifications and operates correctly in its intended application. Creating a test plan involves several key components to ensure that all aspects of the testing process are clearly defined and effectively managed. Below are the basic guide explaining the basic parts of a test plan:

**Basic Parts of a Test Plan**

**1\. Sr No.:** Provides a link to the coverage file (for easy debugging).

**2\. Features:** List the main features that will be tested.

**3\. Sub-Features:** Break down the main features into smaller, more detailed sub-features.

**4\. Feature Description:** Provide a brief description of feature/sub feature and how each test will be conducted.

**5\. Verification Goal:** State the goal of each test to confirm that the feature/sub feature works as expected.

**6\. Pass/Fail Criteria(checker):** Define which checker has been used for test, self checking, checking against RM etc.

**7\. Coverage Method:** Describe the method used to ensure that all aspects of the feature are tested i.e Functional Coverage, code coverage, test cases etc

**8\. Cover status:** Indicate the cover points is written for the feature or not

**9\. Feature covered:** Indicate the cover points is being covered or not by the existing tests

**10\. Comments:** Provide any additional notes or comments related to the testing process.

**Example:**

![Example](Example.png)

# **Adding and using test generation scripts**

needs updating

# **Running Tests on the CVW Core**

**Step 1: Setting up CVW**

* Use the guidelines in the README file on the CVW repo to clone and test it
* Install the prerequisites using

sudo $WALLY/bin/wally-tool-chain-install.sh

* Change the branch of **addins/cvw-arch-verif** by:

git config \-f .gitmodules submodule.addins/cvw-arch-verif.branch \<branch\_name\>
git submodule update \--remote addins/cvw-arch-verif

**Step 2: Running tests on the Core**

* Add the name and path of the test to tests.vh in the respective test\_suite
* Running test:

wsim rv64gc \<test\_suite\> \<additional flags\>

* Running tests in regression

regression-wally

# **Creating and running RVVI Functional Coverage files**

**Step 1: Creating a coverage file**

* Create a file in the fcov folder with name: test\_\<feature\_name\>\_coverage.sv
* Include the file in the **rvvicov.svh** file under
* Instantiate your coverage module in the wrapper.svh file
* Instantiate both rvvi & wallyTracer in the coverage file
* Instantiate all covergroups and sample them
* Foreach coverpoint if possible sample data from the rvvi interface, otherwise sample data from dut

**Step 2: Running Functional Coverage**

* To run functional coverage per test\_suite

wsim rv64gc \<test\_suite\> \--fcov

* To run functional coverage in regression

regression-wally \--fcov

* To merge all fcov files and create a merge html report, in the fcov folder run:

make

Analyze the coverage report by checking out the covergroups in covSummary.html file (in the work dir) to make sure that 100% Functional Coverage has been achieved. In case there are misses, it is indicative of missing tests or possible faults in the design. Carefully examine the coverage report to find the exact hole.

# **Teams**

**Harvey Mudd College:**

* Vikram Krishna
* David Harris
* Corey Hickson
* Ahlyssa Santillana
* Hamza Jamal

**Habib University:**

* Muhammad Shaheer
* Shahjahan
* Ehzem Farhan Sheikh
* Daniyal Areshia
* Sher Ali
* Ahmed Abdullah Mujtaba

**UET:**

* Muhammad Zain
* Muhammad Ahmad
* Muhammad Abdullah
* Hamza Ali
