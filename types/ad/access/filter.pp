# @since 2.0.0
#lint:ignore:140chars
type SSSD::AD::Access::Filter = Pattern[/(?x) ^ (?: (?: (?: DOM | FOREST ) : )? [^:]+ : )? (?<re> \( (?: [&|] \g<re>+ | ! \g<re> | (?: (?<attr> (?: [[:alpha:]] [[:alnum:]_-]* | [[:digit:]]+ (?: \. [[:digit:]]+ )* ) (?: ; [[:alpha:]] [[:alnum:]-]* )* ) [~<>]? = (?<value> (?: [^\\()*] | \\ [[:xdigit:]]{2} )* ) | \g<attr> = \* | \g<attr> = \g<value>? \* (?: \g<value> \* )* \g<value>? | (?: \g<attr> (?: :dn )? (?: : (?<rule> [[:digit:]]+ (?: \. [[:digit:]]+ )* | [[:alpha:]] [[:alnum:]]* Match ) )? := \g<value> | (?: : (?: dn | DN ) )? : \g<rule> := \g<value> ) ) ) \) ) $/]
# lint:endignore
