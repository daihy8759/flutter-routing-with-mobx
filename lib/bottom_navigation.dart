part of 'main.dart';

class BottomNavigation extends StatelessWidget {
  Color _isSelected({ContentItem item}) {
    return stateStore.currentContentItem == item ? Colors.black : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.web_asset),
          title: Text('Home', style: TextStyle(color: _isSelected(item: stateStore.currentContentItem)),
        )),
        BottomNavigationBarItem(
          icon: Icon(Icons.web_asset),
          title: Text('More Content', style: TextStyle(color: _isSelected(item: stateStore.currentContentItem)),
        )),
        BottomNavigationBarItem(
          icon: Icon(Icons.web_asset),
          title: Text('And Then Some', style: TextStyle(color: _isSelected(item: stateStore.currentContentItem)),
        )),
      ],
      onTap: (index) {
        switch (index) {
          case 1:
            stateStore.setMoreContentRoute();
            break;
          case 2:
            stateStore.setAndThenSomeRoute();
            break;
          default:
            stateStore.setHomeRoute(stateStore.currentHomeRoute);
            break;
        }
      },
    );
  }
}
