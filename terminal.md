$ ls
README.md               contracts               package.json            truffle-config.js
assets                  migrations              test

$ npm install

$ npm ls
simple-bank-exercise-tannertanner1@ /Users/tanner/simple-bank-exercise-tannertanner1
└── @openzeppelin/test-helpers@0.5.15

$ truffle test

Compiling your contracts...
===========================
> Compiling ./contracts/Migrations.sol
> Compiling ./contracts/SimpleBank.sol
> Artifacts written to /var/folders/8j/tbzllf457s35l8lvcx6cq6mw0000gn/T/test--33602-0oZlQWVbs01j
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


  Contract: SimpleBank
    1) is owned by owner
    > No events were emitted
    2) should mark addresses as enrolled
    > No events were emitted
    3) should not mark unenrolled users as enrolled
    > No events were emitted
    4) should deposit correct amount
    > No events were emitted
    5) should log a deposit event when a deposit is made
    > No events were emitted
    6) should withdraw correct amount
    > No events were emitted
    7) should not be able to withdraw more than has been deposited
    > No events were emitted
    8) should emit the appropriate event when a withdrawal is made
    > No events were emitted


  0 passing (1s)
  8 failing

  1) Contract: SimpleBank
       is owned by owner:
     TypeError: Cannot read properties of undefined (reading 'call')
      at Context.<anonymous> (test/simpleBank.test.js:38:28)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  2) Contract: SimpleBank
       should mark addresses as enrolled:
     TypeError: instance.enrolled is not a function
      at Context.<anonymous> (test/simpleBank.test.js:47:42)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  3) Contract: SimpleBank
       should not mark unenrolled users as enrolled:
     TypeError: instance.enrolled is not a function
      at Context.<anonymous> (test/simpleBank.test.js:56:42)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  4) Contract: SimpleBank
       should deposit correct amount:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:66:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  5) Contract: SimpleBank
       should log a deposit event when a deposit is made:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:78:35)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  6) Contract: SimpleBank
       should withdraw correct amount:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:101:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  7) Contract: SimpleBank
       should not be able to withdraw more than has been deposited:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:114:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  8) Contract: SimpleBank
       should emit the appropriate event when a withdrawal is made:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:121:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

$ truffle test

Compiling your contracts...
===========================
> Compiling ./contracts/Migrations.sol
> Compiling ./contracts/SimpleBank.sol
> Artifacts written to /var/folders/8j/tbzllf457s35l8lvcx6cq6mw0000gn/T/test--39762-zWq184igPT0i
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang


  Contract: SimpleBank
    ✔ is owned by owner
    ✔ should mark addresses as enrolled (41ms)
    ✔ should not mark unenrolled users as enrolled
    1) should deposit correct amount

    Events emitted during test:
    ---------------------------

    SimpleBank.LogEnrolled(
      accountAddress: 0xf17f52151EbEF6C7334FAD080c5704D77216b732 (type: address)
    )


    ---------------------------
    2) should log a deposit event when a deposit is made

    Events emitted during test:
    ---------------------------

    SimpleBank.LogEnrolled(
      accountAddress: 0xf17f52151EbEF6C7334FAD080c5704D77216b732 (type: address)
    )


    ---------------------------
    3) should withdraw correct amount

    Events emitted during test:
    ---------------------------

    SimpleBank.LogEnrolled(
      accountAddress: 0xf17f52151EbEF6C7334FAD080c5704D77216b732 (type: address)
    )


    ---------------------------
    4) should not be able to withdraw more than has been deposited

    Events emitted during test:
    ---------------------------

    SimpleBank.LogEnrolled(
      accountAddress: 0xf17f52151EbEF6C7334FAD080c5704D77216b732 (type: address)
    )


    ---------------------------
    5) should emit the appropriate event when a withdrawal is made

    Events emitted during test:
    ---------------------------

    SimpleBank.LogEnrolled(
      accountAddress: 0xf17f52151EbEF6C7334FAD080c5704D77216b732 (type: address)
    )


    ---------------------------


  3 passing (1s)
  5 failing

  1) Contract: SimpleBank
       should deposit correct amount:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:66:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  2) Contract: SimpleBank
       should log a deposit event when a deposit is made:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:78:35)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  3) Contract: SimpleBank
       should withdraw correct amount:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:101:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  4) Contract: SimpleBank
       should not be able to withdraw more than has been deposited:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:114:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)

  5) Contract: SimpleBank
       should emit the appropriate event when a withdrawal is made:
     Error: VM Exception while processing transaction: revert
      at Context.<anonymous> (test/simpleBank.test.js:121:20)
      at processTicksAndRejections (node:internal/process/task_queues:95:5)