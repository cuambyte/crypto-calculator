import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/enum/bottom_sheet_type.dart';

part 'currency_bottom_sheet_controller.g.dart';

@riverpod
final class CurrencyBottomSheetController
    extends _$CurrencyBottomSheetController {
  @override
  BottomSheetType build() => BottomSheetType.none;

  void openFrom() => state = BottomSheetType.from;

  void openTo() => state = BottomSheetType.to;

  void close() => state = BottomSheetType.none;
}
