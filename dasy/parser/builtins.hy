(import vyper.ast.nodes *
        .utils [build-node])

(require
  hyrule.control [case])

(defn parse-builtin [node]
  (case (str node)
        "+" (build-node Add)
        "-" (build-node Sub)
        "*" (build-node Mult)
        "**" (build-node Pow)
        "%" (build-node Mod)
        "^" (build-node BitXor)
        "|" (build-node BitOr)
        "&" (build-node BitAnd)
        "~" (build-node Invert)
        "/" (build-node Div)
        "<" (build-node Lt :-pretty "<" :-description "less than")
        ">" (build-node Gt :-pretty ">" :-description "greater than")
        "<=" (build-node LtE :-pretty "<=" :-description "less than equal")
        ">=" (build-node GtE :-pretty ">=" :-description "greater than equal")
        "==" (build-node Eq :-pretty "==" :-description "equal")
        "!=" (build-node NotEq :-pretty "!=" :-description "not equal")
        "in" (build-node In :-pretty "in" :-description "membership")
        "notin" (build-node NotIn :-pretty "not in" :-description "exclusion")
        "not" (build-node Not :-pretty "not" :-description "negation")
        "and" (build-node And :-pretty "and" :-description "boolean and")
        "or" (build-node Or :-pretty "or" :-description "boolean or")))
