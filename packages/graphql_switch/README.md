# GraphQL Switch

A Relay-inspired GraphQL framework.


```dart
import "flutter_hooks/flutter_hooks.dart";
import "graphql_switch/graphql_switch.dart";
import "./MyWidgetQuery.graphql.dart";
import "./MyWidgetAvatarFragment.graphql.dart";


class MyWidget extends HookWidget {
    Widget build(BuildContext context) {
        const data = useQuery$MyWidgetQuery(
            graphql("""
            query MyWidgetQuery {
                person {
                    name
                    age
                    avatar {
                        ...MyWidgetAvatar
                    }
                }
            }
            """)
        );

        return Row(
            children: [
                MyWidgetAvatar(
                    data.avatar
                ),
                Text("${data.name} (age ${data.age})"),
            ]
        );
    }
}

class MyWidgetAvatar extends HookWidget {
    final MyWidgetAvatarFragment$key avatarKey;

    const MyWidgetAvatar(this.avatarKey);

    Widget build(BuildContext context) {
        const data = useFragment$MyWidgetAvatarFragment(
            graphql("""
                fragment MyWidgetAvatarFragment {
                    url
                }
            """),
        );
        return Image.network(data.url);
    }
}

class MaybeMyWidgetAvatar extends HookWidget {
    final MaybeMyWidgetAvatarFragment$key? avatarKey;

    const MyWidgetAvatar(this.avatarKey);

    Widget build(BuildContext context) {
        const data = useFragment$MaybeMyWidgetAvatarFragment(
            graphql("""
            fragment MaybeMyWidgetAvatarFragment {
                url
            }
            """),
        );
        final url = data?.url;
        if (url == null) {
            return Text('No image');
        }
        return Image.network(data.url);
    }
}

```


## Dart Code Analysis

* Look for `graphql(...)` from `package:graphql_switch` and generate hooks from that. 
* Co-locate generated file next to dart file.
* (?) Assume unique operation/fragment names (per file at least), and throw errors when this is not the case.
* (?) For fragments, generate nullable output from nullable key and iterable output for iterable keys.


## GraphQL Code Analysis

* Make serializers generally following `graphql_codeegen` with special handling of fragments.
    * Add serializers for fields and concrete types
* Instead of expanding fragments, make serializers implement a `$key` interface.
* The same holds for other fragments, they shouldn't expand fields of sub-fragments.

## Linting

* Enforce naming of operations (and fragments) through linting making it optional.
* Check if fields are used in component and lint.