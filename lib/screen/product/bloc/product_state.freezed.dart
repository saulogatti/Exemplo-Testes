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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Error value)?  error,TResult Function( _Initial value)?  initial,TResult Function( _Loaded value)?  loaded,TResult Function( _Loading value)?  loading,TResult Function( _ProductLoaded value)?  productLoaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Error() when error != null:
return error(_that);case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Loading() when loading != null:
return loading(_that);case _ProductLoaded() when productLoaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Error value)  error,required TResult Function( _Initial value)  initial,required TResult Function( _Loaded value)  loaded,required TResult Function( _Loading value)  loading,required TResult Function( _ProductLoaded value)  productLoaded,}){
final _that = this;
switch (_that) {
case _Error():
return error(_that);case _Initial():
return initial(_that);case _Loaded():
return loaded(_that);case _Loading():
return loading(_that);case _ProductLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Error value)?  error,TResult? Function( _Initial value)?  initial,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Loading value)?  loading,TResult? Function( _ProductLoaded value)?  productLoaded,}){
final _that = this;
switch (_that) {
case _Error() when error != null:
return error(_that);case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Loading() when loading != null:
return loading(_that);case _ProductLoaded() when productLoaded != null:
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
case _Error() when error != null:
return error(_that.message);case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.products);case _Loading() when loading != null:
return loading();case _ProductLoaded() when productLoaded != null:
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
case _Error():
return error(_that.message);case _Initial():
return initial();case _Loaded():
return loaded(_that.products);case _Loading():
return loading();case _ProductLoaded():
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
case _Error() when error != null:
return error(_that.message);case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.products);case _Loading() when loading != null:
return loading();case _ProductLoaded() when productLoaded != null:
return productLoaded(_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _Error implements ProductState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Initial implements ProductState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.initial()';
}


}




/// @nodoc


class _Loaded implements ProductState {
  const _Loaded({required final  List<ProductModel> products}): _products = products;
  

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
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductState.loaded(products: $products)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> products
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(_Loaded(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}

/// @nodoc


class _Loading implements ProductState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.loading()';
}


}




/// @nodoc


class _ProductLoaded implements ProductState {
  const _ProductLoaded({required this.product});
  

 final  ProductModel product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductLoadedCopyWith<_ProductLoaded> get copyWith => __$ProductLoadedCopyWithImpl<_ProductLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductLoaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'ProductState.productLoaded(product: $product)';
}


}

/// @nodoc
abstract mixin class _$ProductLoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductLoadedCopyWith(_ProductLoaded value, $Res Function(_ProductLoaded) _then) = __$ProductLoadedCopyWithImpl;
@useResult
$Res call({
 ProductModel product
});




}
/// @nodoc
class __$ProductLoadedCopyWithImpl<$Res>
    implements _$ProductLoadedCopyWith<$Res> {
  __$ProductLoadedCopyWithImpl(this._self, this._then);

  final _ProductLoaded _self;
  final $Res Function(_ProductLoaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_ProductLoaded(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,
  ));
}


}

// dart format on
