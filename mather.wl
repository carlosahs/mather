CompleteTheSquare[poly_,x_] := Module[
  {cba = CoefficientList[poly, x]},
  c = cba[[1]];
  b = cba[[2]];
  a = cba[[3]];
  a(x+b/(2a))^2+(c-b^2/(4a))
  ]
problems = Import[$ScriptCommandLine[[2]], "Dataset", "HeaderLines"->1]
problemsComputed = problems[All, {2->ToExpression,3->ToExpression}]
problemsCorrect = problemsComputed[
  All, 
  <|#,"Correct"->#Problem === #Solution|> &
  ]
Export["output.csv",problemsCorrect]
