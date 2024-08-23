package example

import rego.v1

default allow := false

allow if {
    input.action == "read"
    input.resource == "profile"
}

allow if {
    input.action == "update"
    input.resource == "profile"
    "admin" in input.subject.groups
}