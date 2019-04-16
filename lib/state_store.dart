import 'package:mobx/mobx.dart';
import 'package:myapp/content_navigation.dart';

part 'state_store.g.dart';

class StateStore = _StateStore with _$StateStore;

abstract class _StateStore implements Store {
  @observable
  ContentItem currentContentItem = ContentItem.home;
  @observable
  HomeRoute currentHomeRoute = HomeRoute.landing;

  @action
  void setHomeRoute(HomeRoute contentRoute) {
    currentContentItem = ContentItem.home;
    currentHomeRoute = contentRoute;
  }
  @action
  void setMoreContentRoute() {
    currentContentItem = ContentItem.more_content;
  }
  @action
  void setAndThenSomeRoute() {
    currentContentItem = ContentItem.and_then_some;
  }
}