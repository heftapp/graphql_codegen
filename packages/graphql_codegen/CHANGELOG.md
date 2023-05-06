# 0.12.2

- Support `include` and `skip` directives on fields (not fragments yet)

# 0.12.1

- Add `when` and `maybeWhen` utility methods!

# 0.12.0

- Update documentation
- Major performance improvement with many fragments
- Support custom enum fallback values
- Add `onError` and `onComplete` callbacks to query options.
- Add `typedOptimisticResult` as an typed alternative to `optimistcResult`
- Update dev deps.
- Improve performance a bit.
- Provide default typename parameter to constructor
- Support schema extensions.
- Fix bug in generating wrong json methods.
- Fix absolute output dir paths on windows.
- Add built-in types to keywords.
- Add custom enums.
- Update SDK version and required code-builder version.
- Remove operation definitions without name before codegen.
- Fix missing serializers for concrete types on fragments
- Bump gql versions
- Fix naming separator issue

# 0.12.0-beta.18

- Update documentation

# 0.12.0-beta.17

- Major performance improvement with many fragments

# 0.12.0-beta.16

- Support custom enum fallback values

# 0.12.0-beta.15

- Fix `onComplete`

# 0.12.0-beta.14

- Add `onError` and `onComplete` callbacks to query options.
- Add `typedOptimisticResult` as an typed alternative to `optimistcResult`

# 0.12.0-beta.13

- Update dev deps.

# 0.12.0-beta.12

- Cache schema parsing, further improving performance.

# 0.12.0-beta.11

- Improve performance a bit.

# 0.12.0-beta.10

- Provide default typename parameter to constructor

# 0.12.0-beta.9

- Support schema extensions.

# 0.12.0-beta.8

- Fix bug in generating wrong json methods.

# 0.12.0-beta.7

- Fix absolute output dir paths on windows.

# 0.12.0-beta.6

- Add built-in types to keywords.

# 0.12.0-beta.5

- Add custom enums.

# 0.12.0-beta.4

- Update SDK version and required code-builder version.

# 0.12.0-beta.3

- Remove operation definitions without name before codegen.

# 0.12.0-beta.2

- Fix missing serializers for concrete types on fragments

# 0.12.0-beta.1

- Bump gql versions
- Fix naming separator issue

# 0.11.2

- Fix broken `toJson` on fragment spreads.

# 0.11.1

- Fix enum serialization with keywords.

# 0.11.0

- Support `.gql` file-extension
- Expose methods for `graphql_switch`
- Inline GraphQL Config
- Fix deep copy on nested objects
- Add custom support for `DateTime`
- Fix `double` conversion.
- Simplify input classes
- Remove dependency on `json_serializable`
- Improve input `null`-handling.

# 0.11.0-beta.7

- Support `.gql` file-extension

# 0.11.0-beta.6

- Expose methods for `graphql_switch`

# 0.11.0-beta.5

- Inline GraphQL Config

# 0.11.0-beta.4

- Fix deep copy on nested objects

# 0.11.0-beta.3

- Add custom support for `DateTime`
- Fix `double` conversion.

# 0.11.0-beta.2

- Simplify input classes

# 0.11.0-beta.1

- Remove dependency on `json_serializable`
- Improve input `null`-handling.

# 0.10.3

- Fix add deep copy functionality to input objects.

# 0.10.2

- Fix operation name collision

# 0.10.1

- Fix lint

# 0.10.0

- Feat Support global output dir
- Fix not generating Operations with single fragment
- Fixes broken paths on windows
- Fixes broken imports when specifying the `outputDirectory`.
- Allow specifying `outputDirectory` for generated outputs.
- BREAKING: Improve `.copyWith` by removing functions.
- Add deep-copy functionality.
- BREAKING: Inline fragments; We're now inligning fragments to reduce the number of boilerplate classes generated.

# 0.10.0-beta.7

- Feat Support global output dir

# 0.10.0-beta.6

- Fix not generating Operations with single fragment

# 0.10.0-beta.5

- Fixes broken paths on windows

# 0.10.0-beta.4

- Fixes broken imports when specifying the `outputDirectory`.

# 0.10.0-beta.3

- Allow specifying `outputDirectory` for generated outputs.

# 0.10.0-beta.2

- BREAKING: Improve `.copyWith` by removing functions.
- Add deep-copy functionality.

# 0.10.0-beta.1

