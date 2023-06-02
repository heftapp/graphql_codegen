import 'package:gql/ast.dart';

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

class Query$Q {
  Query$Q({
    this.book,
    this.$__typename = 'Query',
  });

  factory Query$Q.fromJson(Map<String, dynamic> json) {
    final l$book = json['book'];
    final l$$__typename = json['__typename'];
    return Query$Q(
      book: l$book == null
          ? null
          : Query$Q$book.fromJson((l$book as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Q$book? book;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$book = book;
    _resultData['book'] = l$book?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$book = book;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$book,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$book = book;
    final lOther$book = other.book;
    if (l$book != lOther$book) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q on Query$Q {
  CopyWith$Query$Q<Query$Q> get copyWith => CopyWith$Query$Q(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q<TRes> {
  factory CopyWith$Query$Q(
    Query$Q instance,
    TRes Function(Query$Q) then,
  ) = _CopyWithImpl$Query$Q;

  factory CopyWith$Query$Q.stub(TRes res) = _CopyWithStubImpl$Query$Q;

  TRes call({
    Query$Q$book? book,
    String? $__typename,
  });
  CopyWith$Query$Q$book<TRes> get book;
}

class _CopyWithImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithImpl$Query$Q(
    this._instance,
    this._then,
  );

  final Query$Q _instance;

  final TRes Function(Query$Q) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? book = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q(
        book: book == _undefined ? _instance.book : (book as Query$Q$book?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Q$book<TRes> get book {
    final local$book = _instance.book;
    return local$book == null
        ? CopyWith$Query$Q$book.stub(_then(_instance))
        : CopyWith$Query$Q$book(local$book, (e) => call(book: e));
  }
}

class _CopyWithStubImpl$Query$Q<TRes> implements CopyWith$Query$Q<TRes> {
  _CopyWithStubImpl$Query$Q(this._res);

  TRes _res;

  call({
    Query$Q$book? book,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Q$book<TRes> get book => CopyWith$Query$Q$book.stub(_res);
}

const documentNodeQueryQ = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Q'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'book'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'author'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TextBook'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'courses'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$Q$book {
  Query$Q$book({
    this.author,
    required this.$__typename,
  });

  factory Query$Q$book.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextBook":
        return Query$Q$book$$TextBook.fromJson(json);

      default:
        final l$author = json['author'];
        final l$$__typename = json['__typename'];
        return Query$Q$book(
          author: (l$author as String?),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String? author;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$author = author;
    _resultData['author'] = l$author;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$author = author;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$author,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$book) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$book on Query$Q$book {
  CopyWith$Query$Q$book<Query$Q$book> get copyWith => CopyWith$Query$Q$book(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Q$book$$TextBook) textBook,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextBook":
        return textBook(this as Query$Q$book$$TextBook);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Q$book$$TextBook)? textBook,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextBook":
        if (textBook != null) {
          return textBook(this as Query$Q$book$$TextBook);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Q$book<TRes> {
  factory CopyWith$Query$Q$book(
    Query$Q$book instance,
    TRes Function(Query$Q$book) then,
  ) = _CopyWithImpl$Query$Q$book;

  factory CopyWith$Query$Q$book.stub(TRes res) = _CopyWithStubImpl$Query$Q$book;

  TRes call({
    String? author,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Q$book<TRes> implements CopyWith$Query$Q$book<TRes> {
  _CopyWithImpl$Query$Q$book(
    this._instance,
    this._then,
  );

  final Query$Q$book _instance;

  final TRes Function(Query$Q$book) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? author = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Q$book(
        author: author == _undefined ? _instance.author : (author as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Q$book<TRes>
    implements CopyWith$Query$Q$book<TRes> {
  _CopyWithStubImpl$Query$Q$book(this._res);

  TRes _res;

  call({
    String? author,
    String? $__typename,
  }) =>
      _res;
}

class Query$Q$book$$TextBook implements Query$Q$book {
  Query$Q$book$$TextBook({
    this.courses,
    this.$__typename = 'TextBook',
    this.author,
  });

  factory Query$Q$book$$TextBook.fromJson(Map<String, dynamic> json) {
    final l$courses = json['courses'];
    final l$$__typename = json['__typename'];
    final l$author = json['author'];
    return Query$Q$book$$TextBook(
      courses: (l$courses as int?),
      $__typename: (l$$__typename as String),
      author: (l$author as String?),
    );
  }

  final int? courses;

  final String $__typename;

  final String? author;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$courses = courses;
    _resultData['courses'] = l$courses;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$author = author;
    _resultData['author'] = l$author;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$courses = courses;
    final l$$__typename = $__typename;
    final l$author = author;
    return Object.hashAll([
      l$courses,
      l$$__typename,
      l$author,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Q$book$$TextBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$courses = courses;
    final lOther$courses = other.courses;
    if (l$courses != lOther$courses) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Q$book$$TextBook on Query$Q$book$$TextBook {
  CopyWith$Query$Q$book$$TextBook<Query$Q$book$$TextBook> get copyWith =>
      CopyWith$Query$Q$book$$TextBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Q$book$$TextBook<TRes> {
  factory CopyWith$Query$Q$book$$TextBook(
    Query$Q$book$$TextBook instance,
    TRes Function(Query$Q$book$$TextBook) then,
  ) = _CopyWithImpl$Query$Q$book$$TextBook;

  factory CopyWith$Query$Q$book$$TextBook.stub(TRes res) =
      _CopyWithStubImpl$Query$Q$book$$TextBook;

  TRes call({
    int? courses,
    String? $__typename,
    String? author,
  });
}

class _CopyWithImpl$Query$Q$book$$TextBook<TRes>
    implements CopyWith$Query$Q$book$$TextBook<TRes> {
  _CopyWithImpl$Query$Q$book$$TextBook(
    this._instance,
    this._then,
  );

  final Query$Q$book$$TextBook _instance;

  final TRes Function(Query$Q$book$$TextBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? courses = _undefined,
    Object? $__typename = _undefined,
    Object? author = _undefined,
  }) =>
      _then(Query$Q$book$$TextBook(
        courses: courses == _undefined ? _instance.courses : (courses as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        author: author == _undefined ? _instance.author : (author as String?),
      ));
}

class _CopyWithStubImpl$Query$Q$book$$TextBook<TRes>
    implements CopyWith$Query$Q$book$$TextBook<TRes> {
  _CopyWithStubImpl$Query$Q$book$$TextBook(this._res);

  TRes _res;

  call({
    int? courses,
    String? $__typename,
    String? author,
  }) =>
      _res;
}

const possibleTypesMap = <String, Set<String>>{
  'Book': {'TextBook'}
};
