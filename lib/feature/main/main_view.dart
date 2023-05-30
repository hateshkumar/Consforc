import 'package:consforc/config/export.dart';
import 'package:consforc/feature/main/main_cubit.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CubitProvider(
        create: (context) => MainCubit(),
        builder: (context, state, bloc) {
          return Scaffold(
              body: BehaviorSubjectBuilder<int>(
                  subject: bloc.currentIndex,
                  builder: (context, snapshot) {
                    return Scaffold(
                      body: Stack(
                        children: [
                          bloc.menuWidgets[snapshot.data!],
                          Positioned.fill(
                            bottom: Platform.isIOS? -30 : -10,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomBottomNavigation(
                                list: bloc.menuWidgets,
                                currentIndex: snapshot.data!,
                                onTap: (i) => bloc.currentIndex.sink.add(i),
                              ),
                            ),
                          ),

                        ],
                      ),
                    );
                  }));
        });
  }
}
