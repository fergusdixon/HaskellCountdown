# HaskellCountdown

An implementation of a cut-down [Countdown Problem](https://wiki.haskell.org/Haskell_Quiz/Countdown)

It only uses add and multiply.

The spec was given as an assignment in the UCT functional programming module.

Mark: 100%

#### Just some notes on the modules:

Each question is exported as QuestionX. 
Later questions import from earlier ones

In Question1 I have also included a `show` function to allow easy reading of Question6's output.
You can check the output within GHCi by loading Question6 and calling `solve xs x`
