import 'package:flutter/material.dart';

class privacyPolicyView extends StatelessWidget {
  const privacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('privacy & policy'),
        centerTitle: true,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400),
        child: Text(
            'ahmed khoshnaw built the simple app app as a Free app. This SERVICE is provided by ahmed khoshnaw at no cost and is intended for use as is.This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. \n I will not use or share your information with anyone except as described in this Privacy Policy.The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at simple app unless otherwise defined in this Privacy Policy.Information Collection and UseFor a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to AAK. The information that I request will be retained on your device and is not collected by me in any way.The app does use third-party services that may collect information used to identify you.Link to the privacy policy of third-party service providers used by the app Facebook Log Data i want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.'),
      ),
    );
  }
}
