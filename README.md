# cvw-arch-verif
The purpose of the repo is to support CORE-V Wally architectural verification.

This document contains guidelines for setup and running of RISC-V Architecture Functional Verification project. It contains commands and formats needed to generate and execute tests, write test plans and collect and analyze coverage. The following sections have been covered:

* Git overview
* Server guide and Tool access
* Writing Test plan
* Adding and using Test generation scripts
* Running Tests on CVW Core
* Creating RVVI Functional Coverage files
* Teams

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

wsim rv64gc \<test\_suite\> \--fcovrvvi

* To run functional coverage in regression

Regression-wally \--fcovrvvi

* To merge all fcov files and create a merge html report, in the fcov folder run:

make

Analyze the coverage report by checking out the covergroups in covSummary.html file (in the work dir) to make sure that 100% Functional Coverage has been achieved. In case there are misses, it is indicative of missing tests or possible faults in the design. Carefully examine the coverage report to find the exact hole.

# **Teams**

**Harvey Mudd College:**

* Vikram Krishna
* David Harris
* Ahlyssa Santillana

**Habib University:**

* Muhammad Shaheer
* Shahjahan

**UET:**

* Muhammad Zain
* Muhammad Ahmad
* Muhammad Abdullah
* Hamza Ali 


