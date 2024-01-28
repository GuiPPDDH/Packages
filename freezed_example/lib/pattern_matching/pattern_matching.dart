import 'package:freezed_annotation/freezed_annotation.dart';

part 'pattern_matching.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = UnionData;
  factory Union.loading() = UnionLoading;
  factory Union.error([String? message]) = UnionError;
}

void main() {
  //var union = Union(1);
  var union = Union.loading();
  //var union = Union.error('erro');

  /**
   * when
   * maybeWhen
   * map
   * maybeMap
   */

  var mensagem = union.when<String>(
    (value) => 'Union Data implementado',
    loading: () => 'Loading implementado',
    error: (String? message) => 'Error implementado',
  );
  print(mensagem);

  var mensagemMaybe = union.maybeWhen<String>(
    null,
    error: (String? message) => 'Error implementado',
    orElse: () => 'Padrão implementado',
  );
  print(mensagemMaybe);

  var mensagemMap = union.map(
    (UnionData union) => '${union.runtimeType}',
    loading: (UnionLoading loading) => '${loading.runtimeType}',
    error: (UnionError error) => '${error.runtimeType}',
  );
  print(mensagemMap);
}
