# MarkLogic Case REST API

## Phase 1

PUT case - Create a new case instance
POST case - Update an existing case
GET case - Get a case instance (optional - summary only)
DELETE case - Close a case (Does NOT actually delete the record)

POST caseactivity - Update or complete a case activity (not just name, may also need revision - 2 same activities in same phase at same time!)
GET caseactivity - Return a single case activity (optionally including case summary information, e.g. for current activity)

## Phase 2

PUT casetemplate - Create a new template
POST casetemplate - update a template
DELETE casetemplate - Retire a case template
GET casetemplate - Retrieve a case template

## Phase 3

POST casesearch (including historical)
POST casetemplatesearch

## Phase 4

Sub cases
OOTB TDE/row configuration