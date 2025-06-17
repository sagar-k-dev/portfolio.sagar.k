import 'package:get/get.dart';

class TitleMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    if (page != null) {
      final title = page.title ?? 'Sagar K | Application Developer';
      return GetPage(
        name: page.name,
        page: page.page,
        title: title,
        middlewares: page.middlewares,
        binding: page.binding,
        bindings: page.bindings,
        transition: page.transition,
        participatesInRootNavigator: page.participatesInRootNavigator,
        preventDuplicates: page.preventDuplicates,
        parameters: page.parameters,
      );
    }
    return page;
  }
}
