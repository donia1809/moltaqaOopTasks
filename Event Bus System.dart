class Event
{
  String name;
  dynamic data;

  Event(this.name, {this.data});
}
//////////////////////////////////////////////////////////
abstract class Listener
{
  void update(Event event);
}
//////////////////////////////////////////////////////////
class Logger implements Listener
{
  @override
  void update(Event event) {
    print("Logger received event: ${event.name}, data: ${event.data}");
  }
}
//////////////////////////////////////////////////////////
class Notifier implements Listener
{
  @override
  void update(Event event) {
    print("Notifier sends notification for event: ${event.name}");
  }
}
//////////////////////////////////////////////////////////
class EventBus
{
  List<Listener> _listeners = [];

  void subscribe(Listener listener) {
    _listeners.add(listener);
  }

  void unsubscribe(Listener listener) {
    _listeners.remove(listener);
  }
//////////////////////////////////////////////////////////
  void emit(Event event)
  {
    for (var listener in _listeners) {
      listener.update(event);
    }
  }
}
//////////////////////////////////////////////////////////
void main()
{
  EventBus eventBus = EventBus();

  Logger logger = Logger();
  Notifier notifier = Notifier();

  eventBus.subscribe(logger);
  eventBus.subscribe(notifier);

  eventBus.emit(Event("user_login", data: {"user": "Donia"}));
  eventBus.emit(Event("order_created", data: {"order_id": 123}));

  eventBus.unsubscribe(logger);

  eventBus.emit(Event("user_logout", data: {"user": "Donia"}));
}