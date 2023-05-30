import 'package:consforc/config/export.dart';
import 'package:consforc/feature/product/variant_item_widget.dart';

class VariantWidget extends StatelessWidget {
  const VariantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CubitProvider(
        create: (context) => HomeCubit(),
        builder: (context, state, bloc) {
          return Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 6,
            runSpacing: 6,
            children: bloc.variantList
                .map((e) => VariantItemWidget(
                      item: e,

                    ))
                .toList(),
          );
        });
  }
}
