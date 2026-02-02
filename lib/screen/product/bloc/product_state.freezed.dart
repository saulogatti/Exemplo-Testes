// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadProducts value)?  loadProducts,TResult Function( LoadProductById value)?  loadProductById,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadProducts() when loadProducts != null:
return loadProducts(_that);case LoadProductById() when loadProductById != null:
return loadProductById(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadProducts value)  loadProducts,required TResult Function( LoadProductById value)  loadProductById,}){
final _that = this;
switch (_that) {
case LoadProducts():
return loadProducts(_that);case LoadProductById():
return loadProductById(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadProducts value)?  loadProducts,TResult? Function( LoadProductById value)?  loadProductById,}){
final _that = this;
switch (_that) {
case LoadProducts() when loadProducts != null:
return loadProducts(_that);case LoadProductById() when loadProductById != null:
return loadProductById(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadProducts,TResult Function( int productId)?  loadProductById,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadProducts() when loadProducts != null:
return loadProducts();case LoadProductById() when loadProductById != null:
return loadProductById(_that.productId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadProducts,required TResult Function( int productId)  loadProductById,}) {final _that = this;
switch (_that) {
case LoadProducts():
return loadProducts();case LoadProductById():
return loadProductById(_that.productId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadProducts,TResult? Function( int productId)?  loadProductById,}) {final _that = this;
switch (_that) {
case LoadProducts() when loadProducts != null:
return loadProducts();case LoadProductById() when loadProductById != null:
return loadProductById(_that.productId);case _:
  return null;

}
}

}

/// @nodoc


class LoadProducts implements ProductEvent {
  const LoadProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.loadProducts()';
}


}




/// @nodoc


class LoadProductById implements ProductEvent {
  const LoadProductById(this.productId);
  

 final  int productId;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadProductByIdCopyWith<LoadProductById> get copyWith => _$LoadProductByIdCopyWithImpl<LoadProductById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProductById&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ProductEvent.loadProductById(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $LoadProductByIdCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory $LoadProductByIdCopyWith(LoadProductById value, $Res Function(LoadProductById) _then) = _$LoadProductByIdCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$LoadProductByIdCopyWithImpl<$Res>
    implements $LoadProductByIdCopyWith<$Res> {
  _$LoadProductByIdCopyWithImpl(this._self, this._then);

  final LoadProductById _self;
  final $Res Function(LoadProductById) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(LoadProductById(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState()';
}


}

/// @nodoc
class $ProductStateCopyWith<$Res>  {
$ProductStateCopyWith(ProductState _, $Res Function(ProductState) __);
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Error value)?  error,TResult Function( Initial value)?  initial,TResult Function( Loaded value)?  loaded,TResult Function( Loading value)?  loading,TResult Function( ProductLoaded value)?  productLoaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Error() when error != null:
return error(_that);case Initial() when initial != null:
return initial(_that);case Loaded() when loaded != null:
return loaded(_that);case Loading() when loading != null:
return loading(_that);case ProductLoaded() when productLoaded != null:
return productLoaded(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Error value)  error,required TResult Function( Initial value)  initial,required TResult Function( Loaded value)  loaded,required TResult Function( Loading value)  loading,required TResult Function( ProductLoaded value)  productLoaded,}){
final _that = this;
switch (_that) {
case Error():
return error(_that);case Initial():
return initial(_that);case Loaded():
return loaded(_that);case Loading():
return loading(_that);case ProductLoaded():
return productLoaded(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Error value)?  error,TResult? Function( Initial value)?  initial,TResult? Function( Loaded value)?  loaded,TResult? Function( Loading value)?  loading,TResult? Function( ProductLoaded value)?  productLoaded,}){
final _that = this;
switch (_that) {
case Error() when error != null:
return error(_that);case Initial() when initial != null:
return initial(_that);case Loaded() when loaded != null:
return loaded(_that);case Loading() when loading != null:
return loading(_that);case ProductLoaded() when productLoaded != null:
return productLoaded(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function()?  initial,TResult Function( List<ProductModel> products)?  loaded,TResult Function()?  loading,TResult Function( ProductModel product)?  productLoaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Error() when error != null:
return error(_that.message);case Initial() when initial != null:
return initial();case Loaded() when loaded != null:
return loaded(_that.products);case Loading() when loading != null:
return loading();case ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function()  initial,required TResult Function( List<ProductModel> products)  loaded,required TResult Function()  loading,required TResult Function( ProductModel product)  productLoaded,}) {final _that = this;
switch (_that) {
case Error():
return error(_that.message);case Initial():
return initial();case Loaded():
return loaded(_that.products);case Loading():
return loading();case ProductLoaded():
return productLoaded(_that.product);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function()?  initial,TResult? Function( List<ProductModel> products)?  loaded,TResult? Function()?  loading,TResult? Function( ProductModel product)?  productLoaded,}) {final _that = this;
switch (_that) {
case Error() when error != null:
return error(_that.message);case Initial() when initial != null:
return initial();case Loaded() when loaded != null:
return loaded(_that.products);case Loading() when loading != null:
return loading();case ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case _:
  return null;

}
}

}

/// @nodoc


class Error implements ProductState {
  const Error({required this.message});
  

 final  String message;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Initial implements ProductState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.initial()';
}


}




/// @nodoc


class Loaded implements ProductState {
  const Loaded({required final  List<ProductModel> products}): _products = products;
  

 final  List<ProductModel> _products;
 List<ProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductState.loaded(products: $products)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> products
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(Loaded(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}

/// @nodoc


class Loading implements ProductState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.loading()';
}


}




/// @nodoc


class ProductLoaded implements ProductState {
  const ProductLoaded({required this.product});
  

 final  ProductModel product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLoadedCopyWith<ProductLoaded> get copyWith => _$ProductLoadedCopyWithImpl<ProductLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLoaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'ProductState.productLoaded(product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductLoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductLoadedCopyWith(ProductLoaded value, $Res Function(ProductLoaded) _then) = _$ProductLoadedCopyWithImpl;
@useResult
$Res call({
 ProductModel product
});




}
/// @nodoc
class _$ProductLoadedCopyWithImpl<$Res>
    implements $ProductLoadedCopyWith<$Res> {
  _$ProductLoadedCopyWithImpl(this._self, this._then);

  final ProductLoaded _self;
  final $Res Function(ProductLoaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ProductLoaded(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,
  ));
}


}

// dart format on
