abstract class NotificationChannel
{
  void send(message);
}
//////////////////////////////////////////////////////////
class EmailNotification implements NotificationChannel
{
  @override
  void send(message)
  {
    print('Email Notification = $message');
  }

}
//////////////////////////////////////////////////////////
class SMSNotification implements NotificationChannel
{
  @override
  void send(message)
  {
    print('SMS Notification = $message');
  }

}
//////////////////////////////////////////////////////////
class PushNotification implements NotificationChannel
{
  @override
  void send(message)
  {
    print('Push Notification = $message');
  }

}
//////////////////////////////////////////////////////////
void main()
{
  EmailNotification emailNotification = EmailNotification();
  emailNotification.send('Email Notification');

  SMSNotification smsNotification = SMSNotification();
  smsNotification.send('Sms Notification');


  PushNotification pushNotification = PushNotification();
  pushNotification.send('Push Notification');
}