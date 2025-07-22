import 'package:flutter/material.dart';

class NoInternetWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const NoInternetWidget({super.key, required this.onPressed});

  @override
  State<NoInternetWidget> createState() => _NoInternetWidgetState();
}

class _NoInternetWidgetState extends State<NoInternetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
          ),
          Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Unable to connect.\nPlease check your data \nconnection",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .25,
          ),
          ElevatedButton(
              onPressed: widget.onPressed,
              child: Text(
                "Retry",
                style: Theme.of(context).textTheme.bodySmall,
              ))
        ],
      ),
    );
  }
}