- BREAKING: Inline fragments; We're now inligning fragments to reduce the number of boilerplate classes generated.

# 0.9.0

- BREAKING: Fix bad name of generated `documentNode`.
- Refactor fragment dependency resolution.
- Introduce ability to specify custom `extraKeywords`.
- Introduce naming separator configuration
- Add `copyWith` to input classes

# 0.9.0-beta.1

- Fix bad name of generated `documentNode`.
- Refactor fragment dependency resolution.

# 0.8.2-beta.3

- Introduce ability to specify custom `extraKeywords`.

# 0.8.2-beta.2

- Introduce naming separator configuration

# 0.8.2-beta.1

- Add `copyWith` to input classes

# 0.8.1

- Fix errors when fragment variables are enums

# 0.8.0

- Update docs
- Change naming strategy

# 0.8.0-beta.2

- Update docs

# 0.8.0-beta.1

- Change naming strategy

# 0.7.2

- Remove useless extend of `JsonSerializable`

# 0.7.1

- Stricten the analysis: Gotta get them points.

# 0.7.0

- Feat: Support not including null values on input serializers
- Feat: Add utility extension containing `copyWith` method.
- Fix: Explicity call `toJson`.
- Fix: Import nested fragments and create DocumentNode for fragments
- Fix: Bad naming of variable
- Fix: Don't generate cache methods for nested fragments
- Generate fragment variables
- Generate cache write/read methods
- Make fragments concrete classes
- Improve type accuracy on interfaces
- Support scopes for multiple schemas
- Upgrade dependencies (Including analyzer!)
- Add `==` operator and `hashCode` getter on all `JSONSerializable` classes.
- Improve scalar converters
- Improve hook options
- Change property naming scheme
- Rename classes. Remove `GQL` and `GQLF` prefixes.
- Feat: Build hooks!
- Fix: Mover `parserFn` externally
- Fix: Fresh referene on `onCompleted`.

# 0.7.0-beta.12

- Feat: Support not including null values on input serializers

# 0.7.0-beta.11

- Feat: Add utility extension containing `copyWith` method.
- Fix: Explicity call `toJson`.

# 0.7.0-beta.10

- Fix: Import nested fragments and create DocumentNode for fragments
- Fix: Bad naming of variable

# 0.7.0-beta.9

- Fix: Don't generate cache methods for nested fragments

# 0.7.0-beta.8

- Generate fragment variables

# 0.7.0-beta.7

- Generate cache write/read methods
- Make fragments concrete classes
- Improve type accuracy on interfaces

# 0.7.0-beta.6

- Support scopes for multiple schemas

# 0.7.0-beta.5

- Upgrade dependencies (Including analyzer!)
- Add `==` operator and `hashCode` getter on all `JSONSerializable` classes.

# 0.7.0-beta.4

- Improve scalar converters

# 0.7.0-beta.3

- Improve hook options

# 0.7.0-beta.2

- Change property naming scheme

# 0.7.0-beta.1

- Rename classes. Remove `GQL` and `GQLF` prefixes.

# 0.6.1-beta.2

- Feat: Build hooks!

# 0.6.1-beta.1

- Fix: Mover `parserFn` externally
- Fix: Fresh referene on `onCompleted`.

# 0.6.0

- Support `generatedFileHeader`.
- Support subscription in clients.
- Use parserFn introduced in `graphql: 5.0.1-beta.4`.

# 0.6.0-beta.4

- Support `generatedFileHeader`.

# 0.6.0-beta.3

- Upgrade `graphql`.

# 0.6.0-beta.2

- Support subscription in clients.

# 0.6.0-beta.1

- Use parserFn introduced in `graphql: 5.0.1-beta.4`.

# 0.5.0

- Support `addTypename` transformation: Automatically add `__typename` to operations.
- Refactor transformation.
- Downgrade gql version to work with graphql
- Enable `addTypename` per default
- Allow for customisable asset path through the `assetPath` config option.
- Allow excluding selection-sets from getting added `__typename`.

# 0.5.0-alpha.5

- Allow excluding selection-sets from getting added `__typename`.

# 0.5.0-alpha.4

- Allow for customisable asset path through the `assetPath` config option.

# 0.5.0-alpha.3

- Enable `addTypename` per default

# 0.5.0-alpha.2

- Refactor transformation.
- Downgrade gql version to work with graphql

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
