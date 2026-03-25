// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_gift.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageGift extends ImageGift {
  @override
  final String? url;
  @override
  final String? colorName;
  @override
  final String? colorHex;

  factory _$ImageGift([void Function(ImageGiftBuilder)? updates]) =>
      (ImageGiftBuilder()..update(updates))._build();

  _$ImageGift._({this.url, this.colorName, this.colorHex}) : super._();
  @override
  ImageGift rebuild(void Function(ImageGiftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageGiftBuilder toBuilder() => ImageGiftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageGift &&
        url == other.url &&
        colorName == other.colorName &&
        colorHex == other.colorHex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, colorName.hashCode);
    _$hash = $jc(_$hash, colorHex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageGift')
          ..add('url', url)
          ..add('colorName', colorName)
          ..add('colorHex', colorHex))
        .toString();
  }
}

class ImageGiftBuilder implements Builder<ImageGift, ImageGiftBuilder> {
  _$ImageGift? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _colorName;
  String? get colorName => _$this._colorName;
  set colorName(String? colorName) => _$this._colorName = colorName;

  String? _colorHex;
  String? get colorHex => _$this._colorHex;
  set colorHex(String? colorHex) => _$this._colorHex = colorHex;

  ImageGiftBuilder() {
    ImageGift._defaults(this);
  }

  ImageGiftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _colorName = $v.colorName;
      _colorHex = $v.colorHex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageGift other) {
    _$v = other as _$ImageGift;
  }

  @override
  void update(void Function(ImageGiftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageGift build() => _build();

  _$ImageGift _build() {
    final _$result = _$v ??
        _$ImageGift._(
          url: url,
          colorName: colorName,
          colorHex: colorHex,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
