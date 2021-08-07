problems = Import[$ScriptCommandLine[[2]], "Dataset", "HeaderLines"->1]
problemsComputed = problems[All, {2->ToExpression,3->ToExpression}]
problemsCorrect = problemsComputed[All, <|#,"Correct"->#Problem === #Solution|> &]
Export["output.csv",problemsCorrect]
