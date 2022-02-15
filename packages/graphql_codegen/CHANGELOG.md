# 0.7.0-beta.1

* Rename classes. Remove `GQL` and `GQLF` prefixes.

# 0.6.1-beta.2

* Feat: Build hooks!

# 0.6.1-beta.1

* Fix: Mover `parserFn` externally
* Fix: Fresh referene on `onCompleted`.

# 0.6.0

* Support `generatedFileHeader`.
* Support subscription in clients.
* Use parserFn introduced in `graphql: 5.0.1-beta.4`.

# 0.6.0-beta.4

* Support `generatedFileHeader`.

# 0.6.0-beta.3

* Upgrade `graphql`.

# 0.6.0-beta.2

* Support subscription in clients.

# 0.6.0-beta.1

* Use parserFn introduced in `graphql: 5.0.1-beta.4`.

# 0.5.0

* Support `addTypename` transformation: Automatically add `__typename` to operations.
* Refactor transformation.
* Downgrade gql version to work with graphql
* Enable `addTypename` per default
* Allow for customisable asset path through the `assetPath` config option.
* Allow excluding selection-sets from getting added `__typename`.


# 0.5.0-alpha.5

* Allow excluding selection-sets from getting added `__typename`.

# 0.5.0-alpha.4

* Allow for customisable asset path through the `assetPath` config option.

# 0.5.0-alpha.3

* Enable `addTypename` per default

# 0.5.0-alpha.2

* Refactor transformation.
* Downgrade gql version to work with graphql

# 0.5.0-alpha.1

Support `addTypename` transformation: Automatically add `__typename` to operations.

# 0.5.0-alpha.0

Update dependencies

# 0.4.10

Docs: Add blog posts to README

# 0.4.9

Fix: Recursively build possible types

# 0.4.8

Fix bug that generated wrong path separators on Windows.

# 0.4.7

Fix bug in abstract fragment spread with concrete spread on concrete type.


# 0.4.6

Fix bug in fragments


# 0.4.5

Add `watchQuery` helpers.

# 0.4.4

Further improve consequtive fragment spreads, can it get any crazier!


# 0.4.3

Support fragment spread after overlapping keys.

# 0.4.2

Fix import of unused fragments and add right interfaces on fragment spread

# 0.4.1

Support arbitrary type conditions on fragment spreads

# 0.4.0

Replace `POSSIBLE_TYPE_OF_MAP` with the inverse `POSSIBLE_TYPES_MAP`


# 0.3.3

Fix bug in introspection access on union types

# 0.3.2

Print a `POSSIBLE_TYPE_OF_MAP` containing type inheritence information.

# 0.3.1

Improved interface/union fragment spread inside fragment on type.

# 0.3.0

Support fragment inheritence


# 0.2.3

Update repo paths.

# 0.2.2

Add example for the points.

# 0.2.1 

Update dependencies

# 0.2.0

Update documentation and public API.

# 0.1.0

Fix bugs and add new documentation.

# 0.0.1

Add custom scalar support

# 0.0.1-alpha.2

Add support for `graphql` and `graphql_flutter` clients.

# 0.0.1-alpha.1

Initial release
